.class public final Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/CameraPipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ThreadConfig"
.end annotation


# instance fields
.field private final defaultBackgroundExecutor:Ljava/util/concurrent/Executor;

.field private final defaultBlockingExecutor:Ljava/util/concurrent/Executor;

.field private final defaultCameraExecutor:Ljava/util/concurrent/Executor;

.field private final defaultCameraHandler:Landroid/os/Handler;

.field private final defaultCameraHandlerFn:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultLightweightExecutor:Ljava/util/concurrent/Executor;

.field private final testOnlyScope:Ly22;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 48
    const/16 v8, 0x7f

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/os/Handler;Lll3;Ly22;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/os/Handler;Lll3;Ly22;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/Handler;",
            "Lll3<",
            "+",
            "Landroid/os/Handler;",
            ">;",
            "Ly22;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultLightweightExecutor:Ljava/util/concurrent/Executor;

    .line 42
    iput-object p2, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 43
    iput-object p3, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultBlockingExecutor:Ljava/util/concurrent/Executor;

    .line 44
    iput-object p4, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultCameraExecutor:Ljava/util/concurrent/Executor;

    .line 45
    iput-object p5, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultCameraHandler:Landroid/os/Handler;

    .line 46
    iput-object p6, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultCameraHandlerFn:Lll3;

    .line 47
    iput-object p7, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->testOnlyScope:Ly22;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/os/Handler;Lll3;Ly22;ILjh2;)V
    .locals 1

    and-int/lit8 p9, p8, 0x1

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    move-object p7, v0

    :cond_6
    invoke-direct/range {p0 .. p7}, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/os/Handler;Lll3;Ly22;)V

    return-void
.end method

.method public static synthetic copy$default(Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/os/Handler;Lll3;Ly22;ILjava/lang/Object;)Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;
    .locals 0

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultLightweightExecutor:Ljava/util/concurrent/Executor;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultBackgroundExecutor:Ljava/util/concurrent/Executor;

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    iget-object p3, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultBlockingExecutor:Ljava/util/concurrent/Executor;

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    iget-object p4, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultCameraExecutor:Ljava/util/concurrent/Executor;

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    iget-object p5, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultCameraHandler:Landroid/os/Handler;

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    iget-object p6, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultCameraHandlerFn:Lll3;

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    iget-object p7, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->testOnlyScope:Ly22;

    :cond_6
    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p9}, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->copy(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/os/Handler;Lll3;Ly22;)Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultLightweightExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public final component2()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultBackgroundExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public final component3()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultBlockingExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public final component4()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultCameraExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public final component5()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultCameraHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public final component6()Lll3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lll3<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultCameraHandlerFn:Lll3;

    return-object p0
.end method

.method public final component7()Ly22;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->testOnlyScope:Ly22;

    return-object p0
.end method

.method public final copy(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/os/Handler;Lll3;Ly22;)Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/Handler;",
            "Lll3<",
            "+",
            "Landroid/os/Handler;",
            ">;",
            "Ly22;",
            ")",
            "Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;"
        }
    .end annotation

    new-instance p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;

    invoke-direct/range {p0 .. p7}, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/os/Handler;Lll3;Ly22;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultLightweightExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultLightweightExecutor:Ljava/util/concurrent/Executor;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultBackgroundExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultBackgroundExecutor:Ljava/util/concurrent/Executor;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultBlockingExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultBlockingExecutor:Ljava/util/concurrent/Executor;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultCameraExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultCameraExecutor:Ljava/util/concurrent/Executor;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultCameraHandler:Landroid/os/Handler;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultCameraHandler:Landroid/os/Handler;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultCameraHandlerFn:Lll3;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultCameraHandlerFn:Lll3;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->testOnlyScope:Ly22;

    iget-object p1, p1, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->testOnlyScope:Ly22;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getDefaultBackgroundExecutor()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultBackgroundExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public final getDefaultBlockingExecutor()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultBlockingExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public final getDefaultCameraExecutor()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultCameraExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public final getDefaultCameraHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultCameraHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public final getDefaultCameraHandlerFn()Lll3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lll3<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultCameraHandlerFn:Lll3;

    return-object p0
.end method

.method public final getDefaultLightweightExecutor()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultLightweightExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public final getTestOnlyScope()Ly22;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->testOnlyScope:Ly22;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultLightweightExecutor:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultBackgroundExecutor:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultBlockingExecutor:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultCameraExecutor:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultCameraHandler:Landroid/os/Handler;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultCameraHandlerFn:Lll3;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->testOnlyScope:Ly22;

    if-nez p0, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ThreadConfig(defaultLightweightExecutor="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultLightweightExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", defaultBackgroundExecutor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultBackgroundExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", defaultBlockingExecutor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultBlockingExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", defaultCameraExecutor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultCameraExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", defaultCameraHandler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", defaultCameraHandlerFn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->defaultCameraHandlerFn:Lll3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", testOnlyScope="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;->testOnlyScope:Ly22;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
