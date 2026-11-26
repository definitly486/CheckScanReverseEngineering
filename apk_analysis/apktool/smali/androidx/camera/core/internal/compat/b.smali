.class public final synthetic Landroidx/camera/core/internal/compat/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/ImageWriter$OnImageReleasedListener;


# instance fields
.field public final synthetic b:Ljava/util/concurrent/Executor;

.field public final synthetic c:Landroid/media/ImageWriter$OnImageReleasedListener;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Landroid/media/ImageWriter$OnImageReleasedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/internal/compat/b;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroidx/camera/core/internal/compat/b;->c:Landroid/media/ImageWriter$OnImageReleasedListener;

    return-void
.end method


# virtual methods
.method public final onImageReleased(Landroid/media/ImageWriter;)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/internal/compat/b;->b:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Landroidx/camera/core/internal/compat/b;->c:Landroid/media/ImageWriter$OnImageReleasedListener;

    invoke-static {v0, p0, p1}, Landroidx/camera/core/internal/compat/ImageWriterCompatApi23Impl;->b(Ljava/util/concurrent/Executor;Landroid/media/ImageWriter$OnImageReleasedListener;Landroid/media/ImageWriter;)V

    return-void
.end method
