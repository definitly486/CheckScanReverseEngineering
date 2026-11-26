.class public final synthetic Landroidx/camera/view/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/camera/view/CameraController$FocusMeteringResultCallback;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/view/CameraController$FocusMeteringResultCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/view/a;->b:Landroidx/camera/view/CameraController$FocusMeteringResultCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Landroidx/camera/view/a;->b:Landroidx/camera/view/CameraController$FocusMeteringResultCallback;

    invoke-virtual {p0}, Landroidx/camera/view/CameraController$FocusMeteringResultCallback;->resetStateAndClose()V

    return-void
.end method
