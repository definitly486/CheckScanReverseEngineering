.class public final Lio/appmetrica/analytics/impl/zo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Ya;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-class p0, Lio/appmetrica/analytics/impl/zm;

    invoke-static {p0}, Lio/appmetrica/analytics/impl/fn;->a(Ljava/lang/Class;)Lio/appmetrica/analytics/impl/gn;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Lio/appmetrica/analytics/impl/hn;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/hn;->a(Landroid/content/Context;)Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/impl/hn;->a(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;)Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;->read()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/zm;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/zm;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
