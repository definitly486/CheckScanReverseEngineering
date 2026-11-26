.class public final Landroidx/camera/camera2/adapter/CaptureConfigAdapter$buildImageClosingRequestListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/Request$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/adapter/CaptureConfigAdapter;->buildImageClosingRequestListener(Landroidx/camera/core/ImageProxy;)Landroidx/camera/camera2/pipe/Request$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $imageProxyToClose:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroidx/camera/core/ImageProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroidx/camera/core/ImageProxy;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/camera/camera2/adapter/CaptureConfigAdapter$buildImageClosingRequestListener$1;->$imageProxyToClose:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAborted(Landroidx/camera/camera2/pipe/Request;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CaptureConfigAdapter$buildImageClosingRequestListener$1;->$imageProxyToClose:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p0}, Landroidx/camera/camera2/adapter/CaptureConfigAdapter;->access$buildImageClosingRequestListener$closeImageProxy(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public onComplete-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CaptureConfigAdapter$buildImageClosingRequestListener$1;->$imageProxyToClose:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p0}, Landroidx/camera/camera2/adapter/CaptureConfigAdapter;->access$buildImageClosingRequestListener$closeImageProxy(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public onFailed-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/RequestFailure;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CaptureConfigAdapter$buildImageClosingRequestListener$1;->$imageProxyToClose:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p0}, Landroidx/camera/camera2/adapter/CaptureConfigAdapter;->access$buildImageClosingRequestListener$closeImageProxy(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public onTotalCaptureResult-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/adapter/CaptureConfigAdapter$buildImageClosingRequestListener$1;->$imageProxyToClose:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p0}, Landroidx/camera/camera2/adapter/CaptureConfigAdapter;->access$buildImageClosingRequestListener$closeImageProxy(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method
