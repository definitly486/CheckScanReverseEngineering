.class public final Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService$h;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lxm9;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService;


# direct methods
.method public constructor <init>(Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService;)V
    .locals 0

    iput-object p1, p0, Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService$h;->f:Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lxm9$h;

    invoke-direct {v0}, Lxm9$h;-><init>()V

    iget-object p0, p0, Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService$h;->f:Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lxm9$h;->a(Landroid/content/Context;)Lxm9;

    move-result-object p0

    return-object p0
.end method
