.class public final Lyads/ag2;
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

    iput-object p1, p0, Lyads/ag2;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v1}, Lyads/wq3;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lyads/ys4;->b()Lyads/pv5;

    move-result-object v3

    invoke-interface {v3, v2}, Lyads/pv5;->get(Ljava/lang/String;)Lyads/xq3;

    move-result-object v3

    instance-of v4, v3, Lyads/lg2;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    check-cast v3, Lyads/lg2;

    goto :goto_0

    :cond_0
    move-object v3, v5

    :goto_0
    const-string v4, "property"

    const-string v6, "array"

    const-string v7, "dict"

    const-string v8, "url"

    const-string v9, "color"

    const-string v10, "boolean"

    const-string v11, "integer"

    const-string v12, "number"

    const-string v13, "string"

    if-eqz v3, :cond_a

    instance-of v2, v3, Lyads/jg2;

    if-eqz v2, :cond_1

    move-object v2, v13

    goto :goto_1

    :cond_1
    instance-of v2, v3, Lyads/hg2;

    if-eqz v2, :cond_2

    move-object v2, v12

    goto :goto_1

    :cond_2
    instance-of v2, v3, Lyads/gg2;

    if-eqz v2, :cond_3

    move-object v2, v11

    goto :goto_1

    :cond_3
    instance-of v2, v3, Lyads/dg2;

    if-eqz v2, :cond_4

    move-object v2, v10

    goto :goto_1

    :cond_4
    instance-of v2, v3, Lyads/eg2;

    if-eqz v2, :cond_5

    move-object v2, v9

    goto :goto_1

    :cond_5
    instance-of v2, v3, Lyads/kg2;

    if-eqz v2, :cond_6

    move-object v2, v8

    goto :goto_1

    :cond_6
    instance-of v2, v3, Lyads/fg2;

    if-eqz v2, :cond_7

    move-object v2, v7

    goto :goto_1

    :cond_7
    instance-of v2, v3, Lyads/cg2;

    if-eqz v2, :cond_8

    move-object v2, v6

    goto :goto_1

    :cond_8
    instance-of v2, v3, Lyads/ig2;

    if-eqz v2, :cond_9

    move-object v2, v4

    goto :goto_1

    :cond_9
    invoke-static {}, Lme0;->e()V

    return-object v5

    :cond_a
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v14

    const-string v15, "name"

    sparse-switch v14, :sswitch_data_0

    goto/16 :goto_12

    :sswitch_0
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    new-instance v8, Lyads/gg2;

    iget-object v0, v0, Lyads/ag2;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->F9:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/rm3;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lyads/lg2;->a()Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    :cond_b
    move-object v2, v5

    :goto_2
    check-cast v2, Lyads/tm3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface/range {p1 .. p1}, Lyads/ys4;->d()Z

    move-result v4

    invoke-static/range {p1 .. p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v0

    new-instance v9, Lyads/tm3;

    if-eqz v2, :cond_c

    iget-object v3, v2, Lyads/tm3;->a:Lyads/zw2;

    goto :goto_3

    :cond_c
    move-object v3, v5

    :goto_3
    invoke-static {v0, v1, v15, v4, v3}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;)Lyads/zw2;

    move-result-object v10

    sget-object v3, Lyads/w36;->b:Lyads/s36;

    if-eqz v2, :cond_d

    iget-object v5, v2, Lyads/tm3;->b:Lyads/zw2;

    :cond_d
    sget-object v6, Lyads/bt4;->e:Lnl3;

    sget-object v7, Lyads/uq3;->a:Lyads/l66;

    const-string v2, "value"

    invoke-static/range {v0 .. v7}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v0

    invoke-direct {v9, v10, v0}, Lyads/tm3;-><init>(Lyads/zw2;Lyads/zw2;)V

    invoke-direct {v8, v9}, Lyads/gg2;-><init>(Lyads/tm3;)V

    return-object v8

    :sswitch_1
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    new-instance v8, Lyads/eg2;

    iget-object v0, v0, Lyads/ag2;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->q:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/v30;

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lyads/lg2;->a()Ljava/lang/Object;

    move-result-object v2

    goto :goto_4

    :cond_e
    move-object v2, v5

    :goto_4
    check-cast v2, Lyads/x30;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface/range {p1 .. p1}, Lyads/ys4;->d()Z

    move-result v4

    invoke-static/range {p1 .. p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v0

    new-instance v9, Lyads/x30;

    if-eqz v2, :cond_f

    iget-object v3, v2, Lyads/x30;->a:Lyads/zw2;

    goto :goto_5

    :cond_f
    move-object v3, v5

    :goto_5
    invoke-static {v0, v1, v15, v4, v3}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;)Lyads/zw2;

    move-result-object v10

    sget-object v3, Lyads/w36;->f:Lyads/p36;

    if-eqz v2, :cond_10

    iget-object v5, v2, Lyads/x30;->b:Lyads/zw2;

    :cond_10
    sget-object v6, Lyads/bt4;->a:Lnl3;

    sget-object v7, Lyads/uq3;->a:Lyads/l66;

    const-string v2, "value"

    invoke-static/range {v0 .. v7}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v0

    invoke-direct {v9, v10, v0}, Lyads/x30;-><init>(Lyads/zw2;Lyads/zw2;)V

    invoke-direct {v8, v9}, Lyads/eg2;-><init>(Lyads/x30;)V

    return-object v8

    :sswitch_2
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    new-instance v6, Lyads/cg2;

    iget-object v0, v0, Lyads/ag2;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->e:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/lj;

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Lyads/lg2;->a()Ljava/lang/Object;

    move-result-object v2

    goto :goto_6

    :cond_11
    move-object v2, v5

    :goto_6
    check-cast v2, Lyads/nj;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface/range {p1 .. p1}, Lyads/ys4;->d()Z

    move-result v4

    invoke-static/range {p1 .. p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v0

    new-instance v7, Lyads/nj;

    if-eqz v2, :cond_12

    iget-object v3, v2, Lyads/nj;->a:Lyads/zw2;

    goto :goto_7

    :cond_12
    move-object v3, v5

    :goto_7
    invoke-static {v0, v1, v15, v4, v3}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;)Lyads/zw2;

    move-result-object v8

    sget-object v3, Lyads/w36;->g:Lyads/t36;

    if-eqz v2, :cond_13

    iget-object v5, v2, Lyads/nj;->b:Lyads/zw2;

    :cond_13
    const-string v2, "value"

    invoke-static/range {v0 .. v5}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;)Lyads/zw2;

    move-result-object v0

    invoke-direct {v7, v8, v0}, Lyads/nj;-><init>(Lyads/zw2;Lyads/zw2;)V

    invoke-direct {v6, v7}, Lyads/cg2;-><init>(Lyads/nj;)V

    return-object v6

    :sswitch_3
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    new-instance v8, Lyads/dg2;

    iget-object v0, v0, Lyads/ag2;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->k:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/ru;

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Lyads/lg2;->a()Ljava/lang/Object;

    move-result-object v2

    goto :goto_8

    :cond_14
    move-object v2, v5

    :goto_8
    check-cast v2, Lyads/tu;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface/range {p1 .. p1}, Lyads/ys4;->d()Z

    move-result v4

    invoke-static/range {p1 .. p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v0

    new-instance v9, Lyads/tu;

    if-eqz v2, :cond_15

    iget-object v3, v2, Lyads/tu;->a:Lyads/zw2;

    goto :goto_9

    :cond_15
    move-object v3, v5

    :goto_9
    invoke-static {v0, v1, v15, v4, v3}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;)Lyads/zw2;

    move-result-object v10

    sget-object v3, Lyads/w36;->a:Lyads/o36;

    if-eqz v2, :cond_16

    iget-object v5, v2, Lyads/tu;->b:Lyads/zw2;

    :cond_16
    sget-object v6, Lyads/bt4;->c:Lnl3;

    sget-object v7, Lyads/uq3;->a:Lyads/l66;

    const-string v2, "value"

    invoke-static/range {v0 .. v7}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v0

    invoke-direct {v9, v10, v0}, Lyads/tu;-><init>(Lyads/zw2;Lyads/zw2;)V

    invoke-direct {v8, v9}, Lyads/dg2;-><init>(Lyads/tu;)V

    return-object v8

    :sswitch_4
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    new-instance v6, Lyads/fg2;

    iget-object v0, v0, Lyads/ag2;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->C:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/ep0;

    if-eqz v3, :cond_17

    invoke-virtual {v3}, Lyads/lg2;->a()Ljava/lang/Object;

    move-result-object v2

    goto :goto_a

    :cond_17
    move-object v2, v5

    :goto_a
    check-cast v2, Lyads/gp0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface/range {p1 .. p1}, Lyads/ys4;->d()Z

    move-result v4

    invoke-static/range {p1 .. p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v0

    new-instance v7, Lyads/gp0;

    if-eqz v2, :cond_18

    iget-object v3, v2, Lyads/gp0;->a:Lyads/zw2;

    goto :goto_b

    :cond_18
    move-object v3, v5

    :goto_b
    invoke-static {v0, v1, v15, v4, v3}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;)Lyads/zw2;

    move-result-object v8

    sget-object v3, Lyads/w36;->h:Lyads/q36;

    if-eqz v2, :cond_19

    iget-object v5, v2, Lyads/gp0;->b:Lyads/zw2;

    :cond_19
    const-string v2, "value"

    invoke-static/range {v0 .. v5}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;)Lyads/zw2;

    move-result-object v0

    invoke-direct {v7, v8, v0}, Lyads/gp0;-><init>(Lyads/zw2;Lyads/zw2;)V

    invoke-direct {v6, v7}, Lyads/fg2;-><init>(Lyads/gp0;)V

    return-object v6

    :sswitch_5
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    new-instance v8, Lyads/kg2;

    iget-object v0, v0, Lyads/ag2;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->ga:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/m56;

    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Lyads/lg2;->a()Ljava/lang/Object;

    move-result-object v2

    goto :goto_c

    :cond_1a
    move-object v2, v5

    :goto_c
    check-cast v2, Lyads/o56;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface/range {p1 .. p1}, Lyads/ys4;->d()Z

    move-result v4

    invoke-static/range {p1 .. p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v0

    new-instance v9, Lyads/o56;

    if-eqz v2, :cond_1b

    iget-object v3, v2, Lyads/o56;->a:Lyads/zw2;

    goto :goto_d

    :cond_1b
    move-object v3, v5

    :goto_d
    invoke-static {v0, v1, v15, v4, v3}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;)Lyads/zw2;

    move-result-object v10

    sget-object v3, Lyads/w36;->e:Lyads/v36;

    if-eqz v2, :cond_1c

    iget-object v5, v2, Lyads/o56;->b:Lyads/zw2;

    :cond_1c
    sget-object v6, Lyads/bt4;->b:Lnl3;

    sget-object v7, Lyads/uq3;->a:Lyads/l66;

    const-string v2, "value"

    invoke-static/range {v0 .. v7}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v0

    invoke-direct {v9, v10, v0}, Lyads/o56;-><init>(Lyads/zw2;Lyads/zw2;)V

    invoke-direct {v8, v9}, Lyads/kg2;-><init>(Lyads/o56;)V

    return-object v8

    :sswitch_6
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    new-instance v6, Lyads/jg2;

    iget-object v0, v0, Lyads/ag2;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->aa:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/wr5;

    if-eqz v3, :cond_1d

    invoke-virtual {v3}, Lyads/lg2;->a()Ljava/lang/Object;

    move-result-object v2

    goto :goto_e

    :cond_1d
    move-object v2, v5

    :goto_e
    check-cast v2, Lyads/yr5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface/range {p1 .. p1}, Lyads/ys4;->d()Z

    move-result v4

    invoke-static/range {p1 .. p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v0

    new-instance v7, Lyads/yr5;

    if-eqz v2, :cond_1e

    iget-object v3, v2, Lyads/yr5;->a:Lyads/zw2;

    goto :goto_f

    :cond_1e
    move-object v3, v5

    :goto_f
    invoke-static {v0, v1, v15, v4, v3}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;)Lyads/zw2;

    move-result-object v8

    sget-object v3, Lyads/w36;->c:Lyads/u36;

    if-eqz v2, :cond_1f

    iget-object v5, v2, Lyads/yr5;->b:Lyads/zw2;

    :cond_1f
    const-string v2, "value"

    invoke-static/range {v0 .. v5}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;)Lyads/zw2;

    move-result-object v0

    invoke-direct {v7, v8, v0}, Lyads/yr5;-><init>(Lyads/zw2;Lyads/zw2;)V

    invoke-direct {v6, v7}, Lyads/jg2;-><init>(Lyads/yr5;)V

    return-object v6

    :sswitch_7
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    new-instance v2, Lyads/ig2;

    iget-object v0, v0, Lyads/ag2;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->R9:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/h25;

    if-eqz v3, :cond_20

    invoke-virtual {v3}, Lyads/lg2;->a()Ljava/lang/Object;

    move-result-object v5

    :cond_20
    check-cast v5, Lyads/k25;

    move-object/from16 v4, p1

    invoke-virtual {v0, v4, v5, v1}, Lyads/h25;->a(Lyads/ys4;Lyads/k25;Lorg/json/JSONObject;)Lyads/k25;

    move-result-object v0

    invoke-direct {v2, v0}, Lyads/ig2;-><init>(Lyads/k25;)V

    return-object v2

    :sswitch_8
    move-object/from16 v4, p1

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    new-instance v8, Lyads/hg2;

    iget-object v0, v0, Lyads/ag2;->a:Lyads/tq3;

    iget-object v0, v0, Lyads/tq3;->L9:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/ap4;

    if-eqz v3, :cond_21

    invoke-virtual {v3}, Lyads/lg2;->a()Ljava/lang/Object;

    move-result-object v2

    goto :goto_10

    :cond_21
    move-object v2, v5

    :goto_10
    check-cast v2, Lyads/cp4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface/range {p1 .. p1}, Lyads/ys4;->d()Z

    move-result v4

    invoke-static/range {p1 .. p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v0

    new-instance v9, Lyads/cp4;

    if-eqz v2, :cond_22

    iget-object v3, v2, Lyads/cp4;->a:Lyads/zw2;

    goto :goto_11

    :cond_22
    move-object v3, v5

    :goto_11
    invoke-static {v0, v1, v15, v4, v3}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;)Lyads/zw2;

    move-result-object v10

    sget-object v3, Lyads/w36;->d:Lyads/r36;

    if-eqz v2, :cond_23

    iget-object v5, v2, Lyads/cp4;->b:Lyads/zw2;

    :cond_23
    sget-object v6, Lyads/bt4;->d:Lnl3;

    sget-object v7, Lyads/uq3;->a:Lyads/l66;

    const-string v2, "value"

    invoke-static/range {v0 .. v7}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v0

    invoke-direct {v9, v10, v0}, Lyads/cp4;-><init>(Lyads/zw2;Lyads/zw2;)V

    invoke-direct {v8, v9}, Lyads/hg2;-><init>(Lyads/cp4;)V

    return-object v8

    :cond_24
    :goto_12
    const-string v0, "type"

    invoke-static {v1, v0, v2}, Lyads/gt4;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lyads/ft4;

    move-result-object v0

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3da724b7 -> :sswitch_8
        -0x3b32222b -> :sswitch_7
        -0x352a9fef -> :sswitch_6
        0x1c56f -> :sswitch_5
        0x2f0bb6 -> :sswitch_4
        0x3db6c28 -> :sswitch_3
        0x58c7259 -> :sswitch_2
        0x5a72f63 -> :sswitch_1
        0x74b5813e -> :sswitch_0
    .end sparse-switch
.end method
