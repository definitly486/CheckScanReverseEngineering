.class public final Lio/appmetrica/analytics/push/coreutils/impl/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/push/coreutils/internal/service/PushServiceCommandLauncher;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/app/job/JobScheduler;

.field public final c:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 18
    const-string v0, "jobscheduler"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 19
    invoke-direct {p0, p1, v0}, Lio/appmetrica/analytics/push/coreutils/impl/c;-><init>(Landroid/content/Context;Landroid/app/job/JobScheduler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/job/JobScheduler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0x19dc9b0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lio/appmetrica/analytics/push/coreutils/impl/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lio/appmetrica/analytics/push/coreutils/impl/c;->a:Landroid/content/Context;

    iput-object p2, p0, Lio/appmetrica/analytics/push/coreutils/impl/c;->b:Landroid/app/job/JobScheduler;

    return-void
.end method

.method public static synthetic a(I)I
    .locals 1

    .line 12
    add-int/lit8 p0, p0, 0x1

    const v0, 0x19dcd98

    if-le p0, v0, :cond_0

    const p0, 0x19dc9b0

    :cond_0
    return p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/push/coreutils/impl/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lio/appmetrica/analytics/push/coreutils/impl/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndUpdate(Ljava/util/function/IntUnaryOperator;)I

    move-result p0

    return p0
.end method

.method public final launchService(Landroid/os/Bundle;)V
    .locals 5

    invoke-virtual {p0}, Lio/appmetrica/analytics/push/coreutils/impl/c;->a()I

    move-result v0

    new-instance v1, Landroid/app/job/JobInfo$Builder;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lio/appmetrica/analytics/push/coreutils/impl/c;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "io.appmetrica.analytics.push.internal.service.PushJobService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v0, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {v1, p1}, Landroid/app/job/JobInfo$Builder;->setTransientExtras(Landroid/os/Bundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    new-instance v1, Lio/appmetrica/analytics/push/coreutils/impl/b;

    invoke-direct {v1, v0, p1}, Lio/appmetrica/analytics/push/coreutils/impl/b;-><init>(Landroid/app/job/JobInfo;Landroid/os/Bundle;)V

    iget-object p0, p0, Lio/appmetrica/analytics/push/coreutils/impl/c;->b:Landroid/app/job/JobScheduler;

    const-string p1, "launching PushJobServiceController command"

    const-string v0, "JobScheduler"

    invoke-static {v1, p0, p1, v0}, Lio/appmetrica/analytics/push/coreutils/internal/utils/CoreUtils;->accessSystemServiceSafely(Lio/appmetrica/analytics/push/coreutils/internal/utils/ConsumerWithThrowable;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
