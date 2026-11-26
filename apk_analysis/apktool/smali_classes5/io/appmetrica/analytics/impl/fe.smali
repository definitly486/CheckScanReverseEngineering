.class public final Lio/appmetrica/analytics/impl/fe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/modulesapi/internal/service/ServiceNetworkContext;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/q5;

.field public final b:Ljava/lang/String;

.field public final c:Lio/appmetrica/analytics/impl/Ll;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/q5;

    new-instance v1, Lio/appmetrica/analytics/impl/A5;

    invoke-direct {v1, p1}, Lio/appmetrica/analytics/impl/A5;-><init>(Landroid/content/Context;)V

    new-instance p1, Lio/appmetrica/analytics/impl/xi;

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object v2

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/Fa;->h()Lio/appmetrica/analytics/impl/S6;

    move-result-object v2

    invoke-direct {p1, v2}, Lio/appmetrica/analytics/impl/xi;-><init>(Lio/appmetrica/analytics/coreapi/internal/control/DataSendingRestrictionController;)V

    const/4 v2, 0x2

    new-array v2, v2, [Lio/appmetrica/analytics/coreapi/internal/io/IExecutionPolicy;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p1, v2, v1

    invoke-direct {v0, v2}, Lio/appmetrica/analytics/impl/q5;-><init>([Lio/appmetrica/analytics/coreapi/internal/io/IExecutionPolicy;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/fe;->a:Lio/appmetrica/analytics/impl/q5;

    new-instance p1, Lio/appmetrica/analytics/impl/oo;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/oo;-><init>()V

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/oo;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/fe;->b:Ljava/lang/String;

    new-instance p1, Lio/appmetrica/analytics/impl/Ll;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/Ll;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/fe;->c:Lio/appmetrica/analytics/impl/Ll;

    return-void
.end method


# virtual methods
.method public final getExecutionPolicy()Lio/appmetrica/analytics/coreapi/internal/io/IExecutionPolicy;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/fe;->a:Lio/appmetrica/analytics/impl/q5;

    return-object p0
.end method

.method public final getNetworkApi()Lio/appmetrica/analytics/modulesapi/internal/network/SimpleNetworkApi;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/fe;->c:Lio/appmetrica/analytics/impl/Ll;

    return-object p0
.end method

.method public final getSslSocketFactoryProvider()Lio/appmetrica/analytics/coreapi/internal/io/SslSocketFactoryProvider;
    .locals 0

    sget-object p0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Fa;->z()Lio/appmetrica/analytics/impl/Y2;

    move-result-object p0

    return-object p0
.end method

.method public final getUserAgent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/fe;->b:Ljava/lang/String;

    return-object p0
.end method
