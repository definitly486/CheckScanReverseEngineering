.class public final Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat$Companion;

    invoke-direct {v0}, Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat$Companion;-><init>()V

    sput-object v0, Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat$Companion;->$$INSTANCE:Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroid/view/SurfaceView;IIILjava/lang/String;)Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat;
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p0, v0, :cond_0

    new-instance v1, Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat$SurfaceControlApi29Impl;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat$SurfaceControlApi29Impl;-><init>(Landroid/view/SurfaceView;IIILjava/lang/String;)V

    return-object v1

    :cond_0
    sget-object p0, Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat$SurfaceControlStub;->INSTANCE:Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat$SurfaceControlStub;

    return-object p0
.end method

.method public final create(Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat;IILjava/lang/String;)Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p0, v0, :cond_0

    .line 27
    new-instance p0, Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat$SurfaceControlApi29Impl;

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat$SurfaceControlApi29Impl;-><init>(Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat;IILjava/lang/String;)V

    return-object p0

    .line 28
    :cond_0
    sget-object p0, Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat$SurfaceControlStub;->INSTANCE:Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat$SurfaceControlStub;

    return-object p0
.end method

.method public final wrap(Landroid/view/SurfaceView;)Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p0, v0, :cond_0

    new-instance p0, Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat$SurfaceControlApi29Impl;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat$SurfaceControlApi29Impl;-><init>(Landroid/view/SurfaceControl;)V

    return-object p0

    :cond_0
    sget-object p0, Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat$SurfaceControlStub;->INSTANCE:Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat$SurfaceControlStub;

    return-object p0
.end method
