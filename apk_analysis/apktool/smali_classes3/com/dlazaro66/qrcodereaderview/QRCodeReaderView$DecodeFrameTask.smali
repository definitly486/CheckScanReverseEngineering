.class Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecodeFrameTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "[B",
        "Ljava/lang/Void;",
        "Ln57;",
        ">;"
    }
.end annotation


# instance fields
.field private final hintsRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/Map<",
            "Lnd2;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final qrToViewPointTransformer:Lcom/dlazaro66/qrcodereaderview/QRToViewPointTransformer;

.field private final viewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;",
            "Ljava/util/Map<",
            "Lnd2;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Lcom/dlazaro66/qrcodereaderview/QRToViewPointTransformer;

    invoke-direct {v0}, Lcom/dlazaro66/qrcodereaderview/QRToViewPointTransformer;-><init>()V

    iput-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;->qrToViewPointTransformer:Lcom/dlazaro66/qrcodereaderview/QRToViewPointTransformer;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;->viewRef:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;->hintsRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private transformToViewCoordinates(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;[Lw57;)[Landroid/graphics/PointF;
    .locals 7

    invoke-static {p1}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->access$600(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)I

    move-result v0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/dlazaro66/qrcodereaderview/Orientation;->LANDSCAPE:Lcom/dlazaro66/qrcodereaderview/Orientation;

    :goto_0
    move-object v4, v0

    goto :goto_2

    :cond_1
    :goto_1
    sget-object v0, Lcom/dlazaro66/qrcodereaderview/Orientation;->PORTRAIT:Lcom/dlazaro66/qrcodereaderview/Orientation;

    goto :goto_0

    :goto_2
    new-instance v5, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {v5, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {p1}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->access$200(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)Ld11;

    move-result-object v0

    iget-object v0, v0, Ld11;->a:Ll01;

    iget-object v6, v0, Ll01;->c:Landroid/graphics/Point;

    invoke-static {p1}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->access$200(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)Ld11;

    move-result-object p1

    iget p1, p1, Ld11;->h:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    :goto_3
    move v3, v0

    goto :goto_4

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :goto_4
    iget-object v1, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;->qrToViewPointTransformer:Lcom/dlazaro66/qrcodereaderview/QRToViewPointTransformer;

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Lcom/dlazaro66/qrcodereaderview/QRToViewPointTransformer;->transform([Lw57;ZLcom/dlazaro66/qrcodereaderview/Orientation;Landroid/graphics/Point;Landroid/graphics/Point;)[Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 128
    check-cast p1, [[B

    invoke-virtual {p0, p1}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;->doInBackground([[B)Ln57;

    move-result-object p0

    return-object p0
.end method

.method public varargs doInBackground([[B)Ln57;
    .locals 9

    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {v1}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->access$200(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)Ld11;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v4, p1, v2

    invoke-static {v1}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->access$000(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)I

    move-result v5

    invoke-static {v1}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->access$100(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lx86;

    move v7, v5

    move v8, v6

    invoke-direct/range {v3 .. v8}, Lx86;-><init>([BIIII)V

    new-instance p1, Ljz3;

    invoke-direct {p1, v3}, Ljz3;-><init>(Lx86;)V

    new-instance v0, Loi0;

    invoke-direct {v0, p1}, Loi0;-><init>(Ljz3;)V

    :try_start_0
    invoke-static {v1}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->access$300(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)Luu6;

    move-result-object p1

    iget-object p0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;->hintsRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-virtual {p1, v0, p0}, Luu6;->a(Loi0;Ljava/util/Map;)Ln57;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/zxing/ChecksumException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->access$300(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)Luu6;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->access$400()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FormatException"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {v1}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->access$300(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)Luu6;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_3

    :catch_2
    :try_start_2
    invoke-static {}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->access$400()Ljava/lang/String;

    move-result-object p0

    const-string p1, "No QR Code found"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :goto_2
    invoke-static {}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->access$400()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ChecksumException"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_3
    const/4 p0, 0x0

    return-object p0

    :goto_4
    invoke-static {v1}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->access$300(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)Luu6;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw p0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p1, Ln57;

    invoke-virtual {p0, p1}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;->onPostExecute(Ln57;)V

    return-void
.end method

.method public onPostExecute(Ln57;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->access$500(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$OnQRCodeReadListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Ln57;->b:[Lw57;

    invoke-direct {p0, v0, v1}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$DecodeFrameTask;->transformToViewCoordinates(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;[Lw57;)[Landroid/graphics/PointF;

    move-result-object p0

    invoke-static {v0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;->access$500(Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView;)Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$OnQRCodeReadListener;

    move-result-object v0

    iget-object p1, p1, Ln57;->a:Ljava/lang/String;

    invoke-interface {v0, p1, p0}, Lcom/dlazaro66/qrcodereaderview/QRCodeReaderView$OnQRCodeReadListener;->onQRCodeRead(Ljava/lang/String;[Landroid/graphics/PointF;)V

    :cond_0
    return-void
.end method
