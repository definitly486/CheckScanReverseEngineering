.class public final synthetic Landroidx/camera/viewfinder/core/impl/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# instance fields
.field public final synthetic a:Landroid/graphics/Bitmap;

.field public final synthetic b:Ljava/util/concurrent/Executor;

.field public final synthetic c:Lll3;

.field public final synthetic d:Landroidx/core/util/Consumer;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Bitmap;Ljava/util/concurrent/Executor;Lll3;Landroidx/core/util/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/viewfinder/core/impl/b;->a:Landroid/graphics/Bitmap;

    iput-object p2, p0, Landroidx/camera/viewfinder/core/impl/b;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroidx/camera/viewfinder/core/impl/b;->c:Lll3;

    iput-object p4, p0, Landroidx/camera/viewfinder/core/impl/b;->d:Landroidx/core/util/Consumer;

    return-void
.end method


# virtual methods
.method public final onPixelCopyFinished(I)V
    .locals 3

    iget-object v0, p0, Landroidx/camera/viewfinder/core/impl/b;->c:Lll3;

    iget-object v1, p0, Landroidx/camera/viewfinder/core/impl/b;->d:Landroidx/core/util/Consumer;

    iget-object v2, p0, Landroidx/camera/viewfinder/core/impl/b;->a:Landroid/graphics/Bitmap;

    iget-object p0, p0, Landroidx/camera/viewfinder/core/impl/b;->b:Ljava/util/concurrent/Executor;

    invoke-static {v2, p0, v0, v1, p1}, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$PixelCopyApi24Impl;->c(Landroid/graphics/Bitmap;Ljava/util/concurrent/Executor;Lll3;Landroidx/core/util/Consumer;I)V

    return-void
.end method
