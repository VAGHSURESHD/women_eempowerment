<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Contact </title>

    @include('includes.head')

</head>

<body>

<div class="page-wrapper">

@include('includes.header')

<!--Page Header Start-->
    <section class="page-header"
             style="background-image: url(https://images.pexels.com/photos/207456/pexels-photo-207456.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940);">
        <div class="container">
            <div class="page-header__inner">
                <h2>Help</h2>
                <ul class="thm-breadcrumb list-unstyled">
                    <li><a href="/">Home</a></li>
                    <li><span>/</span></li>
                    <li>Help</li>
                </ul>
            </div>
        </div>
    </section>
    <!--Page Header End-->

    <!--Contact Page Start-->
    <section class="contact-page">
        <div class="container">
            <div class="block-title text-center">
                <h4>Asked Quesitons</h4>
                <h2>Help</h2>
            </div>
            <div class="row">
                <div class="col-xl-8">
                    <div class="contact-form">
                        <form action="/send-mail" method="post" class="contact-form-validated contact-one__form">
                            @csrf
                            <div class="row">
                                <div class="col-xl-6">
                                    <div class="contact-form__input-box">
                                        <input type="text" placeholder="Your name" name="name">
                                    </div>
                                </div>
                                <div class="col-xl-6">
                                    <div class="contact-form__input-box">
                                        <input type="email" placeholder="Email address" name="email">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xl-6">
                                    <div class="contact-form__input-box">
                                        <input type="text" placeholder="Phone number" name="phone">
                                    </div>
                                </div>
                                <div class="col-xl-6">
                                    <div class="contact-form__input-box">
                                        <input type="text" placeholder="Subject" name="subject">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xl-12">
                                    <div class="contact-form__input-box">
                                        <textarea name="message" placeholder="Write message"></textarea>
                                    </div>
                                    <button type="submit" class="thm-btn contact-form__btn">Send Message</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-xl-4 d-flex align-items-stretch">
                    <div class="contact-page__info-box">
                        <div class="contact-page__info-box-address">
                            <h4 class="contact-page__info-box-tilte">Help</h4>
                            <p class="contact-page__info-box-address-text" style="padding: 5px 20px">Vagh Suresh D</p>
                            <p class="contact-page__info-box-address-text" style="padding: 5px 20px"><a
                                    href="tel:9638860665">9638860665</a></p>
                            <p class="contact-page__info-box-address-text" style="padding: 5px 20px"><a
                                    href="mailto:tiger1364d@gmail.com">tiger1364d@gmail.com</a></p>
                            <p class="contact-page__info-box-address-text" style="padding: 5px 20px">Shree Krishna Bunglow, Rajula, Amreli, Gujarat-365560</p>
                            <h4 class="contact-page__info-box-tilte" style="padding: 10px 0px">Help</h4>

                            <p class="contact-page__info-box-address-text" style="padding: 5px 20px">Bhavsar Rahul S
                            </p>
                            <p class="contact-page__info-box-address-text" style="padding: 5px 20px"><a
                                    href="tel:9638860665">7802817187</a></p>
                            <p class="contact-page__info-box-address-text" style="padding: 5px 20px"><a
                                    href="mailto:tiger1364d@gmail.com">rbhavsar2002@gmail.com</a></p>
                            <p class="contact-page__info-box-address-text" style="padding: 5px 20px">16 sanskrit appartment , Opp Ghandi park society, near ambe mata temple, uttamnagar, Maninagar, Ahmedabad-38008</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--Contact Page End-->


</div>

@include('includes.footer')


</body>

</html>
