var express=require("express");
var router=express.Router();

//【引入mysql配置文件】
var mysql=require("../mysqlConfig.js");
router.all('*', function(req, res, next) {  
    res.header("Access-Control-Allow-Origin", "*");  
    res.header("Access-Control-Allow-Headers", "X-Requested-With");  
    res.header("Access-Control-Allow-Methods","GET");  
    res.header("Content-Type", "application/json;charset=utf-8");  
    next();  
}); 

//1.网站基本信息结构
//接口地址为:http://192.168.8.8/api/website
router.get("/website",function(req,res){
	mysql.query("select * from 基本信息",function(e,r){
		if(r.length>0){
			var data=r.map((v,k)=>{
				v.Logo="http://"+req.headers.host+"/"+(v.Logo.replace("uploads\\",""));
				return v;
			})
			res.send(data)
		}else{
			res.send(null)
		}
	})
	
})
//2.导航接口
//http://192.168.8.8/api/topNav
router.get("/topNav",function(req,res){
	mysql.query("select * from nav where (Path like '____' or Path like '____,____') and status =1 order by Path asc",function(e,r){
		if(r.length>0){
			var data=r.map((v,k)=>{
				if(v.Img){
					var imgOjb=JSON.parse(v.Img);
					imgOjb.map((v,k)=>{
						v.path="http://"+req.headers.host+"/"+(v.path.replace("uploads\\",""));
						return v;
					})
					v.Img=imgOjb
				}
				var children=r.filter((v2,k2)=>{
					var rex=new RegExp(""+v.Path+",[0-9]{4}");
					if(rex.test(v2.Path)){
						delete  r[r.indexOf(v2)]
						return true;
					}
					
				})
				if(children.length>0){
					v.children=children;
					v.show=false
				}
				return v;
				
			})
			data=data.filter((v,k)=>{
				return v;
			})
			res.send(data)
		}else{
			res.send(null)
		}
	})
	
})


//3.首页个栏目数据接口
//http://192.168.8.8:82/api/getColumn?Nav=写栏目名称
//通过给Nav传入栏目名称 就可得到栏目内容的数据
//比如 获取产品栏目内容：http://192.168.8.8:82/api/getColumn?Nav=产品
router.get("/getColumn",function(req,res){
	let Column={};
	mysql.query("select * from nav where Nav=?",[req.query.Nav],function(e,r){
		if(r.length>0){
			let d=r[0];
			Column.head={title:d.Nav,subtitle:d.Title};
			Column.description=d.Description;
			if(d.Img){
					var imgOjb=JSON.parse(d.Img);
					imgOjb=imgOjb.map((v,k)=>{
						v.path="http://"+req.headers.host+"/"+(v.path.replace("uploads\\",""));
						return v;
					})
					if(imgOjb.length>0){
					Column.Img=imgOjb[0].path;
					}
			}
			//select a.*,b.Url from content a inner join nav b on  a.Navpath like '0001,%' and a.Navpath=b.path
			//"select * from content where Navpath  like '"+d.Path+",%'"
			//console.log("select a.*,b.Url from content a inner join nav b on  a.Navpath like '"+d.Path+",%' and a.Navpath=b.path")
			mysql.query("select a.*,b.Url from content a inner join nav b on  a.Navpath like '"+d.Path+",%' and a.Navpath=b.path",function(e,r){
				 if(r.length>0){
					r.forEach((v,k)=>{
					if(v.Img){
						var imgOjb=JSON.parse(v.Img);
						imgOjb.map((v,k)=>{
							v.path="http://"+req.headers.host+"/"+(v.path.replace("uploads\\",""));
								return v;
						})
						v.Img=imgOjb[0].path
					}
					v.Url=v.Url+"/"+v.Id
					})
					Column.more={text:"更多",href:d.Url}
					Column.list=r;
					res.send({Column:Column})
				 }else{
					 mysql.query("select a.*,b.Url from content a inner join nav b on  a.Navpath like '"+d.Path+"' and a.Navpath=b.path",function(e,r){
						Column.more={text:"更多",href:d.Url}						
						if(r.length>0){
							 r.forEach((v,k)=>{
								if(v.Img){
									var imgOjb=JSON.parse(v.Img);
									imgOjb.map((v,k)=>{
										v.path="http://"+req.headers.host+"/"+(v.path.replace("uploads\\",""));
											return v;
									})
									if(imgOjb.length>0){
									v.Img=imgOjb[0].path
									}
								}
								v.Url=v.Url+"/"+v.Id
								})
								Column.list=r;
								res.send({Column:Column})
						 }else{
							 res.send({Column:Column})
						 }
					 })
				 }
			})
		}else{
			res.send({Column:null})
		}
	})
})


//获取二级栏目接口
//http://192.168.8.8:82/api/getChildNav?Url=写父栏目Url
//Url格式为 /xxx 或 /xxx/都行
router.get("/getChildNav",function(req,res){
	var Url="";
	if(/\/$/.test(req.query.Url)){
		Url=req.query.Url+"%";
	}else{
		Url=req.query.Url+"/%";
	}
	mysql.query("select * from nav where Url like '"+Url+"'",function(e,r){
		if(r.length>0){
			var data=r.map((v,k)=>{
				if(v.Img){
					var imgOjb=JSON.parse(v.Img);
					imgOjb.map((v,k)=>{
						v.path="http://"+req.headers.host+"/"+(v.path.replace("uploads\\",""));
						return v;
					})
					v.Img=imgOjb
				}
				return v;
				
			})
			let allUrl=data[0].Url.replace(/[^/]+$/g,"all");
			data.unshift({Id:-2,Nav:"全部",Url:allUrl})
	
			res.send(data)
		}else{
			res.send(null)
		}
	})
})


//获取栏目列表内容




//获取栏目下的数据


//2.顶级导航结构
//http://192.168.8.8/api/getNav?Url=?
router.get("/getNav",function(req,res){
	mysql.query("select * from nav where Url=?",[req.query.Url],function(e,r){
		if(r.length>0){
			var data=r.map((v,k)=>{
				if(v.Img){
					var imgOjb=JSON.parse(v.Img);
					imgOjb.map((v,k)=>{
						v.path="http://"+req.headers.host+"/"+(v.path.replace("uploads\\",""));
						return v;
					})
					v.Img=imgOjb
				}
				return v;
				
			})
	
			res.send(data)
		}else{
			res.send(null)
		}
	})
	
})

//2.二级导航路由接口
//http://192.168.8.8/api/sNav?Path=xxx
//Path用来接收父导航的Path地址
router.get("/sNav",function(req,res){
	mysql.query("select * from nav where Path like ? and Status='1' order by Sort asc",[req.query.Path+",____"],function(e,r){
		if(r.length>0){
			var data=r.map((v,k)=>{
				if(v.Img){
					var imgOjb=JSON.parse(v.Img);
					imgOjb.map((v,k)=>{
						v.path="http://"+req.headers.host+"/"+(v.path.replace("uploads\\",""));
						return v;
					})
					v.Img=imgOjb
				}
				return v;
				
			})
	
			res.send(data)
		}else{
			res.send(null)
		}
	})
	
})


//3.二级导航下的数据列表
//http://192.168.8.8/api/getConentList?Url=栏目的Url&page=1;
//Url 是接收栏目的 Url，栏目只要传入Url就能查找当前 栏目的内容列表
//Page是指定列表 显示第几页，接收一个数字

//获取 产品全部 的数据 http://192.168.8.8:82/api/getConentList?Url=/product/all&page=1
//获取 弦乐器 的数据 http://192.168.8.8:82/api/getConentList?Url=/product/product1&page=1
//获取 木管乐器 的数据 http://192.168.8.8:82/api/getConentList?Url=/product/product2&page=1
//获取 铜管乐器 的数据 http://192.168.8.8:82/api/getConentList?Url=/product/product3&page=1

//获取 音乐资讯 的数据 http://192.168.8.8:82/api/getConentList?Url=/gigbeat&page=1
//获取 明星代言 的数据 http://192.168.8.8:82/api/getConentList?Url=/about/about1&page=1
//获取 最新活动 的数据 http://192.168.8.8:82/api/getConentList?Url=/about/about3&page=1

router.get("/getConentList",function(req,res){
	var pagination = require('tiny-pagination');
	var abc=""
	if(req.query.Url.indexOf("/all")!=-1){
		abc="Url like '"+req.query.Url.replace("/all","/%")+"'";
	}else{
		abc="Url='"+req.query.Url+"'";
	}
	//console.log(req.query.Url)
	//console.log("select * from nav where "+abc)
	mysql.query("select * from nav where "+abc,function(e,r){
		if(r.length>0){
			var pNav=r;
			var data1=r.map((v,k)=>{return "'"+v.Path+"'"})
			//console.log(data1)
			//console.log("select * from content where Navpath in ("+data1.join(',')+")")
			
			//1.得到数据的总条数
			mysql.query("select * from content where Navpath in ("+data1.join(",")+")",function (e,r) {
				var count=r.length;//取总数据条数：r.length
				if(count>0){
							var sql="select * from content  where Navpath in ("+data1.join(",")+") limit ?,8";
							//console.log(sql)
							var PagesCount=Math.ceil(count/8);
							
							//判断传入的页数 是否大于总页数 ，如果大于总页数 我们就让当前页等于总页数
							var current=req.query.page>PagesCount?PagesCount:parseInt(req.query.page)||1
							var data=[(current-1)*8];
							// 假设当前页码为 10，总页数为 30，中间显示页码数为 7
							var pageInfo = pagination(parseInt(current), parseInt(PagesCount), 5);
							pageInfo.info={
								  first:"第一页，值为 1",
								  last:"最后一页，值为 总页数",
								  prev:"当前页码的上一页页码",
								  next:"当前页码的下一页页码",
								  show:"是否显示页码，当总页数为1的时候，为false",
								  showPrev:"是否显示上一页",
								  showNext:"是否显示下一页",
								  showFirst:"是否显示第一页",
								  showLast:"是否显示最后一页",
								  pageList:"中间页码列表",
								  page:"当前页码",
							};
							mysql.query(sql,data,function (e,r) {
								if(r.length>0){
									var rdata=r.map((v,k)=>{
										if(v.Img){
											var imgOjb=JSON.parse(v.Img);
											imgOjb.map((v,k)=>{
												v.path="http://"+req.headers.host+"/"+(v.path.replace("uploads\\",""));
												return v;
											})
											if(imgOjb.length>0){
												v.Img=imgOjb[0].path
											}else{
												v.Img="";
											}
											
										}
										v.Url=req.query.Url+"/"+v.Id;
										return v;
										
									})
							
									res.send({pageInfo:pageInfo,content:rdata,pNav:pNav})
								}else{
									res.send({pageInfo:null,content:[],pNav:[]})
								}
							})
				}else{
					res.send({pageInfo:null,content:[],pNav:pNav})
				}
			})
			
		}else{
			res.send({pageInfo:null,content:[],pNav:[]})
		}
	})
})


//哈哈哈首页大型轮播图接口
//http://192.168.8.8/api/getBanner
router.get("/getBanner",function(req,res){
		mysql.query("select a.*,b.Url from content as a,nav as b where a.Navpath=b.Path  and a.Type=4",function(e,r){
				var Url=[];
				r.forEach((v,k)=>{
					if(v.Img){
						var imgOjb=JSON.parse(v.Img);
						imgOjb.map((v,k)=>{
							v.path="http://"+req.headers.host+"/"+(v.path.replace("uploads\\",""));
								return v;
						})
						
							v.Img=imgOjb[0].path
						
						
						
					}
					v.Url=v.Url+"/"+v.Id;
				})
				res.send(r);
		})
	
})




//2.二级导航路由接口
//http://192.168.8.8/api/getContent?Id=?
//通过Id号来得到这个内容的数据
router.get("/getContent",function(req,res){
	var sql="select * from content where Id=?";
	var data=[req.query.Id];
	var obj={};
	mysql.query(sql,data,function(e,r){
		if(r.length>0){
			obj.currentContent=r[0];
			//获取上一条
			var sql1="select * from content where Navpath=? and Id<?";
			var data1=[r[0].Navpath,r[0].Id]
			mysql.query(sql1,data1,function(e,r){
				if(r.length>0){
					obj.prevContent=r[r.length-1];
					//获取下一条
					var sql2="select * from content where Navpath=? and Id>?";
					mysql.query(sql2,data1,function(e,r){
						if(r.length>0){
							obj.nextContent=r[0];
							res.send(obj)
						}else{
							obj.nextContent=null;
							res.send(obj)
						}
					})
				}else{
					obj.prevContent=null;
					//获取下一条
					var sql2="select * from content where Navpath=? and Id>?";
					mysql.query(sql2,data1,function(e,r){
						if(r.length>0){
							obj.nextContent=r[0];
							res.send(obj)
						}else{
							obj.nextContent=null;
							res.send(obj)
						}
					})
				}
			})
		}else{
			res.send(null)
		}
	})
})


//关于我们、荣誉资质、联系我们 这个几个路由里面的二级导航接口
//http://192.168.8.8/api/getNavId?Id=20,17,4,19,21



//2.通过Id号获取 导航数据
//http://192.168.8.8/api/getNavId?Id=xxx

router.get("/getNavId",function(req,res){
	if(!req.query.Id){
		res.send([])
		return;
	}
	mysql.query("select * from nav where  Id in("+req.query.Id+") order by Sort asc",function(e,r){
		if(r.length>0){
			var data=r.map((v,k)=>{
				if(v.Img){
					var imgOjb=JSON.parse(v.Img);
					imgOjb.map((v,k)=>{
						v.path="http://"+req.headers.host+"/"+(v.path.replace("uploads\\",""));
						return v;
					})
					v.Img=imgOjb
				}
				return v;
				
			})
	
			res.send(data)
		}else{
			res.send([])
		}
	})
	
})





//获取某个栏目下 热门的内容
//http://192.168.8.8/api/getHotContent?parentPath=父栏目的path
/*我们要获取某个栏目下的热门内容 
只需要传入父栏目的path值就能到这个栏目的热门内容*/
router.get("/getHotContent",function(req,res){
		mysql.query("select a.*,b.Url from content as a,nav as b where a.Navpath=b.Path  and a.Type=2 and b.Path="+req.query.parentPath,function(e,r){
				var Url=[];
				r.forEach((v,k)=>{
					if(v.Img){
						var imgOjb=JSON.parse(v.Img);
						imgOjb.map((v,k)=>{
							v.path="http://"+req.headers.host+"/"+(v.path.replace("uploads\\",""));
								return v;
						})
						v.Img=imgOjb
					}
					mysql.query("select * from nav where  Path=?",[v.Navpath],function(e,r){
						v.Url=r[0].Url;
					})
				})
				console.log(r)
				res.send(r);
		})
	
})







module.exports=router;
