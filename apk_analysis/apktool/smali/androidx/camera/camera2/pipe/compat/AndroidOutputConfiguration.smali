.class public final Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration$Companion;


# instance fields
.field private final maxSharedSurfaceCount:I

.field private final output:Landroid/hardware/camera2/params/OutputConfiguration;

.field private final physicalCameraId:Ljava/lang/String;

.field private final surface:Landroid/view/Surface;

.field private final surfaceSharing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;->Companion:Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/hardware/camera2/params/OutputConfiguration;ZILjava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;->output:Landroid/hardware/camera2/params/OutputConfiguration;

    iput-boolean p2, p0, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;->surfaceSharing:Z

    iput p3, p0, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;->maxSharedSurfaceCount:I

    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;->physicalCameraId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;->surface:Landroid/view/Surface;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/hardware/camera2/params/OutputConfiguration;ZILjava/lang/String;Ljh2;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;-><init>(Landroid/hardware/camera2/params/OutputConfiguration;ZILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addSurface(Landroid/view/Surface;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;->output:Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/compat/Api26Compat;->addSurfaces(Landroid/hardware/camera2/params/OutputConfiguration;Landroid/view/Surface;)V

    return-void
.end method

.method public getMaxSharedSurfaceCount()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;->maxSharedSurfaceCount:I

    return p0
.end method

.method public getPhysicalCameraId-1LO98Z0()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;->physicalCameraId:Ljava/lang/String;

    return-object p0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;->surface:Landroid/view/Surface;

    return-object p0
.end method

.method public getSurfaceGroupId()I
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;->output:Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {p0}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurfaceGroupId()I

    move-result p0

    return p0
.end method

.method public getSurfaceSharing()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;->surfaceSharing:Z

    return p0
.end method

.method public getSurfaces()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;->output:Landroid/hardware/camera2/params/OutputConfiguration;

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Api26Compat;->getSurfaces(Landroid/hardware/camera2/params/OutputConfiguration;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object p0

    invoke-static {p0}, Lu96;->j(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public removeSurface(Landroid/view/Surface;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    if-lt v0, v1, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;->output:Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/compat/Api28Compat;->removeSurface(Landroid/hardware/camera2/params/OutputConfiguration;Landroid/view/Surface;)V

    :cond_0
    return-void

    :cond_1
    const-string p0, "removeSurface is not supported on API "

    const-string p1, " (requires API 28)"

    invoke-static {v0, p0, p1}, Lkv2;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lj2;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;->output:Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unwrapAs(Lne4;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lne4<",
            "TT;>;)TT;"
        }
    .end annotation

    const-class v0, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-static {p1, v0}, Lvh;->g(Lne4;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;->output:Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
