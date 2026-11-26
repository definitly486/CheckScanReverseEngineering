.class public final Lyads/cg1;
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

    iput-object p1, p0, Lyads/cg1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Lyads/xq3;
    .locals 8

    invoke-interface {p1}, Lyads/ys4;->d()Z

    move-result v4

    invoke-static {p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v1

    new-instance p1, Lyads/fg1;

    const-string v2, "arguments"

    iget-object p0, p0, Lyads/cg1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->F3:Lcl4;

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v1, p2, v2, p0}, Lyads/wq3;->b(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Lyads/yw2;

    invoke-direct {v0, p0, v4}, Lyads/yw2;-><init>(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Lyads/ft4; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    iget-object v0, p0, Lyads/ft4;->b:Lyads/ht4;

    sget-object v5, Lyads/ht4;->c:Lyads/ht4;

    if-ne v0, v5, :cond_1

    invoke-static {v1, p2, v2}, Lyads/pq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Lyads/pq3;->a(ZLjava/lang/String;Lyads/zw2;)Lyads/zw2;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    const-string p0, "body"

    invoke-static {v1, p2, p0, v4, v3}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;)Lyads/zw2;

    move-result-object p0

    sget-object v7, Lyads/eg1;->a:Lyads/l66;

    sget-object v6, Lyads/uq3;->b:Lnl3;

    const-string v3, "name"

    const/4 v5, 0x0

    move-object v2, p2

    invoke-static/range {v1 .. v7}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object p2

    sget-object v6, Lyads/fd1;->d:Lnl3;

    sget-object v7, Lyads/uq3;->a:Lyads/l66;

    const-string v3, "return_type"

    invoke-static/range {v1 .. v7}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v1

    invoke-direct {p1, v0, p0, p2, v1}, Lyads/fg1;-><init>(Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;)V

    return-object p1

    :cond_0
    throw p0

    :cond_1
    throw p0
.end method
