<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<link rel="stylesheet" href="/xiaoneinews/css/css/home.css" type="text/css"></link>
		<link rel="stylesheet" href="/xiaoneinews/css/css/common.css" type="text/css"></link>
		<script type="text/javascript">
		<!--
		
		function showDoing(){
		 document.getElementById("doing").style.display="";
		}
		
		function hiddenDoing(){
		 document.getElementById("doing").style.display="none";
		}
		
		//-->
		</script>
	</head>
	<body>
		
		<jsp:include page="head.jsp"></jsp:include>
		<div class="home_main">
			<div class="types">
				<div class="types_tab">
					<table>
					
						<tr>
							<td width="20%">
								<img src="/xiaoneinews/images/front/blog.gif" />
							</td>
							<td>
								<a class="yy" href="#">日志</a>
							</td>
							<td>
								<a href="#" class="xh" style="color: #808080">发表</a>
							</td>
						</tr>
						<tr>
							<td>
								<img src="/xiaoneinews/images/front/photo.gif" />
							</td>
							<td>
								<a href="" class="yy">相册</a>
							</td>
							<td>
								<a href="#" class="xh" style="color: #808080">上传</a>
							</td>
						</tr>
						<tr>
							<td>
								<img src="/xiaoneinews/images/front/group.gif" />
							</td>
							<td>
								<a href="" class="yy">群组</a>
							</td>
							<td>

							</td>
						</tr>
						<tr>
							<td>
								<img src="/xiaoneinews/images/front/share.gif" />
							</td>
							<td>
								<a href="" class="yy">分享</a>
							</td>
							<td>

							</td>
						</tr>
						<tr>
							<td>
								<img src="/xiaoneinews/images/front/gift.gif" />
							</td>
							<td>
								<a href="" class="yy">礼物</a>
							</td>
							<td>

							</td>
						</tr>
						<tr>
							<td>
								<img src="/xiaoneinews/images/front/toupiao.gif" />
							</td>
							<td>
								<a href="" class="yy">投票</a>
							</td>
							<td>

							</td>
						</tr>
					</table>
				</div>
				
			</div>
			<div class="content">
				<div class="profile">
					<table>
						<tr>
							<td rowspan="3" width="193px">
								<img src="/xiaoneinews/images/userhead/u1.gif" width="150px" height="150px" />
							</td>
							<td colspan="4" class="word2">
								<span>
								${user.name}
								</span>
							</td>
						</tr>
						<tr>
							<td colspan="4">
								<span class="word4" id="sudo">目前什么都没做!</span>
								<a class="xh" href="javascript:void(0);" onclick="showDoing()">
									编辑</a>
							</td>
						</tr>
						<tr>
							<td width="83">
								<img src="/xiaoneinews/images/front/status.gif" />
								<a class="xh" href="javascript:void(0);" onclick="showDoing()">改状态</a>
							</td>
							<td width="83">
								<img src="/xiaoneinews/images/front/blog.gif" />
								<a class="xh" href="writeBlog.jsp">写日志</a>
							</td>
							<td width="83">
								<img src="/xiaoneinews/images/front/photo.gif" />
								<a class="xh" href="/self/myAlbum.jsp">传照片</a>
							</td>
							<td width="83">
								<img src="/xiaoneinews/images/front/share.gif" />
								<a class="xh" href="">分享</a>
							</td>
						</tr>
						<tr id="doing" style="display: none;">
							<td colspan="5">
								<input type="text" value="doing some thing.." id="udo" size="30" />
								<input type="submit" value="提交" style="width: 60px" class="sub"
									onclick="fdoing()" />
								<input type="button" value="取消" onclick="hiddenDoing()"
									class="button2" />
							</td>
						</tr>
					</table>
				</div>
				<!-- 留言和回复 -->
				<div class="mes_response">
					<table>
						<tr>
							<td class="word2">
								新留言及回复(2)
							</td>
							<td width="30px">
								<a href="" class="xh">更多</a>
							</td>
						</tr>
						<tr>
							<td>
								<img src="/xiaoneinews/images/front/wall_post.gif" />
								<span class="word4">小明 在 体育 回复你</span>
							</td>
							<td>
								<a href="javascript:void(0);" class="xh" onclick="readgt(this)"
									id="留言id号代填"
									onmouseover="this.style.color='#FFFFFF';this.style.backgroundColor='#3B5888'"
									onmouseout="this.style.color='#B1BDD6';this.style.backgroundColor='#FFFFFF'"
									style="color: #B1BDD6; font-weight: bold; text-decoration: none">×</a>
							</td>
						</tr>
						<tr>
							<td>
								<img src="/xiaoneinews/images/front/wall_post.gif" />
								<span class="word4">小明 在 体育 回复你</span>
							</td>
							<td>
								<a href="javascript:void(0);" class="xh" onclick="readgt(this)"
									id="留言id号代填"
									onmouseover="this.style.color='#FFFFFF';this.style.backgroundColor='#3B5888'"
									onmouseout="this.style.color='#B1BDD6';this.style.backgroundColor='#FFFFFF'"
									style="color: #B1BDD6; font-weight: bold; text-decoration: none">×</a>
							</td>
						</tr>
						<tr>
							<td>
								<img src="/xiaoneinews/images/front/wall_post.gif" />
								<span class="word4">小明 在 体育 回复你</span>
							</td>
							<td>
								<a href="javascript:void(0);" class="xh" onclick="readgt(this)"
									id="留言id号代填"
									onmouseover="this.style.color='#FFFFFF';this.style.backgroundColor='#3B5888'"
									onmouseout="this.style.color='#B1BDD6';this.style.backgroundColor='#FFFFFF'"
									style="color: #B1BDD6; font-weight: bold; text-decoration: none">×</a>
							</td>
						</tr>

					</table>
				</div>
				<!-- 留言和回复 end -->
				<!-- 新鲜事情 start -->
			
				<!-- 新鲜事情 end -->
				<!-- 人气之星 start-->
				
				<!-- 人气之星 end -->

				<!-- 新人 start-->
				
			</div>

			
		</div>
		<!-- 引入foot.jsp -->
		<jsp:include page="../public/foot.jsp"></jsp:include>
	</body>
</html>
