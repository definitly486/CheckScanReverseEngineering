.class public final Lo7a;
.super Ly14;
.source "SourceFile"


# instance fields
.field public final o:Lvda;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lvda;

    invoke-direct {v0}, Lvda;-><init>()V

    iput-object v0, p0, Lo7a;->o:Lvda;

    return-void
.end method


# virtual methods
.method public final U(Luy9;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2

    const-string v0, "DiskCache: Save image - "

    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Luy9;->k()V

    const-string v1, ".img"

    invoke-virtual {p1, p3, v1}, Luy9;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, p3}, Luy9;->b(Ljava/io/InputStream;Ljava/io/File;)Ljava/io/File;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    iget-object p1, p0, Lo7a;->o:Lvda;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    iput-object p0, p1, Lvda;->c:Ljava/lang/Object;

    return-void

    :cond_0
    const/4 p2, 0x0

    iput-boolean p2, p1, Lvda;->a:Z

    const-string p2, "Image request error - can\'t save image to disk cache"

    iput-object p2, p1, Lvda;->d:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "HttpImageRequest: Load in cache error - "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lo7a;->o:Lvda;

    iget-object p0, p0, Lvda;->d:Ljava/lang/String;

    invoke-static {p1, p0, v1}, Li01;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
