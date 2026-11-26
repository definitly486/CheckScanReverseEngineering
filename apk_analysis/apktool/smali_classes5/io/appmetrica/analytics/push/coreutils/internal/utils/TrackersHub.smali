.class public Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/push/coreutils/internal/utils/Tracker;


# static fields
.field private static final b:Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;


# instance fields
.field private final a:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;

    invoke-direct {v0}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->b:Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static getInstance()Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->b:Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;

    return-object v0
.end method


# virtual methods
.method public pauseSession()V
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/push/coreutils/internal/utils/Tracker;

    invoke-interface {v0}, Lio/appmetrica/analytics/push/coreutils/internal/utils/Tracker;->pauseSession()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerTracker(Lio/appmetrica/analytics/push/coreutils/internal/utils/Tracker;)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public reportError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/push/coreutils/internal/utils/Tracker;

    invoke-interface {v0, p1, p2}, Lio/appmetrica/analytics/push/coreutils/internal/utils/Tracker;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reportEvent(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/push/coreutils/internal/utils/Tracker;

    invoke-interface {v0, p1}, Lio/appmetrica/analytics/push/coreutils/internal/utils/Tracker;->reportEvent(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reportEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 23
    iget-object p0, p0, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/push/coreutils/internal/utils/Tracker;

    .line 24
    invoke-interface {v0, p1, p2}, Lio/appmetrica/analytics/push/coreutils/internal/utils/Tracker;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reportUnhandledException(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/push/coreutils/internal/utils/Tracker;

    invoke-interface {v0, p1}, Lio/appmetrica/analytics/push/coreutils/internal/utils/Tracker;->reportUnhandledException(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resumeSession()V
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/push/coreutils/internal/utils/Tracker;

    invoke-interface {v0}, Lio/appmetrica/analytics/push/coreutils/internal/utils/Tracker;->resumeSession()V

    goto :goto_0

    :cond_0
    return-void
.end method
