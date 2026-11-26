.class public final Landroidx/camera/camera2/pipe/CameraInterop;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/CameraInterop$CameraCaptureSessionId;,
        Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/pipe/CameraInterop;

.field private static final captureSessionIds:Llt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/CameraInterop;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/CameraInterop;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/CameraInterop;->INSTANCE:Landroidx/camera/camera2/pipe/CameraInterop;

    const/4 v0, 0x0

    invoke-static {v0}, Lkt;->b(I)Llt;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/CameraInterop;->captureSessionIds:Llt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic getCaptureSessionIds$annotations()V
    .locals 0

    return-void
.end method

.method public static final nextCameraCaptureSessionId-159jkk4$camera_camera2_pipe()I
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraInterop;->captureSessionIds:Llt;

    invoke-virtual {v0}, Llt;->b()I

    move-result v0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/CameraInterop$CameraCaptureSessionId;->constructor-impl(I)I

    move-result v0

    return v0
.end method
