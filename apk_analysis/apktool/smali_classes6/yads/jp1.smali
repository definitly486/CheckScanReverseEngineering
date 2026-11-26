.class public final Lyads/jp1;
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

    iput-object p1, p0, Lyads/jp1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/np1;Lorg/json/JSONObject;)Lyads/np1;
    .locals 12

    invoke-interface {p1}, Lyads/ys4;->d()Z

    move-result v4

    invoke-static {p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v0

    new-instance p1, Lyads/np1;

    sget-object v3, Lyads/w36;->b:Lyads/s36;

    const/4 v8, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p2, Lyads/np1;->a:Lyads/zw2;

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, v8

    :goto_0
    sget-object v6, Lyads/bt4;->e:Lnl3;

    sget-object v7, Lyads/lp1;->b:Lyads/l66;

    const-string v2, "angle"

    move-object v1, p3

    invoke-static/range {v0 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object p3

    if-eqz p2, :cond_1

    iget-object v2, p2, Lyads/np1;->b:Lyads/zw2;

    goto :goto_1

    :cond_1
    move-object v2, v8

    :goto_1
    iget-object p0, p0, Lyads/jp1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->Q4:Lcl4;

    sget-object v3, Lyads/lp1;->d:Lyads/st3;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "color_map"

    invoke-static {v0, v1, v5, p0, v3}, Lyads/wq3;->b(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lyads/st3;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance v2, Lyads/yw2;

    invoke-direct {v2, p0, v4}, Lyads/yw2;-><init>(Ljava/lang/Object;Z)V

    :goto_2
    move-object p0, v8

    goto :goto_5

    :cond_2
    invoke-static {v0, v1, v5}, Lyads/pq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    new-instance v2, Lyads/xw2;

    invoke-direct {v2, p0, v4}, Lyads/xw2;-><init>(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    invoke-static {v2, v4}, Lyads/ax2;->a(Lyads/zw2;Z)Lyads/zw2;

    move-result-object v2

    goto :goto_2

    :cond_4
    if-eqz v4, :cond_5

    sget-object p0, Lyads/ww2;->c:Lyads/ww2;

    :goto_3
    move-object v2, p0

    goto :goto_4

    :cond_5
    sget-object p0, Lyads/vw2;->c:Lyads/vw2;

    goto :goto_3

    :goto_4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :goto_5
    sget-object v8, Lyads/w36;->f:Lyads/p36;

    if-eqz p2, :cond_6

    iget-object p0, p2, Lyads/np1;->c:Lyads/zw2;

    :cond_6
    sget-object v9, Lyads/bt4;->a:Lnl3;

    sget-object v10, Lyads/lp1;->c:Lyads/st3;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Lyads/uq3;->a:Lyads/l66;

    const-string v7, "colors"

    move-object v5, v0

    move-object v6, v1

    invoke-static/range {v5 .. v11}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/p36;Lnl3;Lyads/st3;Lyads/l66;)Lyads/ds2;

    move-result-object p2

    if-eqz p2, :cond_7

    new-instance p0, Lyads/yw2;

    invoke-direct {p0, p2, v4}, Lyads/yw2;-><init>(Ljava/lang/Object;Z)V

    goto :goto_7

    :cond_7
    invoke-static {v0, v1, v7}, Lyads/pq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8

    new-instance p0, Lyads/xw2;

    invoke-direct {p0, p2, v4}, Lyads/xw2;-><init>(Ljava/lang/String;Z)V

    goto :goto_7

    :cond_8
    if-eqz p0, :cond_9

    invoke-static {p0, v4}, Lyads/ax2;->a(Lyads/zw2;Z)Lyads/zw2;

    move-result-object p0

    goto :goto_7

    :cond_9
    if-eqz v4, :cond_a

    sget-object p0, Lyads/ww2;->c:Lyads/ww2;

    goto :goto_6

    :cond_a
    sget-object p0, Lyads/vw2;->c:Lyads/vw2;

    :goto_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_7
    invoke-direct {p1, p3, v2, p0}, Lyads/np1;-><init>(Lyads/zw2;Lyads/zw2;Lyads/zw2;)V

    return-object p1
.end method

.method public final bridge synthetic a(Lyads/ys4;Lorg/json/JSONObject;)Lyads/xq3;
    .locals 1

    const/4 v0, 0x0

    .line 157
    invoke-virtual {p0, p1, v0, p2}, Lyads/jp1;->a(Lyads/ys4;Lyads/np1;Lorg/json/JSONObject;)Lyads/np1;

    move-result-object p0

    return-object p0
.end method
