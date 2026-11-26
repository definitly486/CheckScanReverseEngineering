.class public final Lio/appmetrica/analytics/impl/Om;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/networktasks/internal/UnderlyingNetworkTask;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Qm;

.field public b:Lio/appmetrica/analytics/impl/tm;

.field public c:Lio/appmetrica/analytics/impl/Zl;

.field public final d:Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;

.field public final e:Lio/appmetrica/analytics/networktasks/internal/ConfigProvider;

.field public final f:Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;

.field public final g:Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;

.field public final h:Lio/appmetrica/analytics/impl/hm;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Qm;Lio/appmetrica/analytics/impl/hm;Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;Lio/appmetrica/analytics/networktasks/internal/ConfigProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Om;->a:Lio/appmetrica/analytics/impl/Qm;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Om;->h:Lio/appmetrica/analytics/impl/hm;

    iput-object p4, p0, Lio/appmetrica/analytics/impl/Om;->d:Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;

    iput-object p5, p0, Lio/appmetrica/analytics/impl/Om;->f:Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;

    iput-object p6, p0, Lio/appmetrica/analytics/impl/Om;->e:Lio/appmetrica/analytics/networktasks/internal/ConfigProvider;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/Om;->g:Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;

    invoke-interface {p6}, Lio/appmetrica/analytics/networktasks/internal/ConfigProvider;->getConfig()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/rm;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/rm;->k()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3, p0}, Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;->setHosts(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Qm;Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;Lio/appmetrica/analytics/networktasks/internal/ConfigProvider;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/Qm;",
            "Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer<",
            "Lio/appmetrica/analytics/impl/rm;",
            ">;",
            "Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;",
            "Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;",
            "Lio/appmetrica/analytics/networktasks/internal/ConfigProvider<",
            "Lio/appmetrica/analytics/impl/rm;",
            ">;)V"
        }
    .end annotation

    .line 29
    new-instance v2, Lio/appmetrica/analytics/impl/hm;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/hm;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lio/appmetrica/analytics/impl/Om;-><init>(Lio/appmetrica/analytics/impl/Qm;Lio/appmetrica/analytics/impl/hm;Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;Lio/appmetrica/analytics/networktasks/internal/ConfigProvider;)V

    return-void
.end method


# virtual methods
.method public final description()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Startup task for component: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Om;->a:Lio/appmetrica/analytics/impl/Qm;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Qm;->a:Lio/appmetrica/analytics/impl/Rm;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Rm;->f:Lio/appmetrica/analytics/impl/H4;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/b5;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getFullUrlFormer()Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Om;->g:Lio/appmetrica/analytics/networktasks/internal/FullUrlFormer;

    return-object p0
.end method

.method public final getRequestDataHolder()Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Om;->d:Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;

    return-object p0
.end method

.method public final getResponseDataHolder()Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Om;->f:Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;

    return-object p0
.end method

.method public final getRetryPolicyConfig()Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Om;->e:Lio/appmetrica/analytics/networktasks/internal/ConfigProvider;

    invoke-interface {p0}, Lio/appmetrica/analytics/networktasks/internal/ConfigProvider;->getConfig()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/rm;

    invoke-virtual {p0}, Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;->getRetryPolicyConfig()Lio/appmetrica/analytics/networktasks/internal/RetryPolicyConfig;

    move-result-object p0

    return-object p0
.end method

.method public final getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 0

    sget-object p0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Fa;->z()Lio/appmetrica/analytics/impl/Y2;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/Ql;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onCreateTask()Z
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Om;->d:Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;

    const-string v1, "encrypted"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "Accept-Encoding"

    invoke-virtual {v0, v2, v1}, Lio/appmetrica/analytics/networktasks/internal/RequestDataHolder;->setHeader(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Om;->a:Lio/appmetrica/analytics/impl/Qm;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Qm;->g()Z

    move-result p0

    return p0
.end method

.method public final onPerformRequest()V
    .locals 0

    return-void
.end method

.method public final onPostRequestComplete(Z)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lio/appmetrica/analytics/impl/Zl;->d:Lio/appmetrica/analytics/impl/Zl;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Om;->c:Lio/appmetrica/analytics/impl/Zl;

    :cond_0
    return-void
.end method

.method public final onRequestComplete()Z
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Om;->h:Lio/appmetrica/analytics/impl/hm;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Om;->f:Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/hm;->a(Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;)Lio/appmetrica/analytics/impl/tm;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Om;->b:Lio/appmetrica/analytics/impl/tm;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onRequestError(Ljava/lang/Throwable;)V
    .locals 0

    sget-object p1, Lio/appmetrica/analytics/impl/Zl;->c:Lio/appmetrica/analytics/impl/Zl;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Om;->c:Lio/appmetrica/analytics/impl/Zl;

    return-void
.end method

.method public final onShouldNotExecute()V
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/impl/Zl;->c:Lio/appmetrica/analytics/impl/Zl;

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Om;->c:Lio/appmetrica/analytics/impl/Zl;

    return-void
.end method

.method public final onSuccessfulTaskFinished()V
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Om;->b:Lio/appmetrica/analytics/impl/tm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Om;->f:Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;

    invoke-virtual {v0}, Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Om;->a:Lio/appmetrica/analytics/impl/Qm;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Om;->b:Lio/appmetrica/analytics/impl/tm;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/Om;->e:Lio/appmetrica/analytics/networktasks/internal/ConfigProvider;

    invoke-interface {v2}, Lio/appmetrica/analytics/networktasks/internal/ConfigProvider;->getConfig()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/appmetrica/analytics/impl/rm;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Om;->f:Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;

    invoke-virtual {p0}, Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;->getResponseHeaders()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lio/appmetrica/analytics/impl/Qm;->a(Lio/appmetrica/analytics/impl/tm;Lio/appmetrica/analytics/impl/rm;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final onTaskAdded()V
    .locals 0

    return-void
.end method

.method public final onTaskFinished()V
    .locals 0

    return-void
.end method

.method public final onTaskRemoved()V
    .locals 0

    return-void
.end method

.method public final onUnsuccessfulTaskFinished()V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Om;->c:Lio/appmetrica/analytics/impl/Zl;

    if-nez v0, :cond_0

    sget-object v0, Lio/appmetrica/analytics/impl/Zl;->b:Lio/appmetrica/analytics/impl/Zl;

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Om;->c:Lio/appmetrica/analytics/impl/Zl;

    :cond_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Om;->a:Lio/appmetrica/analytics/impl/Qm;

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Qm;->a(Lio/appmetrica/analytics/impl/Zl;)V

    return-void
.end method
