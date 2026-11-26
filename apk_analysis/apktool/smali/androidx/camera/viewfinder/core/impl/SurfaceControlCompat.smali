.class public interface abstract Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat$Companion;,
        Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat$SurfaceControlApi29Impl;,
        Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat$SurfaceControlStub;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat$Companion;->$$INSTANCE:Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat$Companion;

    sput-object v0, Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat;->Companion:Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat$Companion;

    return-void
.end method

.method public static create(Landroid/view/SurfaceView;IIILjava/lang/String;)Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat;
    .locals 6

    sget-object v0, Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat;->Companion:Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat$Companion;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat$Companion;->create(Landroid/view/SurfaceView;IIILjava/lang/String;)Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat;IILjava/lang/String;)Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat;
    .locals 1

    .line 12
    sget-object v0, Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat;->Companion:Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat$Companion;->create(Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat;IILjava/lang/String;)Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat;

    move-result-object p0

    return-object p0
.end method

.method public static wrap(Landroid/view/SurfaceView;)Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat;
    .locals 1

    sget-object v0, Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat;->Companion:Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat$Companion;->wrap(Landroid/view/SurfaceView;)Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract detach()V
.end method

.method public abstract newSurface()Landroid/view/Surface;
.end method

.method public abstract release()V
.end method

.method public abstract reparent(Landroidx/camera/viewfinder/core/impl/SurfaceControlCompat;)Z
.end method

.method public abstract setBufferSize(II)V
.end method
