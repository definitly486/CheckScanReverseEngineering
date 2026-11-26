.class public final Li78;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lh24;Lzz5;)Landroid/graphics/ImageDecoder$Source;
    .locals 3

    invoke-interface {p0}, Lh24;->getFileSystem()Lw93;

    move-result-object v0

    sget-object v1, Lw93;->b:Lke4;

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lh24;->J()Lj46;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj46;->toFile()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/ImageDecoder;->createSource(Ljava/io/File;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lh24;->getMetadata()Lh24$a;

    move-result-object p0

    instance-of v0, p0, Lds;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lzz5;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    check-cast p0, Lds;

    iget-object p0, p0, Lds;->a:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Lcy1;

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_2

    :try_start_0
    check-cast p0, Lcy1;

    iget-object p0, p0, Lcy1;->a:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v0

    sget v2, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {p1, v0, v1, v2}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    new-instance p1, Lh78;

    invoke-direct {p1, p0}, Lh78;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    invoke-static {p1}, Landroid/graphics/ImageDecoder;->createSource(Ljava/util/concurrent/Callable;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_2
    instance-of v0, p0, Lr47;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Lr47;

    iget-object v1, v0, Lr47;->a:Ljava/lang/String;

    iget-object v2, p1, Lzz5;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p1, Lzz5;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget p1, v0, Lr47;->b:I

    invoke-static {p0, p1}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/res/Resources;I)Landroid/graphics/ImageDecoder$Source;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of p1, p0, Lyw0;

    if-eqz p1, :cond_4

    check-cast p0, Lyw0;

    iget-object p0, p0, Lyw0;->a:Ljava/nio/ByteBuffer;

    invoke-static {p0}, Landroid/graphics/ImageDecoder;->createSource(Ljava/nio/ByteBuffer;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p0

    return-object p0

    :catch_0
    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method
