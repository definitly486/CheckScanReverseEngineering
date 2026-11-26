.class public final Lyads/h25;
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

    iput-object p1, p0, Lyads/h25;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/k25;Lorg/json/JSONObject;)Lyads/k25;
    .locals 11

    invoke-interface {p1}, Lyads/ys4;->d()Z

    move-result v4

    invoke-static {p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v0

    new-instance p1, Lyads/k25;

    sget-object v3, Lyads/w36;->c:Lyads/u36;

    const/4 v6, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p2, Lyads/k25;->a:Lyads/zw2;

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, v6

    :goto_0
    const-string v2, "get"

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;)Lyads/zw2;

    move-result-object p3

    if-eqz p2, :cond_1

    iget-object v2, p2, Lyads/k25;->b:Lyads/zw2;

    goto :goto_1

    :cond_1
    move-object v2, v6

    :goto_1
    const-string v3, "name"

    invoke-static {v0, v1, v3, v4, v2}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;)Lyads/zw2;

    move-result-object v8

    if-eqz p2, :cond_2

    iget-object v2, p2, Lyads/k25;->c:Lyads/zw2;

    goto :goto_2

    :cond_2
    move-object v2, v6

    :goto_2
    const-string v3, "new_value_variable_name"

    invoke-static {v0, v1, v3, v4, v2}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;)Lyads/zw2;

    move-result-object v9

    if-eqz p2, :cond_3

    iget-object v2, p2, Lyads/k25;->d:Lyads/zw2;

    goto :goto_3

    :cond_3
    move-object v2, v6

    :goto_3
    iget-object p0, p0, Lyads/h25;->a:Lyads/tq3;

    iget-object v5, p0, Lyads/tq3;->l1:Lcl4;

    move v3, v4

    move-object v4, v2

    const-string v2, "set"

    invoke-static/range {v0 .. v5}, Lyads/pq3;->c(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object p0

    move v4, v3

    sget-object v3, Lyads/j25;->a:Lyads/m36;

    if-eqz p2, :cond_4

    iget-object v6, p2, Lyads/k25;->e:Lyads/zw2;

    :cond_4
    move-object v5, v6

    sget-object v6, Lyads/fd1;->d:Lnl3;

    sget-object v7, Lyads/uq3;->a:Lyads/l66;

    const-string v2, "value_type"

    invoke-static/range {v0 .. v7}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v10

    move-object v5, p1

    move-object v6, p3

    move-object v7, v8

    move-object v8, v9

    move-object v9, p0

    invoke-direct/range {v5 .. v10}, Lyads/k25;-><init>(Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;)V

    return-object v5
.end method

.method public final bridge synthetic a(Lyads/ys4;Lorg/json/JSONObject;)Lyads/xq3;
    .locals 1

    const/4 v0, 0x0

    .line 96
    invoke-virtual {p0, p1, v0, p2}, Lyads/h25;->a(Lyads/ys4;Lyads/k25;Lorg/json/JSONObject;)Lyads/k25;

    move-result-object p0

    return-object p0
.end method
