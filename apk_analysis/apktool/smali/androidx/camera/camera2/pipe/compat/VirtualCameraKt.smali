.class public final Landroidx/camera/camera2/pipe/compat/VirtualCameraKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final androidCameraDebugIds:Llt;

.field private static final virtualCameraDebugIds:Llt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lkt;->b(I)Llt;

    move-result-object v1

    sput-object v1, Landroidx/camera/camera2/pipe/compat/VirtualCameraKt;->virtualCameraDebugIds:Llt;

    invoke-static {v0}, Lkt;->b(I)Llt;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/compat/VirtualCameraKt;->androidCameraDebugIds:Llt;

    return-void
.end method

.method public static final getAndroidCameraDebugIds()Llt;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/compat/VirtualCameraKt;->androidCameraDebugIds:Llt;

    return-object v0
.end method

.method public static final getVirtualCameraDebugIds()Llt;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/compat/VirtualCameraKt;->virtualCameraDebugIds:Llt;

    return-object v0
.end method
