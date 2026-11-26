.class public final Lyads/g41;
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

    iput-object p1, p0, Lyads/g41;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 9

    invoke-static {p2}, Lyads/wq3;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lyads/ys4;->b()Lyads/pv5;

    move-result-object v1

    invoke-interface {v1, v0}, Lyads/pv5;->get(Ljava/lang/String;)Lyads/xq3;

    move-result-object v1

    instance-of v2, v1, Lyads/o41;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Lyads/o41;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const-string v2, "nine_patch_image"

    const-string v4, "solid"

    const-string v5, "image"

    const-string v6, "radial_gradient"

    const-string v7, "gradient"

    if-eqz v1, :cond_6

    instance-of v0, v1, Lyads/k41;

    if-eqz v0, :cond_1

    move-object v0, v7

    goto :goto_1

    :cond_1
    instance-of v0, v1, Lyads/m41;

    if-eqz v0, :cond_2

    move-object v0, v6

    goto :goto_1

    :cond_2
    instance-of v0, v1, Lyads/j41;

    if-eqz v0, :cond_3

    move-object v0, v5

    goto :goto_1

    :cond_3
    instance-of v0, v1, Lyads/n41;

    if-eqz v0, :cond_4

    move-object v0, v4

    goto :goto_1

    :cond_4
    instance-of v0, v1, Lyads/l41;

    if-eqz v0, :cond_5

    move-object v0, v2

    goto :goto_1

    :cond_5
    invoke-static {}, Lme0;->e()V

    return-object v3

    :cond_6
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v0, Lyads/m41;

    iget-object p0, p0, Lyads/g41;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->k6:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/bx1;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lyads/o41;->a()Ljava/lang/Object;

    move-result-object v3

    :cond_7
    check-cast v3, Lyads/by1;

    invoke-virtual {p0, p1, v3, p2}, Lyads/bx1;->a(Lyads/ys4;Lyads/by1;Lorg/json/JSONObject;)Lyads/by1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/m41;-><init>(Lyads/by1;)V

    return-object v0

    :sswitch_1
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v0, Lyads/n41;

    iget-object p0, p0, Lyads/g41;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->j7:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/v22;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lyads/o41;->a()Ljava/lang/Object;

    move-result-object v3

    :cond_8
    check-cast v3, Lyads/x22;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v3, p2}, Lyads/v22;->a(Lyads/ys4;Lyads/x22;Lorg/json/JSONObject;)Lyads/x22;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/n41;-><init>(Lyads/x22;)V

    return-object v0

    :sswitch_2
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v0, Lyads/j41;

    iget-object p0, p0, Lyads/g41;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->U3:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/di1;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lyads/o41;->a()Ljava/lang/Object;

    move-result-object v3

    :cond_9
    check-cast v3, Lyads/gi1;

    invoke-virtual {p0, p1, v3, p2}, Lyads/di1;->a(Lyads/ys4;Lyads/gi1;Lorg/json/JSONObject;)Lyads/gi1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/j41;-><init>(Lyads/gi1;)V

    return-object v0

    :sswitch_3
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v0, Lyads/k41;

    iget-object p0, p0, Lyads/g41;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->N4:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/jp1;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lyads/o41;->a()Ljava/lang/Object;

    move-result-object v3

    :cond_a
    check-cast v3, Lyads/np1;

    invoke-virtual {p0, p1, v3, p2}, Lyads/jp1;->a(Lyads/ys4;Lyads/np1;Lorg/json/JSONObject;)Lyads/np1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/k41;-><init>(Lyads/np1;)V

    return-object v0

    :sswitch_4
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v0, Lyads/l41;

    iget-object p0, p0, Lyads/g41;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->Z4:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/cq1;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lyads/o41;->a()Ljava/lang/Object;

    move-result-object v3

    :cond_b
    check-cast v3, Lyads/eq1;

    invoke-virtual {p0, p1, v3, p2}, Lyads/cq1;->a(Lyads/ys4;Lyads/eq1;Lorg/json/JSONObject;)Lyads/eq1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/l41;-><init>(Lyads/eq1;)V

    return-object v0

    :cond_c
    :goto_2
    const-string p0, "type"

    invoke-static {p2, p0, v0}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p0

    throw p0

    :sswitch_data_0
    .sparse-switch
        -0x1d1ad69 -> :sswitch_4
        0x557f730 -> :sswitch_3
        0x5faa95b -> :sswitch_2
        0x688a6ab -> :sswitch_1
        0x702ab150 -> :sswitch_0
    .end sparse-switch
.end method
