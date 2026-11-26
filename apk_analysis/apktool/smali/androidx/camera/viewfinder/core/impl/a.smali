.class public final synthetic Landroidx/camera/viewfinder/core/impl/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/core/util/Consumer;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(ILandroidx/core/util/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/camera/viewfinder/core/impl/a;->b:Landroidx/core/util/Consumer;

    iput p1, p0, Landroidx/camera/viewfinder/core/impl/a;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/viewfinder/core/impl/a;->b:Landroidx/core/util/Consumer;

    iget p0, p0, Landroidx/camera/viewfinder/core/impl/a;->c:I

    invoke-static {p0, v0}, Landroidx/camera/viewfinder/core/impl/PixelCopyCompat$PixelCopyApi24Impl;->b(ILandroidx/core/util/Consumer;)V

    return-void
.end method
