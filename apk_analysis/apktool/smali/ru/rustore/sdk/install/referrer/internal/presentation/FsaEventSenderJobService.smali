.class public final Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService;
.super Landroid/app/job/JobService;
.source "SourceFile"


# instance fields
.field public final b:Lfh8;

.field public final c:Lfh8;

.field public final d:Lfh8;

.field public e:Ld18;

.field public volatile f:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    new-instance v0, Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService$h;

    invoke-direct {v0, p0}, Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService$h;-><init>(Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService;)V

    new-instance v1, Lfh8;

    invoke-direct {v1, v0}, Lfh8;-><init>(Lll3;)V

    iput-object v1, p0, Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService;->b:Lfh8;

    new-instance v0, Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService$g;

    invoke-direct {v0, p0}, Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService$g;-><init>(Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService;)V

    new-instance v1, Lfh8;

    invoke-direct {v1, v0}, Lfh8;-><init>(Lll3;)V

    iput-object v1, p0, Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService;->c:Lfh8;

    new-instance v0, Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService$a;

    invoke-direct {v0, p0}, Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService$a;-><init>(Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService;)V

    new-instance v1, Lfh8;

    invoke-direct {v1, v0}, Lfh8;-><init>(Lll3;)V

    iput-object v1, p0, Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService;->d:Lfh8;

    return-void
.end method


# virtual methods
.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService$b;->f:Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService$b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lk08;

    invoke-direct {v1, v0}, Lk08;-><init>(Lll3;)V

    new-instance v0, Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService$c;

    invoke-direct {v0, p0}, Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService$c;-><init>(Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService;)V

    new-instance v2, Lg08;

    invoke-direct {v2, v1, v0}, Lg08;-><init>(Lk08;Lnl3;)V

    invoke-static {}, Lpo2;->a()Ljo2;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lf18;

    invoke-direct {v1, v2, v0}, Lf18;-><init>(Llz7;Ljo2;)V

    sget-object v0, Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService$d;->f:Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService$d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lvz7;

    invoke-direct {v2, v1, v0}, Lvz7;-><init>(Lf18;Lll3;)V

    new-instance v0, Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService$e;

    invoke-direct {v0, p0, p1}, Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService$e;-><init>(Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService;Landroid/app/job/JobParameters;)V

    new-instance v1, Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService$f;

    invoke-direct {v1, p0, p1}, Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService$f;-><init>(Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService;Landroid/app/job/JobParameters;)V

    invoke-static {v2, v0, v1}, Ld31;->r(Llz7;Lnl3;Lnl3;)Ld18;

    move-result-object p1

    iput-object p1, p0, Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService;->e:Ld18;

    const/4 p0, 0x1

    return p0
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService;->f:Z

    iget-object p0, p0, Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService;->e:Ld18;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ld18;->dispose()V

    :cond_0
    return p1
.end method
