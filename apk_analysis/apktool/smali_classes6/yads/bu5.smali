.class public final Lyads/bu5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/oy3;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lyads/ny3;)Landroid/media/MediaCodec;
    .locals 2

    iget-object v0, p0, Lyads/ny3;->a:Lyads/vy3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lyads/ny3;->a:Lyads/vy3;

    iget-object p0, p0, Lyads/vy3;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createCodec:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyads/b06;->a(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p0

    invoke-static {}, Lyads/b06;->a()V

    return-object p0
.end method


# virtual methods
.method public final a(Lyads/ny3;)Lyads/qy3;
    .locals 3

    const/4 p0, 0x0

    :try_start_0
    invoke-static {p1}, Lyads/bu5;->b(Lyads/ny3;)Landroid/media/MediaCodec;

    move-result-object p0

    const-string v0, "configureCodec"

    invoke-static {v0}, Lyads/b06;->a(Ljava/lang/String;)V

    iget-object v0, p1, Lyads/ny3;->b:Landroid/media/MediaFormat;

    iget-object v1, p1, Lyads/ny3;->d:Landroid/view/Surface;

    iget-object p1, p1, Lyads/ny3;->e:Landroid/media/MediaCrypto;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-static {}, Lyads/b06;->a()V

    const-string p1, "startCodec"

    invoke-static {p1}, Lyads/b06;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/MediaCodec;->start()V

    invoke-static {}, Lyads/b06;->a()V

    new-instance p1, Lyads/cu5;

    invoke-direct {p1, p0}, Lyads/cu5;-><init>(Landroid/media/MediaCodec;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaCodec;->release()V

    :cond_0
    throw p1
.end method
