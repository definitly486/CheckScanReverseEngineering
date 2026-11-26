.class public final Lyads/pe2;
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

    iput-object p1, p0, Lyads/pe2;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 7

    invoke-static {p2}, Lyads/wq3;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "value"

    sparse-switch v1, :sswitch_data_0

    :goto_0
    move-object v1, p1

    move-object v2, p2

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "integer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/ke2;

    iget-object p0, p0, Lyads/pe2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->B9:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/km3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/jm3;

    sget-object v4, Lyads/w36;->b:Lyads/s36;

    sget-object v5, Lyads/bt4;->e:Lnl3;

    sget-object v1, Lyads/oq3;->a:Lyads/y50;

    sget-object v6, Lyads/uq3;->a:Lyads/l66;

    const-string v3, "value"

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object p1

    invoke-direct {p0, p1}, Lyads/jm3;-><init>(Lyads/as2;)V

    invoke-direct {v0, p0}, Lyads/ke2;-><init>(Lyads/jm3;)V

    return-object v0

    :sswitch_1
    move-object v1, p1

    move-object v2, p2

    const-string p1, "color"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_1

    :cond_1
    new-instance p1, Lyads/ie2;

    iget-object p0, p0, Lyads/pe2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->m:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/p30;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/o30;

    sget-object v4, Lyads/w36;->f:Lyads/p36;

    sget-object v5, Lyads/bt4;->a:Lnl3;

    sget-object p2, Lyads/oq3;->a:Lyads/y50;

    sget-object v6, Lyads/uq3;->a:Lyads/l66;

    const-string v3, "value"

    invoke-static/range {v1 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object p2

    invoke-direct {p0, p2}, Lyads/o30;-><init>(Lyads/as2;)V

    invoke-direct {p1, p0}, Lyads/ie2;-><init>(Lyads/o30;)V

    return-object p1

    :sswitch_2
    move-object v1, p1

    move-object p1, v2

    move-object v2, p2

    const-string p2, "array"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto/16 :goto_1

    :cond_2
    new-instance p2, Lyads/ge2;

    iget-object p0, p0, Lyads/pe2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->a:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/fj;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/ej;

    sget-object v0, Lyads/w36;->g:Lyads/t36;

    invoke-static {v1, v2, p1, v0}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object p1

    invoke-direct {p0, p1}, Lyads/ej;-><init>(Lyads/as2;)V

    invoke-direct {p2, p0}, Lyads/ge2;-><init>(Lyads/ej;)V

    return-object p2

    :sswitch_3
    move-object v1, p1

    move-object v2, p2

    const-string p1, "boolean"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_1

    :cond_3
    new-instance p1, Lyads/he2;

    iget-object p0, p0, Lyads/pe2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->g:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/lu;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/ku;

    sget-object v4, Lyads/w36;->a:Lyads/o36;

    sget-object v5, Lyads/bt4;->c:Lnl3;

    sget-object p2, Lyads/oq3;->a:Lyads/y50;

    sget-object v6, Lyads/uq3;->a:Lyads/l66;

    const-string v3, "value"

    invoke-static/range {v1 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object p2

    invoke-direct {p0, p2}, Lyads/ku;-><init>(Lyads/as2;)V

    invoke-direct {p1, p0}, Lyads/he2;-><init>(Lyads/ku;)V

    return-object p1

    :sswitch_4
    move-object v1, p1

    move-object p1, v2

    move-object v2, p2

    const-string p2, "dict"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto/16 :goto_1

    :cond_4
    new-instance p2, Lyads/je2;

    iget-object p0, p0, Lyads/pe2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->y:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/yo0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/xo0;

    sget-object v0, Lyads/w36;->h:Lyads/q36;

    invoke-static {v1, v2, p1, v0}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object p1

    invoke-direct {p0, p1}, Lyads/xo0;-><init>(Lyads/as2;)V

    invoke-direct {p2, p0}, Lyads/je2;-><init>(Lyads/xo0;)V

    return-object p2

    :sswitch_5
    move-object v1, p1

    move-object v2, p2

    const-string p1, "url"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Lyads/ne2;

    iget-object p0, p0, Lyads/pe2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->ca:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/g56;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/f56;

    sget-object v4, Lyads/w36;->e:Lyads/v36;

    sget-object v5, Lyads/bt4;->b:Lnl3;

    sget-object p2, Lyads/oq3;->a:Lyads/y50;

    sget-object v6, Lyads/uq3;->a:Lyads/l66;

    const-string v3, "value"

    invoke-static/range {v1 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object p2

    invoke-direct {p0, p2}, Lyads/f56;-><init>(Lyads/as2;)V

    invoke-direct {p1, p0}, Lyads/ne2;-><init>(Lyads/f56;)V

    return-object p1

    :sswitch_6
    move-object v1, p1

    move-object p1, v2

    move-object v2, p2

    const-string p2, "string"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_1

    :cond_6
    new-instance p2, Lyads/me2;

    iget-object p0, p0, Lyads/pe2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->W9:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/qr5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/pr5;

    sget-object v0, Lyads/w36;->c:Lyads/u36;

    invoke-static {v1, v2, p1, v0}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object p1

    invoke-direct {p0, p1}, Lyads/pr5;-><init>(Lyads/as2;)V

    invoke-direct {p2, p0}, Lyads/me2;-><init>(Lyads/pr5;)V

    return-object p2

    :sswitch_7
    move-object v1, p1

    move-object v2, p2

    const-string p1, "number"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    :goto_1
    invoke-interface {v1}, Lyads/ys4;->b()Lyads/pv5;

    move-result-object p1

    invoke-interface {p1, v0}, Lyads/pv5;->get(Ljava/lang/String;)Lyads/xq3;

    move-result-object p1

    if-eqz p1, :cond_9

    instance-of p2, p1, Lyads/af2;

    if-eqz p2, :cond_7

    check-cast p1, Lyads/af2;

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_8

    iget-object p0, p0, Lyads/pe2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->Z8:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/re2;

    invoke-virtual {p0, v1, p1, v2}, Lyads/re2;->a(Lyads/ys4;Lyads/af2;Lorg/json/JSONObject;)Lyads/oe2;

    move-result-object p0

    return-object p0

    :cond_8
    const-string p0, "type"

    invoke-static {v2, p0, v0}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p0

    throw p0

    :cond_9
    invoke-static {v0, v2}, Lyads/gt4;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lyads/ft4;

    move-result-object p0

    throw p0

    :cond_a
    new-instance p1, Lyads/le2;

    iget-object p0, p0, Lyads/pe2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->H9:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/so4;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lyads/ro4;

    sget-object v4, Lyads/w36;->d:Lyads/r36;

    sget-object v5, Lyads/bt4;->d:Lnl3;

    sget-object p2, Lyads/oq3;->a:Lyads/y50;

    sget-object v6, Lyads/uq3;->a:Lyads/l66;

    const-string v3, "value"

    invoke-static/range {v1 .. v6}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object p2

    invoke-direct {p0, p2}, Lyads/ro4;-><init>(Lyads/as2;)V

    invoke-direct {p1, p0}, Lyads/le2;-><init>(Lyads/ro4;)V

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x3da724b7 -> :sswitch_7
        -0x352a9fef -> :sswitch_6
        0x1c56f -> :sswitch_5
        0x2f0bb6 -> :sswitch_4
        0x3db6c28 -> :sswitch_3
        0x58c7259 -> :sswitch_2
        0x5a72f63 -> :sswitch_1
        0x74b5813e -> :sswitch_0
    .end sparse-switch
.end method
