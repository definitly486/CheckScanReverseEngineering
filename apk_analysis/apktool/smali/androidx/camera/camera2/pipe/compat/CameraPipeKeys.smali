.class public final Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CAMERA2_EXTENSION_MODE_AUTOMATIC:I = 0x0

.field public static final CAMERA2_EXTENSION_MODE_BOKEH:I = 0x2

.field public static final CAMERA2_EXTENSION_MODE_FACE_RETOUCH:I = 0x1

.field public static final CAMERA2_EXTENSION_MODE_HDR:I = 0x3

.field public static final CAMERA2_EXTENSION_MODE_NIGHT:I = 0x4

.field public static final INSTANCE:Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;

.field private static final camera2CaptureRequestTag:Landroidx/camera/camera2/pipe/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/camera2/pipe/Metadata$Key<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final camera2ExtensionMode:Landroidx/camera/camera2/pipe/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/camera2/pipe/Metadata$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ignore3ARequiredParameters:Landroidx/camera/camera2/pipe/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/camera2/pipe/Metadata$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;->INSTANCE:Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;

    sget-object v0, Landroidx/camera/camera2/pipe/Metadata$Key;->Companion:Landroidx/camera/camera2/pipe/Metadata$Key$Companion;

    const-class v1, Ljava/lang/Integer;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    const-string v2, "androidx.camera.camera2.pipe.extensionMode"

    invoke-virtual {v0, v2, v1}, Landroidx/camera/camera2/pipe/Metadata$Key$Companion;->create(Ljava/lang/String;Lne4;)Landroidx/camera/camera2/pipe/Metadata$Key;

    move-result-object v1

    sput-object v1, Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;->camera2ExtensionMode:Landroidx/camera/camera2/pipe/Metadata$Key;

    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    const-string v2, "androidx.camera.camera2.pipe.captureRequestTag"

    invoke-virtual {v0, v2, v1}, Landroidx/camera/camera2/pipe/Metadata$Key$Companion;->create(Ljava/lang/String;Lne4;)Landroidx/camera/camera2/pipe/Metadata$Key;

    move-result-object v1

    sput-object v1, Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;->camera2CaptureRequestTag:Landroidx/camera/camera2/pipe/Metadata$Key;

    const-class v1, Ljava/lang/Boolean;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    const-string v2, "androidx.camera.camera2.pipe.ignore3ARequiredParameters"

    invoke-virtual {v0, v2, v1}, Landroidx/camera/camera2/pipe/Metadata$Key$Companion;->create(Ljava/lang/String;Lne4;)Landroidx/camera/camera2/pipe/Metadata$Key;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;->ignore3ARequiredParameters:Landroidx/camera/camera2/pipe/Metadata$Key;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCamera2CaptureRequestTag()Landroidx/camera/camera2/pipe/Metadata$Key;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/camera/camera2/pipe/Metadata$Key<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object p0, Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;->camera2CaptureRequestTag:Landroidx/camera/camera2/pipe/Metadata$Key;

    return-object p0
.end method

.method public final getCamera2ExtensionMode()Landroidx/camera/camera2/pipe/Metadata$Key;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/camera/camera2/pipe/Metadata$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object p0, Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;->camera2ExtensionMode:Landroidx/camera/camera2/pipe/Metadata$Key;

    return-object p0
.end method

.method public final getIgnore3ARequiredParameters()Landroidx/camera/camera2/pipe/Metadata$Key;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/camera/camera2/pipe/Metadata$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    sget-object p0, Landroidx/camera/camera2/pipe/compat/CameraPipeKeys;->ignore3ARequiredParameters:Landroidx/camera/camera2/pipe/Metadata$Key;

    return-object p0
.end method
