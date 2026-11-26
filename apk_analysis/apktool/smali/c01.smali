.class public final synthetic Lc01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, Lc01;->b:I

    iput-object p1, p0, Lc01;->c:Ljava/lang/Object;

    iput-object p2, p0, Lc01;->d:Ljava/lang/Object;

    iput-object p3, p0, Lc01;->e:Ljava/lang/Object;

    iput-object p4, p0, Lc01;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lc01;->b:I

    iget-object v1, p0, Lc01;->f:Ljava/lang/Object;

    iget-object v2, p0, Lc01;->e:Ljava/lang/Object;

    iget-object v3, p0, Lc01;->d:Ljava/lang/Object;

    iget-object p0, p0, Lc01;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lpi2;

    check-cast v3, Lhz;

    iget-object v0, v3, Lhz;->a:Ljava/lang/String;

    check-cast v2, Lf39;

    check-cast v1, Lsy;

    sget-object v4, Lpi2;->f:Ljava/util/logging/Logger;

    const-string v5, "Transport backend \'"

    :try_start_0
    iget-object v6, p0, Lpi2;->c:Le00;

    invoke-interface {v6, v0}, Le00;->get(Ljava/lang/String;)Lr29;

    move-result-object v6

    if-nez v6, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' is not registered"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v0}, Lf39;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-interface {v6, v1}, Lr29;->a(Lsy;)Lsy;

    move-result-object v0

    iget-object v1, p0, Lpi2;->e:Leh8;

    new-instance v5, Lni2;

    invoke-direct {v5, p0, v3, v0}, Lni2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v5}, Leh8;->a(Leh8$a;)Ljava/lang/Object;

    const/4 p0, 0x0

    invoke-interface {v2, p0}, Lf39;->a(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error scheduling event "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    invoke-interface {v2, p0}, Lf39;->a(Ljava/lang/Exception;)V

    :goto_1
    return-void

    :pswitch_0
    check-cast p0, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    check-cast v3, Landroid/hardware/camera2/CameraCaptureSession;

    check-cast v2, Landroid/hardware/camera2/CaptureRequest;

    check-cast v1, Landroid/hardware/camera2/CaptureFailure;

    invoke-static {p0, v3, v2, v1}, Landroidx/camera/camera2/impl/CameraCallbackMap;->e(Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
