.class public final Lyads/bx1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/kv5;


# instance fields
.field public final a:Lyads/tq3;


# direct methods
.method public constructor <init>(Lyads/tq3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/bx1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/by1;Lorg/json/JSONObject;)Lyads/by1;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface/range {p1 .. p1}, Lyads/ys4;->d()Z

    move-result v5

    invoke-static/range {p1 .. p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v2

    new-instance v9, Lyads/by1;

    const/4 v10, 0x0

    if-eqz v1, :cond_0

    iget-object v3, v1, Lyads/by1;->a:Lyads/zw2;

    move-object v6, v3

    goto :goto_0

    :cond_0
    move-object v6, v10

    :goto_0
    iget-object v3, v0, Lyads/bx1;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->V5:Lcl4;

    const-string v4, "center_x"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v11

    if-eqz v1, :cond_1

    iget-object v3, v1, Lyads/by1;->b:Lyads/zw2;

    move-object v6, v3

    goto :goto_1

    :cond_1
    move-object v6, v10

    :goto_1
    iget-object v3, v0, Lyads/bx1;->a:Lyads/tq3;

    iget-object v7, v3, Lyads/tq3;->V5:Lcl4;

    const-string v4, "center_y"

    move-object/from16 v3, p3

    invoke-static/range {v2 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v12

    move v13, v5

    if-eqz v1, :cond_2

    iget-object v4, v1, Lyads/by1;->c:Lyads/zw2;

    goto :goto_2

    :cond_2
    move-object v4, v10

    :goto_2
    iget-object v5, v0, Lyads/bx1;->a:Lyads/tq3;

    iget-object v5, v5, Lyads/tq3;->n6:Lcl4;

    sget-object v6, Lyads/dx1;->e:Lyads/st3;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "color_map"

    invoke-static {v2, v3, v7, v5, v6}, Lyads/wq3;->b(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lyads/st3;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3

    new-instance v4, Lyads/yw2;

    invoke-direct {v4, v5, v13}, Lyads/yw2;-><init>(Ljava/lang/Object;Z)V

    :goto_3
    move-object v14, v4

    goto :goto_5

    :cond_3
    invoke-static {v2, v3, v7}, Lyads/pq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    new-instance v4, Lyads/xw2;

    invoke-direct {v4, v5, v13}, Lyads/xw2;-><init>(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_4
    if-eqz v4, :cond_5

    invoke-static {v4, v13}, Lyads/ax2;->a(Lyads/zw2;Z)Lyads/zw2;

    move-result-object v4

    goto :goto_3

    :cond_5
    if-eqz v13, :cond_6

    sget-object v4, Lyads/ww2;->c:Lyads/ww2;

    goto :goto_4

    :cond_6
    sget-object v4, Lyads/vw2;->c:Lyads/vw2;

    :goto_4
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_3

    :goto_5
    sget-object v5, Lyads/w36;->f:Lyads/p36;

    if-eqz v1, :cond_7

    iget-object v4, v1, Lyads/by1;->d:Lyads/zw2;

    move-object v15, v4

    goto :goto_6

    :cond_7
    move-object v15, v10

    :goto_6
    sget-object v6, Lyads/bt4;->a:Lnl3;

    sget-object v7, Lyads/dx1;->d:Lyads/st3;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lyads/uq3;->a:Lyads/l66;

    const-string v4, "colors"

    invoke-static/range {v2 .. v8}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/p36;Lnl3;Lyads/st3;Lyads/l66;)Lyads/ds2;

    move-result-object v5

    if-eqz v5, :cond_8

    new-instance v4, Lyads/yw2;

    invoke-direct {v4, v5, v13}, Lyads/yw2;-><init>(Ljava/lang/Object;Z)V

    :goto_7
    move-object v6, v4

    goto :goto_9

    :cond_8
    invoke-static {v2, v3, v4}, Lyads/pq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    new-instance v5, Lyads/xw2;

    invoke-direct {v5, v4, v13}, Lyads/xw2;-><init>(Ljava/lang/String;Z)V

    move-object v6, v5

    goto :goto_9

    :cond_9
    if-eqz v15, :cond_a

    invoke-static {v15, v13}, Lyads/ax2;->a(Lyads/zw2;Z)Lyads/zw2;

    move-result-object v4

    goto :goto_7

    :cond_a
    if-eqz v13, :cond_b

    sget-object v4, Lyads/ww2;->c:Lyads/ww2;

    goto :goto_8

    :cond_b
    sget-object v4, Lyads/vw2;->c:Lyads/vw2;

    :goto_8
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_7

    :goto_9
    if-eqz v1, :cond_c

    iget-object v10, v1, Lyads/by1;->e:Lyads/zw2;

    :cond_c
    move-object v4, v10

    iget-object v0, v0, Lyads/bx1;->a:Lyads/tq3;

    iget-object v5, v0, Lyads/tq3;->b6:Lcl4;

    move-object v0, v2

    const-string v2, "radius"

    move-object v1, v3

    move v3, v13

    invoke-static/range {v0 .. v5}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v0

    move-object v10, v6

    move-object v6, v9

    move-object v7, v11

    move-object v8, v12

    move-object v9, v14

    move-object v11, v0

    invoke-direct/range {v6 .. v11}, Lyads/by1;-><init>(Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;)V

    return-object v6
.end method

.method public final bridge synthetic a(Lyads/ys4;Lorg/json/JSONObject;)Lyads/xq3;
    .locals 1

    const/4 v0, 0x0

    .line 206
    invoke-virtual {p0, p1, v0, p2}, Lyads/bx1;->a(Lyads/ys4;Lyads/by1;Lorg/json/JSONObject;)Lyads/by1;

    move-result-object p0

    return-object p0
.end method
