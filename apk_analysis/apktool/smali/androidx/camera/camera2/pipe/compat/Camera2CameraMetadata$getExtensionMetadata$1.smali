.class final Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata$getExtensionMetadata$1;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "androidx.camera.camera2.pipe.compat.Camera2CameraMetadata"
    f = "Camera2CameraMetadata.kt"
    l = {
        0x8c
    }
    m = "getExtensionMetadata"
    v = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->getExtensionMetadata(ILe02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field I$0:I

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;",
            "Le02<",
            "-",
            "Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata$getExtensionMetadata$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata$getExtensionMetadata$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata$getExtensionMetadata$1;->result:Ljava/lang/Object;

    iget p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata$getExtensionMetadata$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata$getExtensionMetadata$1;->label:I

    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata$getExtensionMetadata$1;->this$0:Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->getExtensionMetadata(ILe02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
