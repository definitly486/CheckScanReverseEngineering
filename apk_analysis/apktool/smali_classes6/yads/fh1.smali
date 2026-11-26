.class public final Lyads/fh1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;

.field public final b:Lyads/uw;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Lyads/uw;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lyads/fh1;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lyads/fh1;->b:Lyads/uw;

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    :try_start_0
    iget-object p1, p0, Lyads/fh1;->b:Lyads/uw;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no bytes stored in cached bitmap"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget p1, Lyads/cr3;->a:I

    sget-object p1, Lyads/vj5;->b:[Lyads/vj5;

    invoke-static {}, Lyads/cr3;->a()V

    goto :goto_0

    :catch_1
    sget p1, Lyads/cr3;->a:I

    sget-object p1, Lyads/vj5;->b:[Lyads/vj5;

    invoke-static {}, Lyads/cr3;->a()V

    :goto_0
    iget-object p0, p0, Lyads/fh1;->b:Lyads/uw;

    iget-object p0, p0, Lyads/uw;->b:Landroid/net/Uri;

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    move-object p0, p1

    :goto_1
    if-eqz p0, :cond_1

    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/graphics/ImageDecoder;->createSource(Ljava/io/File;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    :catch_2
    sget p0, Lyads/cr3;->a:I

    sget-object p0, Lyads/vj5;->b:[Lyads/vj5;

    sget p0, Lyads/rv3;->a:I

    goto :goto_2

    :cond_1
    sget p0, Lyads/rv3;->a:I

    :goto_2
    move-object p0, p1

    :goto_3
    if-eqz p0, :cond_2

    :try_start_2
    invoke-static {p0}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_4

    :catch_3
    sget p0, Lyads/cr3;->a:I

    sget-object p0, Lyads/vj5;->b:[Lyads/vj5;

    invoke-static {}, Lyads/cr3;->a()V

    :cond_2
    :goto_4
    return-object p1
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljs2;->e(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyads/fh1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/nh1;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lyads/iu3;->setImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lyads/fh1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/nh1;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lyads/fh1;->b:Lyads/uw;

    iget-object v0, v0, Lyads/uw;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lyads/iu3;->setImage(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lyads/fh1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/nh1;

    if-eqz p0, :cond_2

    sget p1, Lcom/yandex/mobile/ads/R$id;->monetization_ads_divkit_image_loaded_flag:I

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method
