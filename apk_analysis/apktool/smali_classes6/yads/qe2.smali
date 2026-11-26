.class public final Lyads/qe2;
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

    iput-object p1, p0, Lyads/qe2;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 12

    invoke-static {p2}, Lyads/wq3;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lyads/ys4;->b()Lyads/pv5;

    move-result-object v1

    invoke-interface {v1, v0}, Lyads/pv5;->get(Ljava/lang/String;)Lyads/xq3;

    move-result-object v1

    instance-of v2, v1, Lyads/af2;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Lyads/af2;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const-string v2, "array"

    const-string v4, "dict"

    const-string v5, "url"

    const-string v6, "boolean"

    const-string v7, "color"

    const-string v8, "number"

    const-string v9, "integer"

    const-string v10, "string"

    if-eqz v1, :cond_9

    instance-of v0, v1, Lyads/ye2;

    if-eqz v0, :cond_1

    move-object v0, v10

    goto :goto_1

    :cond_1
    instance-of v0, v1, Lyads/we2;

    if-eqz v0, :cond_2

    move-object v0, v9

    goto :goto_1

    :cond_2
    instance-of v0, v1, Lyads/xe2;

    if-eqz v0, :cond_3

    move-object v0, v8

    goto :goto_1

    :cond_3
    instance-of v0, v1, Lyads/ue2;

    if-eqz v0, :cond_4

    move-object v0, v7

    goto :goto_1

    :cond_4
    instance-of v0, v1, Lyads/te2;

    if-eqz v0, :cond_5

    move-object v0, v6

    goto :goto_1

    :cond_5
    instance-of v0, v1, Lyads/ze2;

    if-eqz v0, :cond_6

    move-object v0, v5

    goto :goto_1

    :cond_6
    instance-of v0, v1, Lyads/ve2;

    if-eqz v0, :cond_7

    move-object v0, v4

    goto :goto_1

    :cond_7
    instance-of v0, v1, Lyads/se2;

    if-eqz v0, :cond_8

    move-object v0, v2

    goto :goto_1

    :cond_8
    invoke-static {}, Lme0;->e()V

    return-object v3

    :cond_9
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :cond_a
    move-object v2, p2

    goto/16 :goto_a

    :sswitch_0
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v0, Lyads/we2;

    iget-object p0, p0, Lyads/qe2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->C9:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/lm3;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lyads/af2;->a()Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    :cond_b
    move-object v1, v3

    :goto_2
    check-cast v1, Lyads/om3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lyads/ys4;->d()Z

    move-result v8

    invoke-static {p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v4

    new-instance p0, Lyads/om3;

    sget-object v7, Lyads/w36;->b:Lyads/s36;

    if-eqz v1, :cond_c

    iget-object v3, v1, Lyads/om3;->a:Lyads/zw2;

    :cond_c
    move-object v9, v3

    sget-object v10, Lyads/bt4;->e:Lnl3;

    sget-object v11, Lyads/uq3;->a:Lyads/l66;

    const-string v6, "value"

    move-object v5, p2

    invoke-static/range {v4 .. v11}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object p1

    invoke-direct {p0, p1}, Lyads/om3;-><init>(Lyads/zw2;)V

    invoke-direct {v0, p0}, Lyads/we2;-><init>(Lyads/om3;)V

    return-object v0

    :sswitch_1
    move-object v2, p2

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c

    new-instance p2, Lyads/ue2;

    iget-object p0, p0, Lyads/qe2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->n:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/q30;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lyads/af2;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :cond_d
    move-object v0, v3

    :goto_3
    check-cast v0, Lyads/s30;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lyads/ys4;->d()Z

    move-result v5

    invoke-static {p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v1

    new-instance p0, Lyads/s30;

    sget-object v4, Lyads/w36;->f:Lyads/p36;

    if-eqz v0, :cond_e

    iget-object v3, v0, Lyads/s30;->a:Lyads/zw2;

    :cond_e
    move-object v6, v3

    sget-object v7, Lyads/bt4;->a:Lnl3;

    sget-object v8, Lyads/uq3;->a:Lyads/l66;

    const-string v3, "value"

    invoke-static/range {v1 .. v8}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object p1

    invoke-direct {p0, p1}, Lyads/s30;-><init>(Lyads/zw2;)V

    invoke-direct {p2, p0}, Lyads/ue2;-><init>(Lyads/s30;)V

    return-object p2

    :sswitch_2
    move-object v5, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    new-instance p2, Lyads/se2;

    iget-object p0, p0, Lyads/qe2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->b:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/gj;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lyads/af2;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    :cond_f
    move-object v0, v3

    :goto_4
    check-cast v0, Lyads/ij;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, v5

    invoke-interface {p1}, Lyads/ys4;->d()Z

    move-result v5

    invoke-static {p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v1

    new-instance p0, Lyads/ij;

    sget-object v4, Lyads/w36;->g:Lyads/t36;

    if-eqz v0, :cond_10

    iget-object v3, v0, Lyads/ij;->a:Lyads/zw2;

    :cond_10
    move-object v6, v3

    const-string v3, "value"

    invoke-static/range {v1 .. v6}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;)Lyads/zw2;

    move-result-object p1

    invoke-direct {p0, p1}, Lyads/ij;-><init>(Lyads/zw2;)V

    invoke-direct {p2, p0}, Lyads/se2;-><init>(Lyads/ij;)V

    return-object p2

    :cond_11
    move-object v2, v5

    goto/16 :goto_a

    :sswitch_3
    move-object v2, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c

    new-instance p2, Lyads/te2;

    iget-object p0, p0, Lyads/qe2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->h:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/mu;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lyads/af2;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    :cond_12
    move-object v0, v3

    :goto_5
    check-cast v0, Lyads/ou;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lyads/ys4;->d()Z

    move-result v5

    invoke-static {p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v1

    new-instance p0, Lyads/ou;

    sget-object v4, Lyads/w36;->a:Lyads/o36;

    if-eqz v0, :cond_13

    iget-object v3, v0, Lyads/ou;->a:Lyads/zw2;

    :cond_13
    move-object v6, v3

    sget-object v7, Lyads/bt4;->c:Lnl3;

    sget-object v8, Lyads/uq3;->a:Lyads/l66;

    const-string v3, "value"

    invoke-static/range {v1 .. v8}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object p1

    invoke-direct {p0, p1}, Lyads/ou;-><init>(Lyads/zw2;)V

    invoke-direct {p2, p0}, Lyads/te2;-><init>(Lyads/ou;)V

    return-object p2

    :sswitch_4
    move-object v2, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c

    new-instance p2, Lyads/ve2;

    iget-object p0, p0, Lyads/qe2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->z:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/zo0;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lyads/af2;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_6

    :cond_14
    move-object v0, v3

    :goto_6
    check-cast v0, Lyads/bp0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lyads/ys4;->d()Z

    move-result v5

    invoke-static {p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v1

    new-instance p0, Lyads/bp0;

    sget-object v4, Lyads/w36;->h:Lyads/q36;

    if-eqz v0, :cond_15

    iget-object v3, v0, Lyads/bp0;->a:Lyads/zw2;

    :cond_15
    move-object v6, v3

    const-string v3, "value"

    invoke-static/range {v1 .. v6}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;)Lyads/zw2;

    move-result-object p1

    invoke-direct {p0, p1}, Lyads/bp0;-><init>(Lyads/zw2;)V

    invoke-direct {p2, p0}, Lyads/ve2;-><init>(Lyads/bp0;)V

    return-object p2

    :sswitch_5
    move-object v2, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c

    new-instance p2, Lyads/ze2;

    iget-object p0, p0, Lyads/qe2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->da:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/h56;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lyads/af2;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_7

    :cond_16
    move-object v0, v3

    :goto_7
    check-cast v0, Lyads/j56;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lyads/ys4;->d()Z

    move-result v5

    invoke-static {p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v1

    new-instance p0, Lyads/j56;

    sget-object v4, Lyads/w36;->e:Lyads/v36;

    if-eqz v0, :cond_17

    iget-object v3, v0, Lyads/j56;->a:Lyads/zw2;

    :cond_17
    move-object v6, v3

    sget-object v7, Lyads/bt4;->b:Lnl3;

    sget-object v8, Lyads/uq3;->a:Lyads/l66;

    const-string v3, "value"

    invoke-static/range {v1 .. v8}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object p1

    invoke-direct {p0, p1}, Lyads/j56;-><init>(Lyads/zw2;)V

    invoke-direct {p2, p0}, Lyads/ze2;-><init>(Lyads/j56;)V

    return-object p2

    :sswitch_6
    move-object v2, p2

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c

    new-instance p2, Lyads/ye2;

    iget-object p0, p0, Lyads/qe2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->X9:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/rr5;

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lyads/af2;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_8

    :cond_18
    move-object v0, v3

    :goto_8
    check-cast v0, Lyads/tr5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lyads/ys4;->d()Z

    move-result v5

    invoke-static {p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v1

    new-instance p0, Lyads/tr5;

    sget-object v4, Lyads/w36;->c:Lyads/u36;

    if-eqz v0, :cond_19

    iget-object v3, v0, Lyads/tr5;->a:Lyads/zw2;

    :cond_19
    move-object v6, v3

    const-string v3, "value"

    invoke-static/range {v1 .. v6}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;)Lyads/zw2;

    move-result-object p1

    invoke-direct {p0, p1}, Lyads/tr5;-><init>(Lyads/zw2;)V

    invoke-direct {p2, p0}, Lyads/ye2;-><init>(Lyads/tr5;)V

    return-object p2

    :sswitch_7
    move-object v2, p2

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c

    new-instance p2, Lyads/xe2;

    iget-object p0, p0, Lyads/qe2;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->I9:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/to4;

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lyads/af2;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    :cond_1a
    move-object v0, v3

    :goto_9
    check-cast v0, Lyads/xo4;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lyads/ys4;->d()Z

    move-result v5

    invoke-static {p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v1

    new-instance p0, Lyads/xo4;

    sget-object v4, Lyads/w36;->d:Lyads/r36;

    if-eqz v0, :cond_1b

    iget-object v3, v0, Lyads/xo4;->a:Lyads/zw2;

    :cond_1b
    move-object v6, v3

    sget-object v7, Lyads/bt4;->d:Lnl3;

    sget-object v8, Lyads/uq3;->a:Lyads/l66;

    const-string v3, "value"

    invoke-static/range {v1 .. v8}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object p1

    invoke-direct {p0, p1}, Lyads/xo4;-><init>(Lyads/zw2;)V

    invoke-direct {p2, p0}, Lyads/xe2;-><init>(Lyads/xo4;)V

    return-object p2

    :cond_1c
    :goto_a
    const-string p0, "type"

    invoke-static {v2, p0, v0}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object p0

    throw p0

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
