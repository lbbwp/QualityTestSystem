<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>大学生综合素质测试系统</title>

		
		<link rel="shortcut icon" href="images/favicon.ico"/>
		<link rel="bookmark" href="images/favicon.ico"/>
		<link rel="stylesheet" type="text/css" href="css/base.css">
		<link rel="stylesheet" type="text/css" href="css/iconfont.css">
		<script type="text/javascript" src="framework/jquery-1.11.3.min.js"></script>
		<link rel="stylesheet" type="text/css" href="layui/css/layui.css">
		<script type="text/javascript" src="layui/layui.js"></script>
		

		<link rel="stylesheet" type="text/css" href="css/login1.css">
		<script type="text/javascript" src="js/login1.js"></script>
	</head>

	<body>
		<div class="loginBg"></div>
		<div class="login_main">
			<div class="box">
				<div class="left">
					<img src="images/logo.png" />
					<p>大学生综合素质测试系统</p>
				</div>
				<div class="right">
					<form class="layui-form layui-form-pane" action="frame.html">
						<div class="layui-form-item">
							<label class="layui-form-label login_title"><i class="iconfont icon-gerenzhongxin-denglu"></i></label>
							<div class="layui-input-block login_input">
								<input type="text" name="name" required lay-verify="required" autocomplete="off" placeholder="用户名" class="layui-input">
							</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label login_title"><i class="iconfont icon-mima1"></i></label>
							<div class="layui-input-block login_input">
								<input type="password" name="password" required lay-verify="required" autocomplete="off" placeholder="密码" class="layui-input">
							</div>
						</div>
						<div class="layui-form-item">
							<button class="layui-btn layui-btn-fluid login_but" lay-submit lay-filter="loginBut">登录</button>
						</div>
						<div class="layui-form-item">
							<input type="radio" name="sex" value="管理员" title="管理员" checked lay-filter="userType">
							<input type="radio" name="sex" value="学生" title="学生" lay-filter="userType">
							<input type="radio" name="sex" value="教师" title="教师" lay-filter="userType">
						</div>
					</form>
				</div>
			</div>
		</div>
		<script>
			layui.use('form', function() {
				var form = layui.form;
			
				form.on('submit(loginBut)', function(data) {
					layer.msg(JSON.stringify(data.field));
					return true;
				});
				
				form.on('radio(userType)', function(data){
					if(data.value == "ç®¡çå"){
						$(".loginBg").css("background","url('images/login_admin_bg.jpg')");
						$(".login_but").css("cssText", "background-color:#57c201 !important");
					}
					if(data.value == "å­¦ç"){
						$(".loginBg").css("background","url('images/login_sh_bg.jpg')");
						$(".login_but").css("cssText", "background-color:#16c6f9 !important");
					}
					if(data.value == "æå¸"){
						$(".loginBg").css("background","url('images/login_fj_bg.jpg')");
						$(".login_but").css("cssText", "background-color:#ffd205 !important");
					}
				});
			});
		</script>
	</body>

</html>