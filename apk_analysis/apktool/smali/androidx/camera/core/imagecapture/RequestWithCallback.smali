.class public Landroidx/camera/core/imagecapture/RequestWithCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/imagecapture/TakePictureCallback;


# instance fields
.field private mCaptureCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mCaptureFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mCaptureRequestFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mCompleteCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mCompleteFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAborted:Z

.field private mIsStarted:Z

.field private final mRetryControl:Landroidx/camera/core/imagecapture/TakePictureRequest$RetryControl;

.field private final mTakePictureRequest:Landroidx/camera/core/imagecapture/TakePictureRequest;


# direct methods
.method public constructor <init>(Landroidx/camera/core/imagecapture/TakePictureRequest;Landroidx/camera/core/imagecapture/TakePictureRequest$RetryControl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mIsAborted:Z

    iput-boolean v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mIsStarted:Z

    iput-object p1, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mTakePictureRequest:Landroidx/camera/core/imagecapture/TakePictureRequest;

    iput-object p2, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mRetryControl:Landroidx/camera/core/imagecapture/TakePictureRequest$RetryControl;

    new-instance p1, Lar;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Lar;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mCaptureFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance p1, Lbr;

    invoke-direct {p1, p0}, Lbr;-><init>(Ljava/lang/Object;)V

    invoke-static {p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mCompleteFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public static synthetic a(Landroidx/camera/core/imagecapture/RequestWithCallback;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/core/imagecapture/RequestWithCallback;->lambda$new$0(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private abort(Landroidx/camera/core/ImageCaptureException;)V
    .locals 2

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mIsAborted:Z

    iget-object v1, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mCaptureRequestFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iget-object v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mCaptureCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {v0, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    iget-object p0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mCompleteCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic b(Landroidx/camera/core/imagecapture/RequestWithCallback;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/core/imagecapture/RequestWithCallback;->lambda$new$1(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private checkOnImageCaptured()V
    .locals 1

    iget-object p0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mCaptureFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p0

    const-string v0, "onImageCaptured() must be called before onFinalResult()"

    invoke-static {p0, v0}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mCaptureCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const-string p0, "CaptureCompleteFuture"

    return-object p0
.end method

.method private synthetic lambda$new$1(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mCompleteCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const-string p0, "RequestCompleteFuture"

    return-object p0
.end method

.method private markComplete()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mTakePictureRequest:Landroidx/camera/core/imagecapture/TakePictureRequest;

    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/TakePictureRequest;->isSimultaneousCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mTakePictureRequest:Landroidx/camera/core/imagecapture/TakePictureRequest;

    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/TakePictureRequest;->isFormatProcessedInSimultaneousCapture()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mTakePictureRequest:Landroidx/camera/core/imagecapture/TakePictureRequest;

    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/TakePictureRequest;->isSimultaneousCapture()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mCompleteFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "The callback can only complete once."

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    :cond_1
    iget-object p0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mCompleteCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method private onFailure(Landroidx/camera/core/ImageCaptureException;)V
    .locals 0

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    iget-object p0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mTakePictureRequest:Landroidx/camera/core/imagecapture/TakePictureRequest;

    invoke-virtual {p0, p1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->onError(Landroidx/camera/core/ImageCaptureException;)V

    return-void
.end method


# virtual methods
.method public abortAndSendErrorToApp(Landroidx/camera/core/ImageCaptureException;)V
    .locals 1

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    iget-object v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mCompleteFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroidx/camera/core/imagecapture/RequestWithCallback;->abort(Landroidx/camera/core/ImageCaptureException;)V

    invoke-direct {p0, p1}, Landroidx/camera/core/imagecapture/RequestWithCallback;->onFailure(Landroidx/camera/core/ImageCaptureException;)V

    return-void
.end method

.method public abortSilentlyAndRetry()V
    .locals 4

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    iget-object v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mCompleteFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/camera/core/ImageCaptureException;

    const-string v1, "The request is aborted silently and retried."

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v3, v1, v2}, Landroidx/camera/core/ImageCaptureException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Landroidx/camera/core/imagecapture/RequestWithCallback;->abort(Landroidx/camera/core/ImageCaptureException;)V

    iget-object v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mRetryControl:Landroidx/camera/core/imagecapture/TakePictureRequest$RetryControl;

    iget-object p0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mTakePictureRequest:Landroidx/camera/core/imagecapture/TakePictureRequest;

    invoke-interface {v0, p0}, Landroidx/camera/core/imagecapture/TakePictureRequest$RetryControl;->retryRequest(Landroidx/camera/core/imagecapture/TakePictureRequest;)V

    return-void
.end method

.method public getCaptureFuture()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    iget-object p0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mCaptureFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object p0
.end method

.method public getCompleteFuture()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    iget-object p0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mCompleteFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object p0
.end method

.method public getTakePictureRequest()Landroidx/camera/core/imagecapture/TakePictureRequest;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mTakePictureRequest:Landroidx/camera/core/imagecapture/TakePictureRequest;

    return-object p0
.end method

.method public isAborted()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mIsAborted:Z

    return p0
.end method

.method public onCaptureFailure(Landroidx/camera/core/ImageCaptureException;)V
    .locals 2

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    iget-boolean v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mIsAborted:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mTakePictureRequest:Landroidx/camera/core/imagecapture/TakePictureRequest;

    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/TakePictureRequest;->decrementRetryCounter()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Landroidx/camera/core/imagecapture/RequestWithCallback;->onFailure(Landroidx/camera/core/ImageCaptureException;)V

    :cond_1
    invoke-direct {p0}, Landroidx/camera/core/imagecapture/RequestWithCallback;->markComplete()V

    iget-object v1, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mCaptureCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    invoke-virtual {v1, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    if-eqz v0, :cond_2

    iget-object p1, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mRetryControl:Landroidx/camera/core/imagecapture/TakePictureRequest$RetryControl;

    iget-object p0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mTakePictureRequest:Landroidx/camera/core/imagecapture/TakePictureRequest;

    invoke-interface {p1, p0}, Landroidx/camera/core/imagecapture/TakePictureRequest$RetryControl;->retryRequest(Landroidx/camera/core/imagecapture/TakePictureRequest;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCaptureProcessProgressed(I)V
    .locals 1

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    iget-boolean v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mIsAborted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mTakePictureRequest:Landroidx/camera/core/imagecapture/TakePictureRequest;

    invoke-virtual {p0, p1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->onCaptureProcessProgressed(I)V

    return-void
.end method

.method public onCaptureStarted()V
    .locals 1

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    iget-boolean v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mIsAborted:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mIsStarted:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mIsStarted:Z

    iget-object v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mTakePictureRequest:Landroidx/camera/core/imagecapture/TakePictureRequest;

    invoke-virtual {v0}, Landroidx/camera/core/imagecapture/TakePictureRequest;->getInMemoryCallback()Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/camera/core/ImageCapture$OnImageCapturedCallback;->onCaptureStarted()V

    :cond_1
    iget-object p0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mTakePictureRequest:Landroidx/camera/core/imagecapture/TakePictureRequest;

    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/TakePictureRequest;->getOnDiskCallback()Landroidx/camera/core/ImageCapture$OnImageSavedCallback;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroidx/camera/core/ImageCapture$OnImageSavedCallback;->onCaptureStarted()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onFinalResult(Landroidx/camera/core/ImageCapture$OutputFileResults;)V
    .locals 1

    .line 23
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 24
    iget-boolean v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mIsAborted:Z

    if-eqz v0, :cond_0

    return-void

    .line 25
    :cond_0
    invoke-direct {p0}, Landroidx/camera/core/imagecapture/RequestWithCallback;->checkOnImageCaptured()V

    .line 26
    invoke-direct {p0}, Landroidx/camera/core/imagecapture/RequestWithCallback;->markComplete()V

    .line 27
    iget-object p0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mTakePictureRequest:Landroidx/camera/core/imagecapture/TakePictureRequest;

    invoke-virtual {p0, p1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->onResult(Landroidx/camera/core/ImageCapture$OutputFileResults;)V

    return-void
.end method

.method public onFinalResult(Landroidx/camera/core/ImageProxy;)V
    .locals 1

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    iget-boolean v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mIsAborted:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->close()V

    return-void

    :cond_0
    invoke-direct {p0}, Landroidx/camera/core/imagecapture/RequestWithCallback;->checkOnImageCaptured()V

    invoke-direct {p0}, Landroidx/camera/core/imagecapture/RequestWithCallback;->markComplete()V

    iget-object p0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mTakePictureRequest:Landroidx/camera/core/imagecapture/TakePictureRequest;

    invoke-virtual {p0, p1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->onResult(Landroidx/camera/core/ImageProxy;)V

    return-void
.end method

.method public onImageCaptured()V
    .locals 1

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    iget-boolean v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mIsAborted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mIsStarted:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/camera/core/imagecapture/RequestWithCallback;->onCaptureStarted()V

    :cond_1
    iget-object p0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mCaptureCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method public onPostviewBitmapAvailable(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    iget-boolean v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mIsAborted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mTakePictureRequest:Landroidx/camera/core/imagecapture/TakePictureRequest;

    invoke-virtual {p0, p1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->onPostviewBitmapAvailable(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onProcessFailure(Landroidx/camera/core/ImageCaptureException;)V
    .locals 1

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    iget-boolean v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mIsAborted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroidx/camera/core/imagecapture/RequestWithCallback;->checkOnImageCaptured()V

    invoke-direct {p0}, Landroidx/camera/core/imagecapture/RequestWithCallback;->markComplete()V

    invoke-direct {p0, p1}, Landroidx/camera/core/imagecapture/RequestWithCallback;->onFailure(Landroidx/camera/core/ImageCaptureException;)V

    return-void
.end method

.method public setCaptureRequestFuture(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    iget-object v0, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mCaptureRequestFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "CaptureRequestFuture can only be set once."

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iput-object p1, p0, Landroidx/camera/core/imagecapture/RequestWithCallback;->mCaptureRequestFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method
