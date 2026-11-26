.class public final Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService$d;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


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
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService$d;->f:Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService$d;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    sget-object p0, Lqda;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
