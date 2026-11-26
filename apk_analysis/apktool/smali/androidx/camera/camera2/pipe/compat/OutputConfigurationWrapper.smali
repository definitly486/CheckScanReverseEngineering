.class public interface abstract Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/UnsafeWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper$Companion;

.field public static final SURFACE_GROUP_ID_NONE:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper$Companion;->$$INSTANCE:Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper$Companion;

    sput-object v0, Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;->Companion:Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper$Companion;

    return-void
.end method


# virtual methods
.method public abstract addSurface(Landroid/view/Surface;)V
.end method

.method public abstract getMaxSharedSurfaceCount()I
.end method

.method public abstract getPhysicalCameraId-1LO98Z0()Ljava/lang/String;
.end method

.method public abstract getSurface()Landroid/view/Surface;
.end method

.method public abstract getSurfaceGroupId()I
.end method

.method public abstract getSurfaceSharing()Z
.end method

.method public abstract getSurfaces()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeSurface(Landroid/view/Surface;)V
.end method
