.class public final Landroidx/camera/camera2/impl/VideoUsageControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/impl/UseCaseCameraControl;


# annotations
.annotation runtime Landroidx/camera/camera2/config/CameraScope;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/impl/VideoUsageControl$Bindings;
    }
.end annotation


# instance fields
.field private requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

.field private final videoUsage:Llt;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Lkt;->b(I)Llt;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/camera2/impl/VideoUsageControl;->videoUsage:Llt;

    return-void
.end method


# virtual methods
.method public final decrementUsage()V
    .locals 3

    iget-object p0, p0, Landroidx/camera/camera2/impl/VideoUsageControl;->videoUsage:Llt;

    invoke-virtual {p0}, Llt;->a()I

    move-result p0

    const-string v0, "decrementUsage: videoUsage = "

    const-string v1, "CXCP"

    if-gez p0, :cond_0

    sget-object v2, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static {v1}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", which is less than 0!"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v2, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    invoke-static {v1}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lvh;->d(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public getRequestControl()Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/VideoUsageControl;->requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    return-object p0
.end method

.method public final incrementUsage()V
    .locals 2

    iget-object p0, p0, Landroidx/camera/camera2/impl/VideoUsageControl;->videoUsage:Llt;

    invoke-virtual {p0}, Llt;->b()I

    move-result p0

    sget-object v0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string v0, "CXCP"

    invoke-static {v0}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "incrementUsage: videoUsage = "

    invoke-static {p0, v1, v0}, Lvh;->d(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final isInVideoUsage()Z
    .locals 2

    iget-object p0, p0, Landroidx/camera/camera2/impl/VideoUsageControl;->videoUsage:Llt;

    iget p0, p0, Llt;->a:I

    sget-object v0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string v0, "CXCP"

    invoke-static {v0}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "isInVideoUsage: videoUsage = "

    invoke-static {p0, v1, v0}, Lvh;->d(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public reset()V
    .locals 1

    iget-object p0, p0, Landroidx/camera/camera2/impl/VideoUsageControl;->videoUsage:Llt;

    const/4 v0, 0x0

    iput v0, p0, Llt;->a:I

    sget-object p0, Ljy8$a;->a:Ljy8$a;

    sget-object p0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string p0, "CXCP"

    invoke-static {p0}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p0

    const-string v0, "reset: videoUsage = 0"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setRequestControl(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/impl/VideoUsageControl;->requestControl:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    return-void
.end method
