.class public final synthetic Landroidx/camera/viewfinder/core/impl/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Landroid/graphics/Bitmap;

.field public final synthetic c:Landroidx/core/util/Consumer;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Bitmap;Landroidx/core/util/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/viewfinder/core/impl/f;->b:Landroid/graphics/Bitmap;

    iput-object p2, p0, Landroidx/camera/viewfinder/core/impl/f;->c:Landroidx/core/util/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/viewfinder/core/impl/f;->c:Landroidx/core/util/Consumer;

    check-cast p1, Landroid/view/PixelCopy$Result;

    iget-object p0, p0, Landroidx/camera/viewfinder/core/impl/f;->b:Landroid/graphics/Bitmap;

    invoke-static {p0, v0, p1}, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$PixelCopyApi34Impl;->a(Landroid/graphics/Bitmap;Landroidx/core/util/Consumer;Landroid/view/PixelCopy$Result;)V

    return-void
.end method
