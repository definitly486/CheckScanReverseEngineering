.class public final Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService$c;
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
        "Lj59;",
        "Llz7<",
        "Lk4a;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService;


# direct methods
.method public constructor <init>(Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService;)V
    .locals 0

    iput-object p1, p0, Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService$c;->f:Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lj59;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService$c;->f:Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService;

    iget-object p0, p0, Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService;->c:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfm9;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lxb9;

    invoke-direct {p1, p0}, Lxb9;-><init>(Lfm9;)V

    new-instance v0, Lk08;

    invoke-direct {v0, p1}, Lk08;-><init>(Lll3;)V

    new-instance p1, Lwl9;

    invoke-direct {p1, p0}, Lwl9;-><init>(Lfm9;)V

    new-instance p0, Lg08;

    invoke-direct {p0, v0, p1}, Lg08;-><init>(Lk08;Lnl3;)V

    return-object p0
.end method
