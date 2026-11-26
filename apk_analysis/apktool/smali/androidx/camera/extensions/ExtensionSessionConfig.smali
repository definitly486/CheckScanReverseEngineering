.class public final Landroidx/camera/extensions/ExtensionSessionConfig;
.super Landroidx/camera/core/SessionConfig;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/extensions/ExtensionSessionConfig$Builder;
    }
.end annotation


# instance fields
.field private final _cameraFilter:Landroidx/camera/core/CameraFilter;

.field private final extensionsManager:Landroidx/camera/extensions/ExtensionsManager;

.field private final mode:I


# direct methods
.method public constructor <init>(ILandroidx/camera/extensions/ExtensionsManager;)V
    .locals 8

    .line 35
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Landroidx/camera/extensions/ExtensionSessionConfig;-><init>(ILandroidx/camera/extensions/ExtensionsManager;Ljava/util/List;Landroidx/camera/core/ViewPort;Ljava/util/List;ILjh2;)V

    return-void
.end method

.method public constructor <init>(ILandroidx/camera/extensions/ExtensionsManager;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/camera/extensions/ExtensionsManager;",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/UseCase;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Landroidx/camera/extensions/ExtensionSessionConfig;-><init>(ILandroidx/camera/extensions/ExtensionsManager;Ljava/util/List;Landroidx/camera/core/ViewPort;Ljava/util/List;ILjh2;)V

    return-void
.end method

.method public constructor <init>(ILandroidx/camera/extensions/ExtensionsManager;Ljava/util/List;Landroidx/camera/core/ViewPort;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/camera/extensions/ExtensionsManager;",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/UseCase;",
            ">;",
            "Landroidx/camera/core/ViewPort;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Landroidx/camera/extensions/ExtensionSessionConfig;-><init>(ILandroidx/camera/extensions/ExtensionsManager;Ljava/util/List;Landroidx/camera/core/ViewPort;Ljava/util/List;ILjh2;)V

    return-void
.end method

.method public constructor <init>(ILandroidx/camera/extensions/ExtensionsManager;Ljava/util/List;Landroidx/camera/core/ViewPort;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/camera/extensions/ExtensionsManager;",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/UseCase;",
            ">;",
            "Landroidx/camera/core/ViewPort;",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/CameraEffect;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v7, 0x38

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v8}, Landroidx/camera/core/SessionConfig;-><init>(Ljava/util/List;Landroidx/camera/core/ViewPort;Ljava/util/List;Landroid/util/Range;Ljava/util/Set;Ljava/util/List;ILjh2;)V

    iput p1, v0, Landroidx/camera/extensions/ExtensionSessionConfig;->mode:I

    iput-object p2, v0, Landroidx/camera/extensions/ExtensionSessionConfig;->extensionsManager:Landroidx/camera/extensions/ExtensionsManager;

    invoke-virtual {p2, p1}, Landroidx/camera/extensions/ExtensionsManager;->getExtensionCameraFilterAndInjectCameraConfig$camera_extensions(I)Landroidx/camera/core/CameraFilter;

    move-result-object p0

    iput-object p0, v0, Landroidx/camera/extensions/ExtensionSessionConfig;->_cameraFilter:Landroidx/camera/core/CameraFilter;

    return-void
.end method

.method public synthetic constructor <init>(ILandroidx/camera/extensions/ExtensionsManager;Ljava/util/List;Landroidx/camera/core/ViewPort;Ljava/util/List;ILjh2;)V
    .locals 1

    and-int/lit8 p7, p6, 0x4

    .line 36
    sget-object v0, Lkx2;->b:Lkx2;

    if-eqz p7, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_1

    const/4 p4, 0x0

    :cond_1
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_2

    move-object p5, v0

    :cond_2
    invoke-direct/range {p0 .. p5}, Landroidx/camera/extensions/ExtensionSessionConfig;-><init>(ILandroidx/camera/extensions/ExtensionsManager;Ljava/util/List;Landroidx/camera/core/ViewPort;Ljava/util/List;)V

    return-void
.end method

.method public varargs constructor <init>(ILandroidx/camera/extensions/ExtensionsManager;[Landroidx/camera/core/UseCase;)V
    .locals 8

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    invoke-static {p3}, Lyr;->h0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Landroidx/camera/extensions/ExtensionSessionConfig;-><init>(ILandroidx/camera/extensions/ExtensionsManager;Ljava/util/List;Landroidx/camera/core/ViewPort;Ljava/util/List;ILjh2;)V

    return-void
.end method


# virtual methods
.method public getCameraFilter()Landroidx/camera/core/CameraFilter;
    .locals 0

    iget-object p0, p0, Landroidx/camera/extensions/ExtensionSessionConfig;->_cameraFilter:Landroidx/camera/core/CameraFilter;

    return-object p0
.end method

.method public final getExtensionsManager()Landroidx/camera/extensions/ExtensionsManager;
    .locals 0

    iget-object p0, p0, Landroidx/camera/extensions/ExtensionSessionConfig;->extensionsManager:Landroidx/camera/extensions/ExtensionsManager;

    return-object p0
.end method

.method public final getMode()I
    .locals 0

    iget p0, p0, Landroidx/camera/extensions/ExtensionSessionConfig;->mode:I

    return p0
.end method

.method public getRequireNonEmptyUseCases()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
