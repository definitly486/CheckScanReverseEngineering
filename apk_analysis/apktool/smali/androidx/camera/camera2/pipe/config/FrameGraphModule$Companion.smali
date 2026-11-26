.class public final Landroidx/camera/camera2/pipe/config/FrameGraphModule$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/config/FrameGraphModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/config/FrameGraphModule$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideFrameGraphCoroutineScope(Landroidx/camera/camera2/pipe/core/Threads;Lmb4;)Ly22;
    .locals 1
    .param p2    # Lmb4;
        .annotation runtime Landroidx/camera/camera2/pipe/config/CameraPipeJob;
        .end annotation
    .end param
    .annotation runtime Landroidx/camera/camera2/pipe/config/FrameGraphCoroutineScope;
    .end annotation

    .annotation runtime Landroidx/camera/camera2/pipe/config/FrameGraphScope;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljd8;

    invoke-direct {p0, p2}, Lnb4;-><init>(Lmb4;)V

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Threads;->getLightweightDispatcher()Lr22;

    move-result-object p1

    new-instance p2, Lw22;

    const-string v0, "CXCP-FrameGraph"

    invoke-direct {p2, v0}, Lw22;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lb0;->plus(Lo22;)Lo22;

    move-result-object p1

    invoke-static {p0, p1}, Lo22$a$a;->d(Lo22$a;Lo22;)Lo22;

    move-result-object p0

    invoke-static {p0}, Lz22;->a(Lo22;)Lkz1;

    move-result-object p0

    return-object p0
.end method
