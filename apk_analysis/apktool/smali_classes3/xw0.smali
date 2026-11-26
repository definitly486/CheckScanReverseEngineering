.class public final Lxw0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li47;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxw0$b;,
        Lxw0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li47<",
        "Ljava/nio/ByteBuffer;",
        "Lup3;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lxw0$a;

.field public static final g:Lxw0$b;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/ArrayList;

.field public final c:Lxw0$b;

.field public final d:Lxw0$a;

.field public final e:Lsp3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lxw0$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lxw0;->f:Lxw0$a;

    new-instance v0, Lxw0$b;

    invoke-direct {v0}, Lxw0$b;-><init>()V

    sput-object v0, Lxw0;->g:Lxw0$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lij0;Lpr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lxw0;->a:Landroid/content/Context;

    iput-object p2, p0, Lxw0;->b:Ljava/util/ArrayList;

    sget-object p1, Lxw0;->f:Lxw0$a;

    iput-object p1, p0, Lxw0;->d:Lxw0$a;

    new-instance p1, Lsp3;

    invoke-direct {p1, p3, p4}, Lsp3;-><init>(Lij0;Lpr;)V

    iput-object p1, p0, Lxw0;->e:Lsp3;

    sget-object p1, Lxw0;->g:Lxw0$b;

    iput-object p1, p0, Lxw0;->c:Lxw0$b;

    return-void
.end method

.method public static d(Lbq3;II)I
    .locals 5

    iget v0, p0, Lbq3;->g:I

    div-int/2addr v0, p2

    iget v1, p0, Lbq3;->f:I

    div-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v2, 0x2

    const-string v3, "BufferGifDecoder"

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-le v0, v1, :cond_1

    const-string v1, "Downsampling GIF, sampleSize: "

    const-string v2, ", target dimens: ["

    const-string v4, "x"

    invoke-static {v0, p1, v1, v2, v4}, Lbg;->f(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "], actual dimens: ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lbq3;->f:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lbq3;->g:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILxz5;)Le47;
    .locals 7

    move-object v2, p1

    check-cast v2, Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lxw0;->c:Lxw0$b;

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lxw0$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcq3;

    if-nez v0, :cond_0

    new-instance v0, Lcq3;

    invoke-direct {v0}, Lcq3;-><init>()V

    :cond_0
    move-object v5, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :goto_0
    const/4 v0, 0x0

    iput-object v0, v5, Lcq3;->b:Ljava/nio/ByteBuffer;

    iget-object v0, v5, Lcq3;->a:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    new-instance v0, Lbq3;

    invoke-direct {v0}, Lbq3;-><init>()V

    iput-object v0, v5, Lcq3;->c:Lbq3;

    iput v1, v5, Lcq3;->d:I

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v5, Lcq3;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, v5, Lcq3;->b:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    move-object v1, p0

    move v3, p2

    move v4, p3

    move-object v6, p4

    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lxw0;->c(Ljava/nio/ByteBuffer;IILcq3;Lxz5;)Lwp3;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object p1, v1, Lxw0;->c:Lxw0$b;

    invoke-virtual {p1, v5}, Lxw0$b;->a(Lcq3;)V

    return-object p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    iget-object p1, v1, Lxw0;->c:Lxw0$b;

    invoke-virtual {p1, v5}, Lxw0$b;->a(Lcq3;)V

    throw p0

    :goto_1
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final b(Ljava/lang/Object;Lxz5;)Z
    .locals 1

    check-cast p1, Ljava/nio/ByteBuffer;

    sget-object v0, Ldq3;->b:Lqz5;

    invoke-virtual {p2, v0}, Lxz5;->c(Lqz5;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p0, p0, Lxw0;->b:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/bumptech/glide/load/a;->c(Ljava/util/ArrayList;Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p0

    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c(Ljava/nio/ByteBuffer;IILcq3;Lxz5;)Lwp3;
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "Decoded GIF from stream in "

    const-string v2, "BufferGifDecoder"

    sget v3, Lcv4;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    const/4 v5, 0x2

    :try_start_0
    invoke-virtual/range {p4 .. p4}, Lcq3;->b()Lbq3;

    move-result-object v6

    iget v7, v6, Lbq3;->c:I

    const/4 v8, 0x0

    if-lez v7, :cond_4

    iget v7, v6, Lbq3;->b:I

    if-eqz v7, :cond_0

    goto/16 :goto_3

    :cond_0
    sget-object v7, Ldq3;->a:Lqz5;

    move-object/from16 v9, p5

    invoke-virtual {v9, v7}, Lxz5;->c(Lqz5;)Ljava/lang/Object;

    move-result-object v7

    sget-object v9, Lld2;->PREFER_RGB_565:Lld2;

    if-ne v7, v9, :cond_1

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_0
    move/from16 v12, p2

    move/from16 v13, p3

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :goto_1
    invoke-static {v6, v12, v13}, Lxw0;->d(Lbq3;II)I

    move-result v9

    iget-object v10, v0, Lxw0;->d:Lxw0$a;

    iget-object v11, v0, Lxw0;->e:Lsp3;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Lu68;

    move-object/from16 v14, p1

    invoke-direct {v10, v11, v6, v14, v9}, Lu68;-><init>(Ltp3$a;Lbq3;Ljava/nio/ByteBuffer;I)V

    invoke-virtual {v10, v7}, Lu68;->d(Landroid/graphics/Bitmap$Config;)V

    invoke-virtual {v10}, Lu68;->b()V

    invoke-virtual {v10}, Lu68;->a()Landroid/graphics/Bitmap;

    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v15, :cond_2

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {v3, v4}, Lcv4;->a(J)D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_2
    :try_start_1
    sget-object v14, Lp59;->b:Lp59;

    new-instance v6, Lup3;

    iget-object v0, v0, Lxw0;->a:Landroid/content/Context;

    new-instance v7, Lup3$a;

    new-instance v9, Lzp3;

    invoke-static {v0}, Lcom/bumptech/glide/a;->a(Landroid/content/Context;)Lcom/bumptech/glide/a;

    move-result-object v0

    move-object v11, v10

    move-object v10, v0

    invoke-direct/range {v9 .. v15}, Lzp3;-><init>(Lcom/bumptech/glide/a;Lu68;IILp59;Landroid/graphics/Bitmap;)V

    invoke-direct {v7, v9}, Lup3$a;-><init>(Lzp3;)V

    invoke-direct {v6, v7}, Lup3;-><init>(Lup3$a;)V

    new-instance v0, Lwp3;

    invoke-direct {v0, v6}, Lns2;-><init>(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcv4;->a(J)D

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0

    :cond_4
    :goto_3
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    return-object v8

    :goto_4
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcv4;->a(J)D

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    throw v0
.end method
