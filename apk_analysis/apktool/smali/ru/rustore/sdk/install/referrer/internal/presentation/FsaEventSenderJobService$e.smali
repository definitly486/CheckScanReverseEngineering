.class public final Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService$e;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljava/lang/Throwable;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService;

.field public final synthetic g:Landroid/app/job/JobParameters;


# direct methods
.method public constructor <init>(Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    iput-object p1, p0, Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService$e;->f:Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService;

    iput-object p2, p0, Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService$e;->g:Landroid/app/job/JobParameters;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lqda;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    iget-object v0, p0, Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService$e;->f:Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService;

    iget-object v1, v0, Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService;->d:Lfh8;

    invoke-virtual {v1}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Low9;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Luz4;

    invoke-direct {v2}, Luz4;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "error_code"

    invoke-virtual {v2, v3, p1}, Luz4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v2}, Low9;->b(Luz4;)V

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {v2}, Luz4;->b()Luz4;

    move-result-object v2

    const-string v3, "SDKInstallReferrerSendError"

    invoke-virtual {v1, v3, v2}, Low9;->c(Ljava/lang/String;Luz4;)V

    iget-object p0, p0, Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService$e;->g:Landroid/app/job/JobParameters;

    iget-boolean v1, v0, Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService;->f:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    :cond_0
    return-object p1
.end method
