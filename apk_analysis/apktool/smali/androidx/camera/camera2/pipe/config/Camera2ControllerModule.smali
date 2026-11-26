.class public abstract Landroidx/camera/camera2/pipe/config/Camera2ControllerModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/config/Camera2ControllerModule$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/config/Camera2ControllerModule$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/config/Camera2ControllerModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/config/Camera2ControllerModule$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/pipe/config/Camera2ControllerModule;->Companion:Landroidx/camera/camera2/pipe/config/Camera2ControllerModule$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract bindCamera2RequestProcessorFactory(Landroidx/camera/camera2/pipe/compat/StandardCamera2CaptureSequenceProcessorFactory;)Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessorFactory;
.end method

.method public abstract bindCameraController(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;)Landroidx/camera/camera2/pipe/CameraController;
.end method
