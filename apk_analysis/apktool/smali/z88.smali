.class public final synthetic Lz88;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/camera/camera2/impl/StillCaptureRequestControl;

.field public final synthetic c:Lmk2;

.field public final synthetic d:Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;

.field public final synthetic e:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/impl/StillCaptureRequestControl;Lmk2;Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz88;->b:Landroidx/camera/camera2/impl/StillCaptureRequestControl;

    iput-object p2, p0, Lz88;->c:Lmk2;

    iput-object p3, p0, Lz88;->d:Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;

    iput-object p4, p0, Lz88;->e:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lz88;->e:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    check-cast p1, Ljava/lang/Throwable;

    iget-object v1, p0, Lz88;->b:Landroidx/camera/camera2/impl/StillCaptureRequestControl;

    iget-object v2, p0, Lz88;->c:Lmk2;

    iget-object p0, p0, Lz88;->d:Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;

    invoke-static {v1, v2, p0, v0, p1}, Landroidx/camera/camera2/impl/StillCaptureRequestControl;->a(Landroidx/camera/camera2/impl/StillCaptureRequestControl;Lmk2;Landroidx/camera/camera2/impl/StillCaptureRequestControl$CaptureRequest;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;Ljava/lang/Throwable;)Lj59;

    move-result-object p0

    return-object p0
.end method
