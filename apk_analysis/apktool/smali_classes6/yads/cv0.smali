.class public final Lyads/cv0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/kv5;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lyads/ys4;Lyads/fv0;Lorg/json/JSONObject;)Lyads/fv0;
    .locals 12

    invoke-interface {p0}, Lyads/ys4;->d()Z

    move-result v4

    invoke-static {p0}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v0

    new-instance p0, Lyads/fv0;

    sget-object v3, Lyads/w36;->a:Lyads/o36;

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lyads/fv0;->a:Lyads/zw2;

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, v8

    :goto_0
    sget-object v6, Lyads/bt4;->c:Lnl3;

    sget-object v7, Lyads/uq3;->a:Lyads/l66;

    const-string v2, "animated"

    move-object v1, p2

    invoke-static/range {v0 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object p2

    sget-object v3, Lyads/w36;->c:Lyads/u36;

    if-eqz p1, :cond_1

    iget-object v2, p1, Lyads/fv0;->b:Lyads/zw2;

    move-object v5, v2

    goto :goto_1

    :cond_1
    move-object v5, v8

    :goto_1
    const-string v2, "id"

    invoke-static/range {v0 .. v5}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;)Lyads/zw2;

    move-result-object v9

    sget-object v3, Lyads/w36;->b:Lyads/s36;

    if-eqz p1, :cond_2

    iget-object v2, p1, Lyads/fv0;->c:Lyads/zw2;

    move-object v5, v2

    goto :goto_2

    :cond_2
    move-object v5, v8

    :goto_2
    sget-object v6, Lyads/bt4;->e:Lnl3;

    const-string v2, "item_count"

    invoke-static/range {v0 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v10

    if-eqz p1, :cond_3

    iget-object v2, p1, Lyads/fv0;->d:Lyads/zw2;

    move-object v5, v2

    goto :goto_3

    :cond_3
    move-object v5, v8

    :goto_3
    const-string v2, "offset"

    invoke-static/range {v0 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v11

    sget-object v3, Lyads/ev0;->e:Lyads/m36;

    if-eqz p1, :cond_4

    iget-object v8, p1, Lyads/fv0;->e:Lyads/zw2;

    :cond_4
    move-object v5, v8

    sget-object v6, Lyads/zu0;->d:Lnl3;

    const-string v2, "overflow"

    invoke-static/range {v0 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object p1

    move-object v5, p0

    move-object v6, p2

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object v10, p1

    invoke-direct/range {v5 .. v10}, Lyads/fv0;-><init>(Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;)V

    return-object v5
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lorg/json/JSONObject;)Lyads/xq3;
    .locals 0

    const/4 p0, 0x0

    .line 101
    invoke-static {p1, p0, p2}, Lyads/cv0;->a(Lyads/ys4;Lyads/fv0;Lorg/json/JSONObject;)Lyads/fv0;

    move-result-object p0

    return-object p0
.end method
