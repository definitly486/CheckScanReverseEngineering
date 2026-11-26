.class public final synthetic Lk94;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/camera/core/processing/InternalImageProcessor;

.field public final synthetic c:Landroidx/camera/core/ImageProcessor$Request;

.field public final synthetic d:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/processing/InternalImageProcessor;Landroidx/camera/core/ImageProcessor$Request;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk94;->b:Landroidx/camera/core/processing/InternalImageProcessor;

    iput-object p2, p0, Lk94;->c:Landroidx/camera/core/ImageProcessor$Request;

    iput-object p3, p0, Lk94;->d:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lk94;->c:Landroidx/camera/core/ImageProcessor$Request;

    iget-object v1, p0, Lk94;->d:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iget-object p0, p0, Lk94;->b:Landroidx/camera/core/processing/InternalImageProcessor;

    invoke-static {p0, v0, v1}, Landroidx/camera/core/processing/InternalImageProcessor;->b(Landroidx/camera/core/processing/InternalImageProcessor;Landroidx/camera/core/ImageProcessor$Request;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V

    return-void
.end method
