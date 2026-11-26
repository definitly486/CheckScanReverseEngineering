.class public final Landroidx/camera/camera2/pipe/CameraSurfaceManager$SurfaceToken;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/CameraSurfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SurfaceToken"
.end annotation


# instance fields
.field private final closed:Lht;

.field private final debugId:I

.field private final surface:Landroid/view/Surface;

.field final synthetic this$0:Landroidx/camera/camera2/pipe/CameraSurfaceManager;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/CameraSurfaceManager;Landroid/view/Surface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/camera/camera2/pipe/CameraSurfaceManager$SurfaceToken;->this$0:Landroidx/camera/camera2/pipe/CameraSurfaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/camera/camera2/pipe/CameraSurfaceManager$SurfaceToken;->surface:Landroid/view/Surface;

    sget-object p1, Landroidx/camera/camera2/pipe/CameraSurfaceManager;->Companion:Landroidx/camera/camera2/pipe/CameraSurfaceManager$Companion;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraSurfaceManager$Companion;->getSurfaceTokenDebugIds$camera_camera2_pipe()Llt;

    move-result-object p1

    invoke-virtual {p1}, Llt;->b()I

    move-result p1

    iput p1, p0, Landroidx/camera/camera2/pipe/CameraSurfaceManager$SurfaceToken;->debugId:I

    const/4 p1, 0x0

    invoke-static {p1}, Lkt;->a(Z)Lht;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/CameraSurfaceManager$SurfaceToken;->closed:Lht;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraSurfaceManager$SurfaceToken;->closed:Lht;

    invoke-virtual {v0}, Lht;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraSurfaceManager$SurfaceToken;->this$0:Landroidx/camera/camera2/pipe/CameraSurfaceManager;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/CameraSurfaceManager;->onTokenClosed$camera_camera2_pipe(Landroidx/camera/camera2/pipe/CameraSurfaceManager$SurfaceToken;)V

    :cond_0
    return-void
.end method

.method public final getSurface$camera_camera2_pipe()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraSurfaceManager$SurfaceToken;->surface:Landroid/view/Surface;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SurfaceToken-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroidx/camera/camera2/pipe/CameraSurfaceManager$SurfaceToken;->debugId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
