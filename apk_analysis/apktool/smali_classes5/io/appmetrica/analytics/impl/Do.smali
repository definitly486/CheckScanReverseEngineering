.class public final Lio/appmetrica/analytics/impl/Do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Co;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/N8;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/N8;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/N8;-><init>()V

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/Do;-><init>(Lio/appmetrica/analytics/impl/N8;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/N8;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Do;->a:Lio/appmetrica/analytics/impl/N8;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/Z8;Lio/appmetrica/analytics/impl/rh;)[B
    .locals 2

    iget-object v0, p2, Lio/appmetrica/analytics/impl/rh;->l:Lio/appmetrica/analytics/impl/qh;

    check-cast v0, Lio/appmetrica/analytics/impl/i5;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/i5;->B()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lio/appmetrica/analytics/impl/Z8;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p1, Lio/appmetrica/analytics/impl/Z8;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "preloadInfo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lio/appmetrica/analytics/impl/Z8;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Do;->a:Lio/appmetrica/analytics/impl/N8;

    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/impl/N8;->a(Lio/appmetrica/analytics/impl/Z8;Lio/appmetrica/analytics/impl/rh;)[B

    move-result-object p0

    return-object p0
.end method
