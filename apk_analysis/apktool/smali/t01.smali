.class public final synthetic Lt01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/camera/view/CameraController;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/view/CameraController;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt01;->b:Landroidx/camera/view/CameraController;

    iput p2, p0, Lt01;->c:I

    iput p3, p0, Lt01;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lt01;->c:I

    iget v1, p0, Lt01;->d:I

    iget-object p0, p0, Lt01;->b:Landroidx/camera/view/CameraController;

    invoke-static {p0, v0, v1}, Landroidx/camera/view/CameraController;->d(Landroidx/camera/view/CameraController;II)V

    return-void
.end method
