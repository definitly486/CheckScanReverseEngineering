.class public final Lyads/kb2;
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

    iput-object p1, p0, Lyads/kb2;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Lyads/xq3;
    .locals 11

    invoke-interface {p1}, Lyads/ys4;->d()Z

    move-result v3

    invoke-static {p1}, Lyads/zs4;->b(Lyads/ys4;)Lyads/tr4;

    move-result-object v0

    new-instance p1, Lyads/nb2;

    move v4, v3

    sget-object v3, Lyads/w36;->b:Lyads/s36;

    sget-object v6, Lyads/bt4;->e:Lnl3;

    sget-object v7, Lyads/mb2;->b:Lyads/l66;

    const-string v2, "duration"

    const/4 v5, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object p2

    move-object v7, v6

    move-object v6, v3

    iget-object v2, p0, Lyads/kb2;->a:Lyads/tq3;

    iget-object v5, v2, Lyads/tq3;->l1:Lcl4;

    const-string v2, "end_actions"

    move v3, v4

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lyads/pq3;->c(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object v8

    move v4, v3

    const-string v2, "id"

    const/4 v9, 0x0

    invoke-static {v0, v1, v2, v4, v9}, Lyads/pq3;->a(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;)Lyads/zw2;

    move-result-object v10

    iget-object p0, p0, Lyads/kb2;->a:Lyads/tq3;

    iget-object v5, p0, Lyads/tq3;->l1:Lcl4;

    const-string v2, "tick_actions"

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lyads/pq3;->c(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;Lcl4;)Lyads/zw2;

    move-result-object p0

    move v4, v3

    const/4 v5, 0x0

    move-object v3, v6

    move-object v6, v7

    sget-object v7, Lyads/mb2;->c:Lyads/l66;

    const-string v2, "tick_interval"

    invoke-static/range {v0 .. v7}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;ZLyads/zw2;Lnl3;Lyads/l66;)Lyads/zw2;

    move-result-object v2

    const-string v3, "value_variable"

    invoke-static {v0, v1, v3, v4, v9}, Lyads/pq3;->b(Lyads/tr4;Lorg/json/JSONObject;Ljava/lang/String;ZLyads/zw2;)Lyads/zw2;

    move-result-object v0

    move-object v4, p1

    move-object v5, p2

    move-object v9, v2

    move-object v6, v8

    move-object v7, v10

    move-object v8, p0

    move-object v10, v0

    invoke-direct/range {v4 .. v10}, Lyads/nb2;-><init>(Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;Lyads/zw2;)V

    return-object v4
.end method
