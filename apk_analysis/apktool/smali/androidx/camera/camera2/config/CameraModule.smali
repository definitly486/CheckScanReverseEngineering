.class public abstract Landroidx/camera/camera2/config/CameraModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/config/CameraModule$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/config/CameraModule$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/config/CameraModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/config/CameraModule$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/config/CameraModule;->Companion:Landroidx/camera/camera2/config/CameraModule$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract bindCameraControlInternal(Landroidx/camera/camera2/adapter/CameraControlAdapter;)Landroidx/camera/core/impl/CameraControlInternal;
.end method

.method public abstract bindCameraInfoInternal(Landroidx/camera/camera2/adapter/CameraInfoAdapter;)Landroidx/camera/core/impl/CameraInfoInternal;
.end method

.method public abstract bindCameraInternal(Landroidx/camera/camera2/adapter/CameraInternalAdapter;)Landroidx/camera/core/impl/CameraInternal;
.end method

.method public abstract bindCameraProperties(Landroidx/camera/camera2/impl/CameraPipeCameraProperties;)Landroidx/camera/camera2/impl/CameraProperties;
.end method
