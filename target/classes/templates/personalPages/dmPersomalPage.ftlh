<#import "../parts/personalPageTemplate.ftlh" as p>

<@p.personalPageTemplate>


<#--    Nested start-->
    <ul id="sdt_menu" class="sdt_menu">

        <li>

            <a href="#">

                <img src="../../static/images/ssd.jpg" >


                <span class="sdt_active"></span>
                <span class="sdt_wrap">
							<span class="sdt_link">Список дисциплин, который я учу</span>
							<span class="sdt_descr"></span>
						</span>
            </a>

            <div class="sdt_box">
                <a href="#">It`s recommended from 500</a>
                <a href="#">And it is better to have two at once</a>
            </div>
        </li>
        <li>
            <a href="#">
                <img src="../../static/images/mpl.jpg" alt=""/>
                <span class="sdt_active"></span>
                <span class="sdt_wrap">
							<span class="sdt_link">Чатик студенческий</span>
							<span class="sdt_descr"></span>
						</span>
            </a>
            <div class="sdt_box">
                <a href="#">Under yours CPU</a>
            </div>
        </li>
    </ul>


<#--    Nested end-->
</@p.personalPageTemplate>
