.class public final Lio/appmetrica/analytics/push/impl/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/push/impl/T0;


# instance fields
.field public final a:Lio/appmetrica/analytics/push/impl/x;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/push/impl/L1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lio/appmetrica/analytics/AppMetricaLibraryAdapter;->activate(Landroid/content/Context;)V

    new-instance p1, Lio/appmetrica/analytics/push/impl/x;

    const-string v0, "app"

    invoke-direct {p1, p2, v0}, Lio/appmetrica/analytics/push/impl/x;-><init>(Lio/appmetrica/analytics/push/impl/L1;Ljava/lang/String;)V

    iput-object p1, p0, Lio/appmetrica/analytics/push/impl/u;->a:Lio/appmetrica/analytics/push/impl/x;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    .line 89
    invoke-static {v0}, Lio/appmetrica/analytics/push/impl/s;->b(I)I

    move-result v1

    .line 90
    invoke-static {v0}, Lio/appmetrica/analytics/push/impl/s;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const v3, 0x2fd6278

    .line 92
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "appmetrica_push_version"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v3, "appmetrica_push_version_name"

    const-string v4, "4.3.0"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v3, "appmetrica_push_transport"

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/u;->a:Lio/appmetrica/analytics/push/impl/x;

    invoke-virtual {p0}, Lio/appmetrica/analytics/push/impl/x;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p2, "appmetrica_push_event_id"

    invoke-virtual {v2, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-static {v1}, Lio/appmetrica/analytics/ModuleEvent;->newBuilder(I)Lio/appmetrica/analytics/ModuleEvent$Builder;

    move-result-object p0

    .line 97
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/ModuleEvent$Builder;->withName(Ljava/lang/String;)Lio/appmetrica/analytics/ModuleEvent$Builder;

    move-result-object p0

    .line 98
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/ModuleEvent$Builder;->withValue(Ljava/lang/String;)Lio/appmetrica/analytics/ModuleEvent$Builder;

    move-result-object p0

    .line 99
    invoke-virtual {p0, v2}, Lio/appmetrica/analytics/ModuleEvent$Builder;->withEnvironment(Ljava/util/Map;)Lio/appmetrica/analytics/ModuleEvent$Builder;

    move-result-object p0

    .line 100
    invoke-virtual {p0}, Lio/appmetrica/analytics/ModuleEvent$Builder;->build()Lio/appmetrica/analytics/ModuleEvent;

    move-result-object p0

    .line 101
    invoke-static {p0}, Lio/appmetrica/analytics/ModulesFacade;->reportEvent(Lio/appmetrica/analytics/ModuleEvent;)V

    .line 102
    invoke-static {}, Lio/appmetrica/analytics/AppMetrica;->sendEventsBuffer()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    invoke-static {v0}, Lio/appmetrica/analytics/push/impl/s;->b(I)I

    move-result v1

    invoke-static {v0}, Lio/appmetrica/analytics/push/impl/s;->a(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const v3, 0x2fd6278

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "appmetrica_push_version"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "appmetrica_push_version_name"

    const-string v4, "4.3.0"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "appmetrica_push_transport"

    const-string v4, "system_info_provider"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/u;->a:Lio/appmetrica/analytics/push/impl/x;

    invoke-virtual {p0}, Lio/appmetrica/analytics/push/impl/x;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v3, "appmetrica_push_event_id"

    invoke-virtual {v2, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lio/appmetrica/analytics/ModuleEvent;->newBuilder(I)Lio/appmetrica/analytics/ModuleEvent$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/ModuleEvent$Builder;->withName(Ljava/lang/String;)Lio/appmetrica/analytics/ModuleEvent$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/ModuleEvent$Builder;->withValue(Ljava/lang/String;)Lio/appmetrica/analytics/ModuleEvent$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Lio/appmetrica/analytics/ModuleEvent$Builder;->withEnvironment(Ljava/util/Map;)Lio/appmetrica/analytics/ModuleEvent$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/ModuleEvent$Builder;->build()Lio/appmetrica/analytics/ModuleEvent;

    move-result-object p0

    invoke-static {p0}, Lio/appmetrica/analytics/ModulesFacade;->reportEvent(Lio/appmetrica/analytics/ModuleEvent;)V

    invoke-static {}, Lio/appmetrica/analytics/AppMetrica;->sendEventsBuffer()V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    .line 82
    invoke-static {v0}, Lio/appmetrica/analytics/push/impl/s;->b(I)I

    move-result v1

    .line 83
    invoke-static {v0}, Lio/appmetrica/analytics/push/impl/s;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const v3, 0x2fd6278

    .line 85
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "appmetrica_push_version"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v3, "appmetrica_push_version_name"

    const-string v4, "4.3.0"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v3, "appmetrica_push_transport"

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/u;->a:Lio/appmetrica/analytics/push/impl/x;

    invoke-virtual {p0}, Lio/appmetrica/analytics/push/impl/x;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p2, "appmetrica_push_event_id"

    invoke-virtual {v2, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-static {v1}, Lio/appmetrica/analytics/ModuleEvent;->newBuilder(I)Lio/appmetrica/analytics/ModuleEvent$Builder;

    move-result-object p0

    .line 90
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/ModuleEvent$Builder;->withName(Ljava/lang/String;)Lio/appmetrica/analytics/ModuleEvent$Builder;

    move-result-object p0

    .line 91
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/ModuleEvent$Builder;->withValue(Ljava/lang/String;)Lio/appmetrica/analytics/ModuleEvent$Builder;

    move-result-object p0

    .line 92
    invoke-virtual {p0, v2}, Lio/appmetrica/analytics/ModuleEvent$Builder;->withEnvironment(Ljava/util/Map;)Lio/appmetrica/analytics/ModuleEvent$Builder;

    move-result-object p0

    .line 93
    invoke-virtual {p0}, Lio/appmetrica/analytics/ModuleEvent$Builder;->build()Lio/appmetrica/analytics/ModuleEvent;

    move-result-object p0

    .line 94
    invoke-static {p0}, Lio/appmetrica/analytics/ModulesFacade;->reportEvent(Lio/appmetrica/analytics/ModuleEvent;)V

    .line 95
    invoke-static {}, Lio/appmetrica/analytics/AppMetrica;->sendEventsBuffer()V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/push/impl/q;)V
    .locals 6

    iget v0, p1, Lio/appmetrica/analytics/push/impl/t;->a:I

    invoke-static {v0}, Lio/appmetrica/analytics/push/impl/s;->b(I)I

    move-result v1

    invoke-static {v0}, Lio/appmetrica/analytics/push/impl/s;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/impl/q;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const v4, 0x2fd6278

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "appmetrica_push_version"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "appmetrica_push_version_name"

    const-string v5, "4.3.0"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lio/appmetrica/analytics/push/impl/t;->b:Ljava/lang/String;

    const-string v4, "appmetrica_push_transport"

    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/u;->a:Lio/appmetrica/analytics/push/impl/x;

    invoke-virtual {p0}, Lio/appmetrica/analytics/push/impl/x;->a()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "appmetrica_push_event_id"

    invoke-virtual {v3, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lio/appmetrica/analytics/ModuleEvent;->newBuilder(I)Lio/appmetrica/analytics/ModuleEvent$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/ModuleEvent$Builder;->withName(Ljava/lang/String;)Lio/appmetrica/analytics/ModuleEvent$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Lio/appmetrica/analytics/ModuleEvent$Builder;->withValue(Ljava/lang/String;)Lio/appmetrica/analytics/ModuleEvent$Builder;

    move-result-object p0

    invoke-virtual {p0, v3}, Lio/appmetrica/analytics/ModuleEvent$Builder;->withEnvironment(Ljava/util/Map;)Lio/appmetrica/analytics/ModuleEvent$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/ModuleEvent$Builder;->build()Lio/appmetrica/analytics/ModuleEvent;

    move-result-object p0

    invoke-static {p0}, Lio/appmetrica/analytics/ModulesFacade;->reportEvent(Lio/appmetrica/analytics/ModuleEvent;)V

    invoke-static {}, Lio/appmetrica/analytics/AppMetrica;->sendEventsBuffer()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 87
    :try_start_0
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/push/impl/u;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 88
    invoke-static {}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->getInstance()Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;

    move-result-object p1

    const-string v0, "Try to send SystemInfoUpdated message before appmetrica activation"

    invoke-virtual {p1, v0, p0}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 103
    :try_start_0
    new-instance p2, Lio/appmetrica/analytics/push/impl/q;

    new-instance v0, Lio/appmetrica/analytics/push/impl/n;

    invoke-direct {v0, p4}, Lio/appmetrica/analytics/push/impl/n;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p1, p3, v0}, Lio/appmetrica/analytics/push/impl/q;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/push/impl/i;)V

    .line 104
    invoke-virtual {p0, p2}, Lio/appmetrica/analytics/push/impl/u;->a(Lio/appmetrica/analytics/push/impl/q;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 105
    invoke-static {}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->getInstance()Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;

    move-result-object p1

    const-string p2, "Try to send PushOpened message before appmetrica activation"

    invoke-virtual {p1, p2, p0}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 106
    :try_start_0
    new-instance p3, Lio/appmetrica/analytics/push/impl/q;

    new-instance v0, Lio/appmetrica/analytics/push/impl/k;

    const/4 v1, 0x0

    .line 107
    invoke-direct {v0, p2, p5, v1}, Lio/appmetrica/analytics/push/impl/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-direct {p3, p1, p4, v0}, Lio/appmetrica/analytics/push/impl/q;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/push/impl/i;)V

    .line 109
    invoke-virtual {p0, p3}, Lio/appmetrica/analytics/push/impl/u;->a(Lio/appmetrica/analytics/push/impl/q;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 110
    invoke-static {}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->getInstance()Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;

    move-result-object p1

    const-string p2, "Try to send NotificationAdditionalAction message before appmetrica activation"

    invoke-virtual {p1, p2, p0}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 111
    :try_start_0
    new-instance p3, Lio/appmetrica/analytics/push/impl/q;

    new-instance v0, Lio/appmetrica/analytics/push/impl/k;

    invoke-direct {v0, p2, p6, p4}, Lio/appmetrica/analytics/push/impl/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p3, p1, p5, v0}, Lio/appmetrica/analytics/push/impl/q;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/push/impl/i;)V

    .line 112
    invoke-virtual {p0, p3}, Lio/appmetrica/analytics/push/impl/u;->a(Lio/appmetrica/analytics/push/impl/q;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 113
    invoke-static {}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->getInstance()Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;

    move-result-object p1

    const-string p2, "Try to send NotificationInlineAdditionalAction message before appmetrica activation"

    invoke-virtual {p1, p2, p0}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onMessageReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance p2, Lio/appmetrica/analytics/push/impl/q;

    new-instance v0, Lio/appmetrica/analytics/push/impl/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/push/impl/i;-><init>(I)V

    invoke-direct {p2, p1, p3, v0}, Lio/appmetrica/analytics/push/impl/q;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/push/impl/i;)V

    invoke-virtual {p0, p2}, Lio/appmetrica/analytics/push/impl/u;->a(Lio/appmetrica/analytics/push/impl/q;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->getInstance()Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;

    move-result-object p1

    const-string p2, "Try to send MessageReceived message before appmetrica activation"

    invoke-virtual {p1, p2, p0}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNotificationCleared(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance p2, Lio/appmetrica/analytics/push/impl/q;

    new-instance v0, Lio/appmetrica/analytics/push/impl/i;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/push/impl/i;-><init>(I)V

    invoke-direct {p2, p1, p3, v0}, Lio/appmetrica/analytics/push/impl/q;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/push/impl/i;)V

    invoke-virtual {p0, p2}, Lio/appmetrica/analytics/push/impl/u;->a(Lio/appmetrica/analytics/push/impl/q;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->getInstance()Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;

    move-result-object p1

    const-string p2, "Try to send NotificationCleared message before appmetrica activation"

    invoke-virtual {p1, p2, p0}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNotificationExpired(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    new-instance p3, Lio/appmetrica/analytics/push/impl/q;

    new-instance v0, Lio/appmetrica/analytics/push/impl/l;

    invoke-direct {v0, p2}, Lio/appmetrica/analytics/push/impl/l;-><init>(Ljava/lang/String;)V

    invoke-direct {p3, p1, p4, v0}, Lio/appmetrica/analytics/push/impl/q;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/push/impl/i;)V

    invoke-virtual {p0, p3}, Lio/appmetrica/analytics/push/impl/u;->a(Lio/appmetrica/analytics/push/impl/q;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->getInstance()Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;

    move-result-object p1

    const-string p2, "Try to send NotificationTtl message before appmetrica activation"

    invoke-virtual {p1, p2, p0}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNotificationIgnored(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    new-instance p4, Lio/appmetrica/analytics/push/impl/q;

    new-instance v0, Lio/appmetrica/analytics/push/impl/m;

    invoke-direct {v0, p2, p3}, Lio/appmetrica/analytics/push/impl/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p4, p1, p5, v0}, Lio/appmetrica/analytics/push/impl/q;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/push/impl/i;)V

    invoke-virtual {p0, p4}, Lio/appmetrica/analytics/push/impl/u;->a(Lio/appmetrica/analytics/push/impl/q;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->getInstance()Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;

    move-result-object p1

    const-string p2, "Try to send NotificationIgnored message before appmetrica activation"

    invoke-virtual {p1, p2, p0}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNotificationReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Lio/appmetrica/analytics/push/impl/q;

    new-instance v1, Lio/appmetrica/analytics/push/impl/p;

    invoke-direct {v1, p2}, Lio/appmetrica/analytics/push/impl/p;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p1, p3, v1}, Lio/appmetrica/analytics/push/impl/q;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/push/impl/i;)V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/push/impl/u;->a(Lio/appmetrica/analytics/push/impl/q;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->getInstance()Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;

    move-result-object p1

    const-string p2, "Try to send NotificationHide message before appmetrica activation"

    invoke-virtual {p1, p2, p0}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNotificationShown(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance p2, Lio/appmetrica/analytics/push/impl/q;

    new-instance v0, Lio/appmetrica/analytics/push/impl/i;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/push/impl/i;-><init>(I)V

    invoke-direct {p2, p1, p3, v0}, Lio/appmetrica/analytics/push/impl/q;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/push/impl/i;)V

    invoke-virtual {p0, p2}, Lio/appmetrica/analytics/push/impl/u;->a(Lio/appmetrica/analytics/push/impl/q;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->getInstance()Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;

    move-result-object p1

    const-string p2, "Try to send NotificationShown message before appmetrica activation"

    invoke-virtual {p1, p2, p0}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onPushTokenInited(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lio/appmetrica/analytics/push/impl/u;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->getInstance()Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;

    move-result-object p1

    const-string p2, "Try to send PushTokenInited message before appmetrica activation"

    invoke-virtual {p1, p2, p0}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onPushTokenUpdated(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lio/appmetrica/analytics/push/impl/u;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->getInstance()Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;

    move-result-object p1

    const-string p2, "Try to send PushTokenUpdated message before appmetrica activation"

    invoke-virtual {p1, p2, p0}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onRemovingSilentPushProcessed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    new-instance p4, Lio/appmetrica/analytics/push/impl/q;

    new-instance v0, Lio/appmetrica/analytics/push/impl/o;

    invoke-direct {v0, p2, p3}, Lio/appmetrica/analytics/push/impl/o;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p4, p1, p5, v0}, Lio/appmetrica/analytics/push/impl/q;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/push/impl/i;)V

    invoke-virtual {p0, p4}, Lio/appmetrica/analytics/push/impl/u;->a(Lio/appmetrica/analytics/push/impl/q;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->getInstance()Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;

    move-result-object p1

    const-string p2, "Try to send RemovingSilentPushProcessed message before appmetrica activation"

    invoke-virtual {p1, p2, p0}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSilentPushProcessed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance p2, Lio/appmetrica/analytics/push/impl/q;

    new-instance v0, Lio/appmetrica/analytics/push/impl/i;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/push/impl/i;-><init>(I)V

    invoke-direct {p2, p1, p3, v0}, Lio/appmetrica/analytics/push/impl/q;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/push/impl/i;)V

    invoke-virtual {p0, p2}, Lio/appmetrica/analytics/push/impl/u;->a(Lio/appmetrica/analytics/push/impl/q;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->getInstance()Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;

    move-result-object p1

    const-string p2, "Try to send SilentPushProcessed message before appmetrica activation"

    invoke-virtual {p1, p2, p0}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
