<#import "../parts/personalPageTemplate.ftlh" as p>

<@p.personalPageTemplate>


<#--    Nested start-->
    <ul id="sdt_menu" class="sdt_menu">

        <li>

            <a href="#">

                <img src="../../static/images/ssd.jpg" >


                <span class="sdt_active"></span>
                <span class="sdt_wrap">
							<span class="sdt_link">Полный админский список дисциплин</span>
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
							<span class="sdt_link">Чатик админский</span>
							<span class="sdt_descr"></span>
						</span>
            </a>
            <div class="sdt_box">
                <a href="#">Under yours CPU</a>
            </div>
        </li>


        <li>
            <a href="/user">
                <img src="../../static/images/CPU.jpg" alt=""/>
                <span class="sdt_active"></span>
                <span class="sdt_wrap">
							<span class="sdt_link">Ред юзеров</span>
							<span class="sdt_descr">watch it</span>
						</span>
            </a>

        </li>

        <li>
            <a href="/user">
                <div>



                <img src="../../static/images/CPU.jpg" alt=""/>
                <span class="sdt_active"></span>
                <span class="sdt_wrap">
							<span class="sdt_link">Сделать что-то ещё</span>
							<span class="sdt_descr">watch it</span>
						</span>
                </div>
            </a>
            <div class="sdt_box">
                <a href="#">AMD or Intel already to you to solve it</a>
                <a href="#">Frequency is higher 3.0GHz</a>
            </div>
        </li>

    </ul>


<#--    Nested end-->
</@p.personalPageTemplate>
