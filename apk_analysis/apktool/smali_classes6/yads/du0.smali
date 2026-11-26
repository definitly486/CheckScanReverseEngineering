.class public final Lyads/du0;
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

    iput-object p1, p0, Lyads/du0;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/fu0;Lorg/json/JSONObject;)Lyads/fu0;
    .locals 8

    invoke-interface {p1}, Lyads/ys4;->d()Z

    move-result v3

    invoke-static {p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v0

    new-instance p1, Lyads/fu0;

    const/4 v6, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p2, Lyads/fu0;->a:Lyads/zw2;

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, v6

    :goto_0
    iget-object v1, p0, Lyads/du0;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->l1:Lcl4;

    const-string v2, "on_fail_actions"

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lyads/pq3;->c(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object p3

    if-eqz p2, :cond_1

    iget-object v2, p2, Lyads/fu0;->b:Lyads/zw2;

    move-object v4, v2

    goto :goto_1

    :cond_1
    move-object v4, v6

    :goto_1
    iget-object p0, p0, Lyads/du0;->a:Lyads/tq3;

    iget-object v5, p0, Lyads/tq3;->l1:Lcl4;

    const-string v2, "on_success_actions"

    invoke-static/range {v0 .. v5}, Lyads/pq3;->c(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object p0

    sget-object v2, Lyads/w36;->e:Lyads/v36;

    if-eqz p2, :cond_2

    iget-object v6, p2, Lyads/fu0;->c:Lyads/zw2;

    :cond_2
    move-object v5, v6

    sget-object v6, Lyads/bt4;->b:Lnl3;

    sget-object v7, Lyads/uq3;->a:Lyads/l66;

    move v4, v3

    move-object v3, v2

    const-string v2, "url"

    invoke-static/range {v0 .. v7}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object p2

    invoke-direct {p1, p3, p0, p2}, Lyads/fu0;-><init>(Lyads/zw2;Lyads/zw2;Lyads/zw2;)V

    return-object p1
.end method

.method public final bridge synthetic a(Lyads/ys4;Lorg/json/JSONObject;)Lyads/xq3;
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0, p1, v0, p2}, Lyads/du0;->a(Lyads/ys4;Lyads/fu0;Lorg/json/JSONObject;)Lyads/fu0;

    move-result-object p0

    return-object p0
.end method
