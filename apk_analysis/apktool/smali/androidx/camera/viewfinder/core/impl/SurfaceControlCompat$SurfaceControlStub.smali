.class final Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat$SurfaceControlStub;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SurfaceControlStub"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat$SurfaceControlStub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat$SurfaceControlStub;

    invoke-direct {v0}, Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat$SurfaceControlStub;-><init>()V

    sput-object v0, Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat$SurfaceControlStub;->INSTANCE:Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat$SurfaceControlStub;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public detach()V
    .locals 0

    return-void
.end method

.method public newSurface()Landroid/view/Surface;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public reparent(Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method

.method public setBufferSize(II)V
    .locals 0

    return-void
.end method
