.class public final Lyads/qt2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/zu3;

.field public final b:Lyads/ot2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "FalseClickDataStorage"

    invoke-static {p1, v0}, Lyads/bv3;->a(Landroid/content/Context;Ljava/lang/String;)Lyads/zu3;

    move-result-object p1

    new-instance v0, Lyads/ot2;

    invoke-direct {v0}, Lyads/ot2;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/qt2;->a:Lyads/zu3;

    iput-object v0, p0, Lyads/qt2;->b:Lyads/ot2;

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0

    .line 132
    iget-object p0, p0, Lyads/qt2;->a:Lyads/zu3;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    check-cast p0, Lyads/av3;

    invoke-virtual {p0, p1}, Lyads/av3;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lyads/nt2;)V
    .locals 8

    iget-wide v0, p1, Lyads/nt2;->b:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lyads/qt2;->b:Lyads/ot2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v2, p1, Lyads/nt2;->a:Lyads/n70;

    iget-object v2, v2, Lyads/n70;->b:Ljava/lang/String;

    const-string v3, "ad_type"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "start_time"

    iget-wide v3, p1, Lyads/nt2;->b:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v2, p1, Lyads/nt2;->c:Lyads/q1;

    iget-object v2, v2, Lyads/q1;->b:Ljava/lang/String;

    const-string v3, "type"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p1, Lyads/nt2;->d:Lyads/mt2;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "interval"

    iget-wide v6, v2, Lyads/mt2;->c:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "url"

    iget-object v2, v2, Lyads/mt2;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    const-string v4, "false_click"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    iget-object v4, p1, Lyads/nt2;->e:Ljava/util/Map;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v4, "report_data"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p1, Lyads/nt2;->f:Lyads/c;

    if-eqz p1, :cond_1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "experiments"

    iget-object v4, p1, Lyads/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "test_ids"

    iget-object p1, p1, Lyads/c;->b:Ljava/util/Set;

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    const-string p1, "ab_experiments"

    invoke-virtual {v1, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lyads/qt2;->a:Lyads/zu3;

    check-cast p0, Lyads/av3;

    invoke-virtual {p0, v0, p1}, Lyads/av3;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
