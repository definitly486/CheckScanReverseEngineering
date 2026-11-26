.class public final Lio/appmetrica/analytics/impl/Lc;
.super Lio/appmetrica/analytics/impl/pi;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Wa;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/pi;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/location/Location;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Lio/appmetrica/analytics/AnrListener;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final a(Lio/appmetrica/analytics/ExternalAttribution;)V
    .locals 0

    .line 3
    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/Ro;)V
    .locals 0

    .line 4
    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/n;)V
    .locals 0

    .line 5
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 6
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 7
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 0

    .line 8
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 9
    return-void
.end method

.method public final a(ZZ)V
    .locals 0

    .line 10
    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 0

    .line 4
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    return-void
.end method

.method public final b()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final f()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public final reportAdRevenue(Lio/appmetrica/analytics/AdRevenue;Z)V
    .locals 0

    return-void
.end method

.method public final reportError(Lio/appmetrica/analytics/plugins/PluginErrorDetails;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final reportError(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/plugins/PluginErrorDetails;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final reportEvent(Lio/appmetrica/analytics/ModuleEvent;)V
    .locals 0

    return-void
.end method

.method public final reportUnhandledException(Lio/appmetrica/analytics/plugins/PluginErrorDetails;)V
    .locals 0

    return-void
.end method
