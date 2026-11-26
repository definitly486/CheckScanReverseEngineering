.class public final Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService$a;
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
        "Low9;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService;


# direct methods
.method public constructor <init>(Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService;)V
    .locals 0

    iput-object p1, p0, Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService$a;->f:Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService$a;->f:Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService;

    iget-object p0, p0, Lru/rustore/sdk/install/referrer/internal/presentation/FsaEventSenderJobService;->b:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lxm9;

    iget-object p0, p0, Lxm9;->c:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Low9;

    return-object p0
.end method
