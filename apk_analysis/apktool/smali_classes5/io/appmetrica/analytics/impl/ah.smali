.class public final Lio/appmetrica/analytics/impl/ah;
.super Lio/appmetrica/analytics/impl/Ug;
.source "SourceFile"


# instance fields
.field public final b:Lio/appmetrica/analytics/impl/Go;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/i5;)V
    .locals 1

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/i5;->u()Lio/appmetrica/analytics/impl/Go;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/appmetrica/analytics/impl/ah;-><init>(Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/Go;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/Go;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/Ug;-><init>(Lio/appmetrica/analytics/impl/i5;)V

    .line 9
    iput-object p2, p0, Lio/appmetrica/analytics/impl/ah;->b:Lio/appmetrica/analytics/impl/Go;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/a6;)Z
    .locals 4

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ug;->a:Lio/appmetrica/analytics/impl/i5;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/ah;->b:Lio/appmetrica/analytics/impl/Go;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Go;->c()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object v1, p0, Lio/appmetrica/analytics/impl/ah;->b:Lio/appmetrica/analytics/impl/Go;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Go;->d()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lio/appmetrica/analytics/impl/i5;->n:Lio/appmetrica/analytics/impl/w9;

    sget-object v1, Lio/appmetrica/analytics/impl/pb;->A:Lio/appmetrica/analytics/impl/pb;

    invoke-static {p1, v1}, Lio/appmetrica/analytics/impl/a6;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/pb;)Lio/appmetrica/analytics/impl/a6;

    move-result-object p1

    iget-object v0, v0, Lio/appmetrica/analytics/impl/w9;->c:Lio/appmetrica/analytics/impl/jl;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/jl;->b(Lio/appmetrica/analytics/impl/a6;)Lio/appmetrica/analytics/impl/Tk;

    :cond_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/ah;->b:Lio/appmetrica/analytics/impl/Go;

    monitor-enter p0

    :try_start_0
    const-string p1, "first_event_done"

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Go;->a:Lio/appmetrica/analytics/impl/Ho;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Ho;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lio/appmetrica/analytics/impl/Go;->a:Lio/appmetrica/analytics/impl/Ho;

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v1, p1}, Lio/appmetrica/analytics/impl/Ho;->a(Lorg/json/JSONObject;)V

    :goto_0
    iget-object p1, p0, Lio/appmetrica/analytics/impl/Go;->a:Lio/appmetrica/analytics/impl/Ho;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/Ho;->a:Lio/appmetrica/analytics/impl/Ko;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/Ho;->a(Lio/appmetrica/analytics/impl/Ko;)V

    iget-object p1, p1, Lio/appmetrica/analytics/impl/Ho;->b:Lio/appmetrica/analytics/impl/Ko;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/Ho;->a(Lio/appmetrica/analytics/impl/Ko;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_2
    :goto_1
    return v2
.end method
