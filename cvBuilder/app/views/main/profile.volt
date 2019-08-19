{% extends 'layouts/templateLogged.volt' %}

{% block templatehead %}

    <script type="text/javascript" src="../public/assets/js/jquery.js"></script>

    <script type="text/javascript" src="../public/assets/js/verifier.js"></script>

    <link rel="stylesheet" type="text/css" href="../public/assets/css/source.css"/>

{% endblock %}



{% block templatebody %}
<div class="profile">
<div class="container emp-profile">
            <form method="post" action="profileEdit">
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-img">
                            <img src="<?php echo $_SESSION['img'];?>" alt=""/>
                            <div class="file btn btn-lg btn-primary">
                                Change Photo
                                <input type="file" name="fileupload"/>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="profile-head">
                                    <h5>
                                        <?php echo $_SESSION['firstname'] .' '. $_SESSION['lastname']; ?>
                                    </h5>
                                    <h6>
                                       <?php if(isset($_SESSION['proffession']))
                                                {
                                                    echo $_SESSION['proffession'];
                                                }else
                                                {
                                                    echo 'none';
                                                }
                                                ?>
                                    </h6>
                                    <p class="proile-rating"> <span></span></p>
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">About</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Work</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <input type="submit" class="profile-edit-btn" name="btnAddMore" value="Edit"/>
                        <p></p>
                    </div>
                </div>
              
                    <div class="col-md-8">
                        <div class="tab-content profile-tab" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>User Id</label>
                                            </div>
                                            <div class="col-md-6">
                                                 <p><?php echo $_SESSION['user_id'];?></p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Firstname</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><?php if(isset($_SESSION['firstname']))
                                                {
                                                    echo $_SESSION['firstname'] . ' ' . $_SESSION['lastname'];
                                                }else
                                                {
                                                    echo 'none';
                                                }
                                                ?><p>
                                            </div>
                                        </div>
                                         <div class="row">
                                            
                                             <div class="col-md-6">
                                                <label>Age</label>
                                            </div>
                                            <div class="col-md-6">
                                            <p><?php if(isset($_SESSION['age']))
                                                {
                                                    echo $_SESSION['age'];
                                                }else
                                                {
                                                    echo 'none';
                                                }
                                                ?><p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Email</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><?php echo $_SESSION['email'];?></p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Phone</label>
                                            </div>
                                            <div class="col-md-6">
                                               <div class="input-group mb-3">

                                                <p><?php if(isset($_SESSION['phone_number']))
                                                {
                                                    echo $_SESSION['phone_number'];
                                                }else
                                                {
                                                    echo 'none';
                                                }
                                                ?><p>
</div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Profession</label>
                                            </div>
                                            <div class="col-md-6">
                                                 <p><?php if(isset($_SESSION['proffession']))
                                                {
                                                    echo $_SESSION['proffession'];
                                                }else
                                                {
                                                    echo 'none';
                                                }
                                                ?><p>
                                            </div>
                                        </div>
                            </div>
                            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Experience</label>
                                            </div>
                                            <div class="col-md-6">
                                                 <p><?php if(isset($_SESSION['experience']))
                                                {
                                                    echo $_SESSION['experience'];
                                                }else
                                                {
                                                    echo 'none';
                                                }
                                                ?><p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Hourly Rate</label>
                                            </div>
                                            <div class="col-md-6">
                                                 <p><?php if(isset($_SESSION['hourlyRate']))
                                                {
                                                    echo $_SESSION['hourlyRate'];
                                                }else
                                                {
                                                    echo 'none';
                                                }
                                                ?><p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Total Projects</label>
                                            </div>
                                            <div class="col-md-6">
                                                 <p><?php if(isset($_SESSION['projects']))
                                                {
                                                    echo $_SESSION['projects'];
                                                }else
                                                {
                                                    echo 'none';
                                                }
                                                ?><p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>English Level</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><?php if(isset($_SESSION['englishLevel']))
                                                {
                                                    echo $_SESSION['englishLevel'];
                                                }else
                                                {
                                                    echo 'none';
                                                }
                                                ?><p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Availability</label>
                                            </div>
                                            <div class="col-md-6">
                                                 <p><?php if(isset($_SESSION['availability']))
                                                {
                                                    echo $_SESSION['availability'];
                                                }else
                                                {
                                                    echo 'none';
                                                }
                                                ?><p>
                                            </div>
                                        </div>
                               


{% endblock %}