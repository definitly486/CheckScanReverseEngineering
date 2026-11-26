.class public final Lyads/iy1;
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

    iput-object p1, p0, Lyads/iy1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/ly1;Lorg/json/JSONObject;)Lyads/ly1;
    .locals 10

    invoke-interface {p1}, Lyads/ys4;->d()Z

    move-result v3

    invoke-static {p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v0

    new-instance p1, Lyads/ly1;

    move v4, v3

    sget-object v3, Lyads/w36;->f:Lyads/p36;

    const/4 v8, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p2, Lyads/ly1;->a:Lyads/zw2;

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, v8

    :goto_0
    sget-object v6, Lyads/bt4;->a:Lnl3;

    sget-object v7, Lyads/uq3;->a:Lyads/l66;

    const-string v2, "background_color"

    move-object v1, p3

    invoke-static/range {v0 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object p3

    move v3, v4

    if-eqz p2, :cond_1

    iget-object v2, p2, Lyads/ly1;->b:Lyads/zw2;

    move-object v4, v2

    goto :goto_1

    :cond_1
    move-object v4, v8

    :goto_1
    iget-object v2, p0, Lyads/iy1;->a:Lyads/tq3;

    iget-object v5, v2, Lyads/tq3;->w3:Lcl4;

    const-string v2, "corner_radius"

    invoke-static/range {v0 .. v5}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v6

    if-eqz p2, :cond_2

    iget-object v2, p2, Lyads/ly1;->c:Lyads/zw2;

    move-object v4, v2

    goto :goto_2

    :cond_2
    move-object v4, v8

    :goto_2
    iget-object v2, p0, Lyads/iy1;->a:Lyads/tq3;

    iget-object v5, v2, Lyads/tq3;->w3:Lcl4;

    const-string v2, "item_height"

    invoke-static/range {v0 .. v5}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v7

    if-eqz p2, :cond_3

    iget-object v2, p2, Lyads/ly1;->d:Lyads/zw2;

    move-object v4, v2

    goto :goto_3

    :cond_3
    move-object v4, v8

    :goto_3
    iget-object v2, p0, Lyads/iy1;->a:Lyads/tq3;

    iget-object v5, v2, Lyads/tq3;->w3:Lcl4;

    const-string v2, "item_width"

    invoke-static/range {v0 .. v5}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v9

    if-eqz p2, :cond_4

    iget-object v8, p2, Lyads/ly1;->e:Lyads/zw2;

    :cond_4
    move-object v4, v8

    iget-object p0, p0, Lyads/iy1;->a:Lyads/tq3;

    iget-object v5, p0, Lyads/tq3;->E7:Lcl4;

    const-string v2, "stroke"

    invoke-static/range {v0 .. v5}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object p0

    move-object v4, p1

    move-object v5, p3

    move-object v8, v9

    move-object v9, p0

    invoke-direct/range {v4 .. v9}, Lyads/ly1;-><init>(Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;)V

    return-object v4
.end method

.method public final bridge synthetic a(Lyads/ys4;Lorg/json/JSONObject;)Lyads/xq3;
    .locals 1

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p0, p1, v0, p2}, Lyads/iy1;->a(Lyads/ys4;Lyads/ly1;Lorg/json/JSONObject;)Lyads/ly1;

    move-result-object p0

    return-object p0
.end method
