//���̲���JS
$("#jianpan .title").css("line-height",$("#jianpan").height()/5+"px");
function xfjianpan(id) {
    //xfjianpan(id),��idΪinput��id�����id==falseʱ����������

    var jpnub = $("#xfjp td").length;

    move("jianpan");        //�������̿��ƶ�

    $("#xfjp td").unbind("click");

    if (id != false) {          
        $("#jianpan").show();
        var xfjp_text = $("#"+id).val();                        //��ȡinput��ǰ��valֵ


        $(".input_on").removeClass("input_on");
        $("#"+id).addClass("input_on");                         //����input��ѡ��ʱ����ʽ

        $("#jptitle").html($("#"+id).attr("placeholder"));      //���̱��⣬�Զ���ȡinput��placeholderֵ

        $("#xfjp td").click(function () {
            var click = $(this).html();                         //��ȡ�������������

            //���ⰴ����������¼�
            //�жϵ���İ����Ƿ��������¼������û���򰴼����ݼ���input�ı�����
            if(click == "shift"){
                for(i=0;i<jpnub;i++){
                        $("#xfjp td:eq("+i+")").html($("#xfjp td:eq("+i+")").html().toUpperCase());
                    }
            }else if(click == "SHIFT"){
                for(i=0;i<jpnub;i++){
                        $("#xfjp td:eq("+i+")").html($("#xfjp td:eq("+i+")").html().toLowerCase());
                    }
            }else
		   {
                xfjp_text = xfjp_text + click;
                $("#"+id).val(xfjp_text);
            }

            $("#"+id).focus();
        })
    }else{
        $(".input_on").removeClass("input_on");                    //�Ƴ�ѡ��input��ѡ����ʽ
        $("#jianpan").hide();
    }
}




//��갴ס�϶�����JS
function unmove(obj){
    $("#" + obj + " .title").unbind("mousedown");
}
function move(obj){
    var OffsetX = 0;
    var OffsetY = 0;
    var moveKg = false;
    var csZ = 0;
    function d(id) {
        return document.getElementById(id);
    }
    $("#"+obj+" .title").bind("mousedown", function () {
        OffsetX = event.pageX - d(obj).offsetLeft;
        OffsetY = event.pageY - d(obj).offsetTop;
        csZ = $("#"+obj).css("z-index");
        $("#"+obj).css("z-index","9999");
        moveKg = true;
        jpyd();
    })
    function jpyd() {
        $(document).bind("mousemove", function () {
            var e = e || window.event;
            var mouswX = e.pageX;
            var mouswY = e.pageY;
            var moveX = mouswX - OffsetX;
            var moveY = mouswY - OffsetY;
            var maxX = $(window).width() - d(obj).offsetWidth;
            var maxY = $(window).height() - d(obj).offsetHeight;
            moveX=Math.min(maxX,Math.max(0,moveX));
            moveY=Math.min(maxY,Math.max(0,moveY));
            $("#"+obj).css({"left":moveX,"top":moveY});
        })
        $(document).bind("mouseup", function () {
            moveKg = false;
            $("#"+obj).css("z-index",csZ);
            $(document).unbind("mousemove mouseup");
        })
    }
}