.class public final Lz14$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz14;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/bumptech/glide/load/data/c;

.field public final b:Lpr;

.field public final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lq05;Ljava/util/ArrayList;Lpr;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    invoke-static {p3, v0}, Lr96;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lz14$b;->b:Lpr;

    iput-object p2, p0, Lz14$b;->c:Ljava/util/ArrayList;

    new-instance p2, Lcom/bumptech/glide/load/data/c;

    invoke-direct {p2, p1, p3}, Lcom/bumptech/glide/load/data/c;-><init>(Ljava/io/InputStream;Lpr;)V

    iput-object p2, p0, Lz14$b;->a:Lcom/bumptech/glide/load/data/c;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 6

    iget-object v0, p0, Lz14$b;->a:Lcom/bumptech/glide/load/data/c;

    iget-object v0, v0, Lcom/bumptech/glide/load/data/c;->a:Li07;

    invoke-virtual {v0}, Li07;->reset()V

    iget-object v1, p0, Lz14$b;->b:Lpr;

    const/high16 v2, 0x500000

    invoke-virtual {v0, v2}, Li07;->mark(I)V

    iget-object p0, p0, Lz14$b;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/load/ImageHeaderParser;

    :try_start_0
    invoke-interface {v5, v0, v1}, Lcom/bumptech/glide/load/ImageHeaderParser;->b(Ljava/io/InputStream;Lpr;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Li07;->reset()V

    if-eqz v5, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Li07;->reset()V

    throw p0

    :cond_1
    return v3
.end method

.method public final b()V
    .locals 1

    iget-object p0, p0, Lz14$b;->a:Lcom/bumptech/glide/load/data/c;

    iget-object p0, p0, Lcom/bumptech/glide/load/data/c;->a:Li07;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Li07;->b:[B

    array-length v0, v0

    iput v0, p0, Li07;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final c()I
    .locals 2

    iget-object v0, p0, Lz14$b;->a:Lcom/bumptech/glide/load/data/c;

    iget-object v0, v0, Lcom/bumptech/glide/load/data/c;->a:Li07;

    invoke-virtual {v0}, Li07;->reset()V

    iget-object v1, p0, Lz14$b;->b:Lpr;

    iget-object p0, p0, Lz14$b;->c:Ljava/util/ArrayList;

    invoke-static {p0, v0, v1}, Lcom/bumptech/glide/load/a;->a(Ljava/util/ArrayList;Ljava/io/InputStream;Lpr;)I

    move-result p0

    return p0
.end method

.method public final d(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lz14$b;->a:Lcom/bumptech/glide/load/data/c;

    iget-object v0, v0, Lcom/bumptech/glide/load/data/c;->a:Li07;

    invoke-virtual {v0}, Li07;->reset()V

    invoke-static {v0, p1, p0}, Lqq3;->a(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lz14;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final e()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 2

    iget-object v0, p0, Lz14$b;->a:Lcom/bumptech/glide/load/data/c;

    iget-object v0, v0, Lcom/bumptech/glide/load/data/c;->a:Li07;

    invoke-virtual {v0}, Li07;->reset()V

    iget-object v1, p0, Lz14$b;->b:Lpr;

    iget-object p0, p0, Lz14$b;->c:Ljava/util/ArrayList;

    invoke-static {p0, v0, v1}, Lcom/bumptech/glide/load/a;->b(Ljava/util/ArrayList;Ljava/io/InputStream;Lpr;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p0

    return-object p0
.end method
