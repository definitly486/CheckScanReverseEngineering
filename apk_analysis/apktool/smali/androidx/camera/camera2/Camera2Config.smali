.class public final Landroidx/camera/camera2/Camera2Config;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/Camera2Config$Companion;,
        Landroidx/camera/camera2/Camera2Config$DefaultProvider;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/Camera2Config$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/Camera2Config$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/Camera2Config$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/Camera2Config;->Companion:Landroidx/camera/camera2/Camera2Config$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final defaultConfig()Landroidx/camera/core/CameraXConfig;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/Camera2Config;->Companion:Landroidx/camera/camera2/Camera2Config$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/Camera2Config$Companion;->defaultConfig()Landroidx/camera/core/CameraXConfig;

    move-result-object v0

    return-object v0
.end method

.method public static final from(Landroidx/camera/camera2/pipe/CameraPipe;Landroid/content/Context;Landroidx/camera/core/impl/CameraThreadConfig;)Landroidx/camera/core/CameraXConfig;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/Camera2Config;->Companion:Landroidx/camera/camera2/Camera2Config$Companion;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/camera/camera2/Camera2Config$Companion;->from(Landroidx/camera/camera2/pipe/CameraPipe;Landroid/content/Context;Landroidx/camera/core/impl/CameraThreadConfig;)Landroidx/camera/core/CameraXConfig;

    move-result-object p0

    return-object p0
.end method
