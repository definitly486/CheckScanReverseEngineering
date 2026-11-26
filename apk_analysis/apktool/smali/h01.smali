.class public final synthetic Lh01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:J

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lh01;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh01;->e:Ljava/lang/Object;

    iput-object p2, p0, Lh01;->f:Ljava/lang/Object;

    iput-object p3, p0, Lh01;->g:Ljava/lang/Object;

    iput-wide p4, p0, Lh01;->c:J

    iput-wide p6, p0, Lh01;->d:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/my/tracker/obfuscated/i0;JLjava/lang/String;Lcom/my/tracker/obfuscated/s1$a;J)V
    .locals 1

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Lh01;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh01;->e:Ljava/lang/Object;

    iput-wide p2, p0, Lh01;->c:J

    iput-object p4, p0, Lh01;->f:Ljava/lang/Object;

    iput-object p5, p0, Lh01;->g:Ljava/lang/Object;

    iput-wide p6, p0, Lh01;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Lh01;->b:I

    iget-object v2, v0, Lh01;->g:Ljava/lang/Object;

    iget-object v3, v0, Lh01;->f:Ljava/lang/Object;

    iget-object v4, v0, Lh01;->e:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    move-object v5, v4

    check-cast v5, Lcom/my/tracker/obfuscated/i0;

    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    move-object v9, v2

    check-cast v9, Lcom/my/tracker/obfuscated/s1$a;

    iget-wide v10, v0, Lh01;->d:J

    iget-wide v6, v0, Lh01;->c:J

    invoke-static/range {v5 .. v11}, Lcom/my/tracker/obfuscated/i0;->k(Lcom/my/tracker/obfuscated/i0;JLjava/lang/String;Lcom/my/tracker/obfuscated/s1$a;J)V

    return-void

    :pswitch_0
    move-object v12, v4

    check-cast v12, Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;

    move-object v13, v3

    check-cast v13, Landroid/hardware/camera2/CameraCaptureSession;

    move-object v14, v2

    check-cast v14, Landroid/hardware/camera2/CaptureRequest;

    iget-wide v1, v0, Lh01;->c:J

    iget-wide v3, v0, Lh01;->d:J

    move-wide v15, v1

    move-wide/from16 v17, v3

    invoke-static/range {v12 .. v18}, Landroidx/camera/camera2/impl/CameraCallbackMap;->h(Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
