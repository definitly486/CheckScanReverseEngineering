.class public final Lio/appmetrica/analytics/impl/M0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/plugins/AppMetricaPlugins;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/O0;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/O0;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/O0;-><init>()V

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/M0;-><init>(Lio/appmetrica/analytics/impl/O0;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/O0;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/M0;->a:Lio/appmetrica/analytics/impl/O0;

    return-void
.end method


# virtual methods
.method public final reportError(Lio/appmetrica/analytics/plugins/PluginErrorDetails;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/M0;->a:Lio/appmetrica/analytics/impl/O0;

    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/impl/O0;->a(Lio/appmetrica/analytics/plugins/PluginErrorDetails;Ljava/lang/String;)V

    return-void
.end method

.method public final reportError(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/plugins/PluginErrorDetails;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lio/appmetrica/analytics/impl/M0;->a:Lio/appmetrica/analytics/impl/O0;

    invoke-virtual {p0, p1, p2, p3}, Lio/appmetrica/analytics/impl/O0;->a(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/plugins/PluginErrorDetails;)V

    return-void
.end method

.method public final reportUnhandledException(Lio/appmetrica/analytics/plugins/PluginErrorDetails;)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/M0;->a:Lio/appmetrica/analytics/impl/O0;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/O0;->a(Lio/appmetrica/analytics/plugins/PluginErrorDetails;)V

    return-void
.end method
