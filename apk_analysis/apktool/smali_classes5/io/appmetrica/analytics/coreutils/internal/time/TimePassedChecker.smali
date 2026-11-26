.class public final Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-direct {v0}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;-><init>()V

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;-><init>(Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;->a:Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;

    return-void
.end method


# virtual methods
.method public final didTimePassMillis(JJLjava/lang/String;)Z
    .locals 2

    iget-object p0, p0, Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;->a:Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;

    invoke-interface {p0}, Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;->currentTimeMillis()J

    move-result-wide v0

    cmp-long p0, v0, p1

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    sub-long/2addr v0, p1

    cmp-long p0, v0, p3

    if-ltz p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final didTimePassSeconds(JJLjava/lang/String;)Z
    .locals 2

    iget-object p0, p0, Lio/appmetrica/analytics/coreutils/internal/time/TimePassedChecker;->a:Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;

    invoke-interface {p0}, Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;->currentTimeSeconds()J

    move-result-wide v0

    cmp-long p0, v0, p1

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    sub-long/2addr v0, p1

    cmp-long p0, v0, p3

    if-ltz p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
