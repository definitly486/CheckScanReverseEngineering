.class public final synthetic Landroidx/camera/viewfinder/core/impl/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroid/view/Surface;

.field public final synthetic c:Landroid/graphics/Bitmap;

.field public final synthetic d:Ljava/util/concurrent/Executor;

.field public final synthetic e:Landroidx/core/util/Consumer;


# direct methods
.method public synthetic constructor <init>(Landroid/view/Surface;Landroid/graphics/Bitmap;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/viewfinder/core/impl/e;->b:Landroid/view/Surface;

    iput-object p2, p0, Landroidx/camera/viewfinder/core/impl/e;->c:Landroid/graphics/Bitmap;

    iput-object p3, p0, Landroidx/camera/viewfinder/core/impl/e;->d:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroidx/camera/viewfinder/core/impl/e;->e:Landroidx/core/util/Consumer;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v4, p1

    check-cast v4, Landroid/os/Handler;

    move-object v5, p2

    check-cast v5, Lll3;

    iget-object v0, p0, Landroidx/camera/viewfinder/core/impl/e;->b:Landroid/view/Surface;

    iget-object v1, p0, Landroidx/camera/viewfinder/core/impl/e;->c:Landroid/graphics/Bitmap;

    iget-object v2, p0, Landroidx/camera/viewfinder/core/impl/e;->d:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroidx/camera/viewfinder/core/impl/e;->e:Landroidx/core/util/Consumer;

    invoke-static/range {v0 .. v5}, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$PixelCopyApi24Impl;->e(Landroid/view/Surface;Landroid/graphics/Bitmap;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;Landroid/os/Handler;Lll3;)Lj59;

    move-result-object p0

    return-object p0
.end method
