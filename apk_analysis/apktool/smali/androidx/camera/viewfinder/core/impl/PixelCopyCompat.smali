.class public interface abstract Landroidx/camera/viewfinder/core/impl/PixelCopyCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$Companion;,
        Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$CopyResultStatus;,
        Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$PixelCopyApi24Impl;,
        Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$PixelCopyApi34Impl;,
        Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$PixelCopyStub;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$Companion;->$$INSTANCE:Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$Companion;

    sput-object v0, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat;->Companion:Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$Companion;

    return-void
.end method

.method public static request(Landroid/view/Surface;Landroid/graphics/Bitmap;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat;->Companion:Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$Companion;->request(Landroid/view/Surface;Landroid/graphics/Bitmap;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V

    return-void
.end method

.method public static requestSync(Landroid/view/Surface;Landroid/graphics/Bitmap;)I
    .locals 1

    sget-object v0, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat;->Companion:Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$Companion;->requestSync(Landroid/view/Surface;Landroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method public static requestSync(Landroid/view/Surface;Landroid/graphics/Bitmap;J)I
    .locals 1

    .line 7
    sget-object v0, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat;->Companion:Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$Companion;->requestSync(Landroid/view/Surface;Landroid/graphics/Bitmap;J)I

    move-result p0

    return p0
.end method


# virtual methods
.method public abstract requestImpl(Landroid/view/Surface;Landroid/graphics/Bitmap;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method
