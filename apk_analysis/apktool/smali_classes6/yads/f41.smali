.class public final Lyads/f41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ln0;


# instance fields
.field public final a:Lyads/tq3;


# direct methods
.method public constructor <init>(Lyads/tq3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/f41;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 7

    invoke-static {p2}, Lyads/wq3;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    move-object v1, p1

    move-object v2, p2

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "radial_gradient"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/k31;

    iget-object p0, p0, Lyads/f41;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->j6:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/ax1;

    invoke-virtual {p0, p1, p2}, Lyads/ax1;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/gw1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/k31;-><init>(Lyads/gw1;)V

    return-object v0

    :sswitch_1
    const-string v1, "solid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lyads/l31;

    iget-object p0, p0, Lyads/f41;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->i7:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/u22;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/t22;

    sget-object v4, Lyads/w36;->f:Lyads/p36;

    sget-object v5, Lyads/bt4;->a:Lnl3;

    sget-object v1, Lyads/oq3;->a:Lyads/y50;

    sget-object v6, Lyads/uq3;->a:Lyads/l66;

    const-string v3, "color"

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object p1

    invoke-direct {p0, p1}, Lyads/t22;-><init>(Lyads/as2;)V

    invoke-direct {v0, p0}, Lyads/l31;-><init>(Lyads/t22;)V

    return-object v0

    :sswitch_2
    move-object v1, p1

    move-object v2, p2

    const-string p1, "image"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lyads/h31;

    iget-object p0, p0, Lyads/f41;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->T3:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/ci1;

    invoke-virtual {p0, v1, v2}, Lyads/ci1;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/bi1;

    move-result-object p0

    invoke-direct {p1, p0}, Lyads/h31;-><init>(Lyads/bi1;)V

    return-object p1

    :sswitch_3
    move-object v1, p1

    move-object v2, p2

    const-string p1, "gradient"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Lyads/i31;

    iget-object p0, p0, Lyads/f41;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->M4:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/ip1;

    invoke-virtual {p0, v1, v2}, Lyads/ip1;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/dp1;

    move-result-object p0

    invoke-direct {p1, p0}, Lyads/i31;-><init>(Lyads/dp1;)V

    return-object p1

    :sswitch_4
    move-object v1, p1

    move-object v2, p2

    const-string p1, "nine_patch_image"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    :goto_1
    invoke-interface {v1}, Lyads/ys4;->b()Lyads/pv5;

    move-result-object p1

    invoke-interface {p1, v0}, Lyads/pv5;->get(Ljava/lang/String;)Lyads/xq3;

    move-result-object p1

    if-eqz p1, :cond_6

    instance-of p2, p1, Lyads/o41;

    if-eqz p2, :cond_4

    check-cast p1, Lyads/o41;

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_5

    iget-object p0, p0, Lyads/f41;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->H1:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/h41;

    invoke-virtual {p0, v1, p1, v2}, Lyads/h41;->a(Lyads/ys4;Lyads/o41;Lorg/json/JSONObject;)Lyads/m31;

    move-result-object p0

    return-object p0

    :cond_5
    const-string p0, "type"

    invoke-static {v2, p0, v0}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p0

    throw p0

    :cond_6
    invoke-static {v0, v2}, Lyads/gt4;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lyads/ft4;

    move-result-object p0

    throw p0

    :cond_7
    new-instance p1, Lyads/j31;

    iget-object p0, p0, Lyads/f41;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->Y4:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/bq1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lyads/aq1;

    sget-object v4, Lyads/w36;->e:Lyads/v36;

    sget-object v5, Lyads/bt4;->b:Lnl3;

    sget-object v0, Lyads/oq3;->a:Lyads/y50;

    sget-object v6, Lyads/uq3;->a:Lyads/l66;

    const-string v3, "image_url"

    invoke-static/range {v1 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object v0

    iget-object p0, p0, Lyads/bq1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->E:Lcl4;

    const-string v3, "insets"

    invoke-static {v1, v2, v3, p0}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/cr0;

    invoke-direct {p2, v0, p0}, Lyads/aq1;-><init>(Lyads/as2;Lyads/cr0;)V

    invoke-direct {p1, p2}, Lyads/j31;-><init>(Lyads/aq1;)V

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x1d1ad69 -> :sswitch_4
        0x557f730 -> :sswitch_3
        0x5faa95b -> :sswitch_2
        0x688a6ab -> :sswitch_1
        0x702ab150 -> :sswitch_0
    .end sparse-switch
.end method
