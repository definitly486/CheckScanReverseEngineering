.class public final Landroidx/camera/camera2/compat/workaround/NoOpInactiveSurfaceCloser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloser;


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/compat/workaround/NoOpInactiveSurfaceCloser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/compat/workaround/NoOpInactiveSurfaceCloser;

    invoke-direct {v0}, Landroidx/camera/camera2/compat/workaround/NoOpInactiveSurfaceCloser;-><init>()V

    sput-object v0, Landroidx/camera/camera2/compat/workaround/NoOpInactiveSurfaceCloser;->INSTANCE:Landroidx/camera/camera2/compat/workaround/NoOpInactiveSurfaceCloser;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeAll()V
    .locals 0

    return-void
.end method

.method public configure-hB7JTeY(ILandroidx/camera/core/impl/DeferrableSurface;Landroidx/camera/camera2/pipe/CameraGraph;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public onSurfaceInactive(Landroidx/camera/core/impl/DeferrableSurface;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
