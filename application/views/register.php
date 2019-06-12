 <html>
     <head>
         <title></title>
         <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>public/css/bootstrap.min.css">
     </head>
 </html>

 <body>
     <div class="container">
        <br/>
        <h3 align="center">Account Creation</h3>
        <br />
        <div class="panel panel-default">
        <div class="panel-heading">Register</div>
            <div class="panel-body">
                <?php
                if($this->session->flashdata('user_registered'))
                {
                    echo '
                    <div class="alert alert-success">
                    '.$this->session->flashdata("user_registered").'
                    </div>
                    ';
                }
                ?>
                <form method="post" action="<?php echo base_url();?>site/register">

                <div class="form-group">
                    <label>Name</label>
                    <input type="text" name="user_name" class="form-control" />
                    <span class="text-danger"><?php echo form_error('user_name'); ?></span>
                </div>
                <div class="form-group">
                    <label>Email</label>
                    <input type="email" name="user_email" class="form-control" />
                    <span class="text-danger"><?php echo form_error('user_email'); ?></span>
                </div>
                <div class="form-group">
                    <label>Password</label>
                    <input type="password" name="user_password" class="form-control" />
                    <span class="text-danger"><?php echo form_error('user_password'); ?></span>
                </div>
                <div>
                    <input type="submit" name="register" value="Register" class="btn btn-info" />
                </div>
                </form>
                <?php echo form_close(); ?>
                <a class="" href="<?php echo base_url(); ?>">Back to login</a>


            </div>
        </div>

     </div>
</body>
     </html>
