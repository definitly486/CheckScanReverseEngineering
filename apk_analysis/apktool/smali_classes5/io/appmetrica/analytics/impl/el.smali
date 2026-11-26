.class public final Lio/appmetrica/analytics/impl/el;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lio/appmetrica/analytics/impl/Zk;

.field public final c:Lio/appmetrica/analytics/impl/dl;

.field public final d:Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lio/appmetrica/analytics/impl/b5;->a()Ljava/lang/String;

    const-string v0, "session_extras"

    iput-object v0, p0, Lio/appmetrica/analytics/impl/el;->a:Ljava/lang/String;

    new-instance v0, Lio/appmetrica/analytics/impl/Zk;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Zk;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/el;->b:Lio/appmetrica/analytics/impl/Zk;

    new-instance v0, Lio/appmetrica/analytics/impl/dl;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/dl;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/el;->c:Lio/appmetrica/analytics/impl/dl;

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Fa;->B()Lio/appmetrica/analytics/impl/Ok;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/appmetrica/analytics/impl/Ok;->a(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;)Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/el;->d:Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/el;->d:Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/el;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;->get(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    iget-object v1, p0, Lio/appmetrica/analytics/impl/el;->b:Lio/appmetrica/analytics/impl/Zk;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/el;->c:Lio/appmetrica/analytics/impl/dl;

    invoke-virtual {v2, v0}, Lio/appmetrica/analytics/impl/dl;->a([B)Lio/appmetrica/analytics/impl/bl;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/appmetrica/analytics/impl/Zk;->a(Lio/appmetrica/analytics/impl/bl;)Ljava/util/Map;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/el;->b:Lio/appmetrica/analytics/impl/Zk;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/el;->c:Lio/appmetrica/analytics/impl/dl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lio/appmetrica/analytics/impl/bl;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/bl;-><init>()V

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/impl/Zk;->a(Lio/appmetrica/analytics/impl/bl;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
