.class public final Lwp3;
.super Lns2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lns2<",
        "Lup3;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lup3;",
            ">;"
        }
    .end annotation

    const-class p0, Lup3;

    return-object p0
.end method

.method public final getSize()I
    .locals 3

    iget-object p0, p0, Lns2;->b:Landroid/graphics/drawable/Drawable;

    check-cast p0, Lup3;

    iget-object p0, p0, Lup3;->b:Lup3$a;

    iget-object p0, p0, Lup3$a;->a:Lzp3;

    iget-object v0, p0, Lzp3;->a:Lu68;

    iget-object v1, v0, Lu68;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    iget-object v2, v0, Lu68;->i:[B

    array-length v2, v2

    add-int/2addr v1, v2

    iget-object v0, v0, Lu68;->j:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v1

    iget p0, p0, Lzp3;->o:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final initialize()V
    .locals 0

    iget-object p0, p0, Lns2;->b:Landroid/graphics/drawable/Drawable;

    check-cast p0, Lup3;

    iget-object p0, p0, Lup3;->b:Lup3$a;

    iget-object p0, p0, Lup3$a;->a:Lzp3;

    iget-object p0, p0, Lzp3;->l:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void
.end method

.method public final recycle()V
    .locals 6

    iget-object p0, p0, Lns2;->b:Landroid/graphics/drawable/Drawable;

    check-cast p0, Lup3;

    invoke-virtual {p0}, Lup3;->stop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lup3;->e:Z

    iget-object p0, p0, Lup3;->b:Lup3$a;

    iget-object p0, p0, Lup3$a;->a:Lzp3;

    iget-object v1, p0, Lzp3;->d:Lp37;

    iget-object v2, p0, Lzp3;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lzp3;->l:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v4, p0, Lzp3;->e:Lij0;

    invoke-interface {v4, v2}, Lij0;->c(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lzp3;->l:Landroid/graphics/Bitmap;

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lzp3;->f:Z

    iget-object v2, p0, Lzp3;->i:Lzp3$a;

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Lp37;->c(Lwk8;)V

    iput-object v3, p0, Lzp3;->i:Lzp3$a;

    :cond_1
    iget-object v2, p0, Lzp3;->k:Lzp3$a;

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Lp37;->c(Lwk8;)V

    iput-object v3, p0, Lzp3;->k:Lzp3$a;

    :cond_2
    iget-object v2, p0, Lzp3;->n:Lzp3$a;

    if-eqz v2, :cond_3

    invoke-virtual {v1, v2}, Lp37;->c(Lwk8;)V

    iput-object v3, p0, Lzp3;->n:Lzp3$a;

    :cond_3
    iget-object v1, p0, Lzp3;->a:Lu68;

    iget-object v2, v1, Lu68;->c:Ltp3$a;

    iput-object v3, v1, Lu68;->l:Lbq3;

    iget-object v4, v1, Lu68;->i:[B

    if-eqz v4, :cond_5

    move-object v5, v2

    check-cast v5, Lsp3;

    iget-object v5, v5, Lsp3;->b:Lpr;

    if-nez v5, :cond_4

    goto :goto_0

    :cond_4
    invoke-interface {v5, v4}, Lpr;->put(Ljava/lang/Object;)V

    :cond_5
    :goto_0
    iget-object v4, v1, Lu68;->j:[I

    if-eqz v4, :cond_7

    move-object v5, v2

    check-cast v5, Lsp3;

    iget-object v5, v5, Lsp3;->b:Lpr;

    if-nez v5, :cond_6

    goto :goto_1

    :cond_6
    invoke-interface {v5, v4}, Lpr;->put(Ljava/lang/Object;)V

    :cond_7
    :goto_1
    iget-object v4, v1, Lu68;->m:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_8

    move-object v5, v2

    check-cast v5, Lsp3;

    iget-object v5, v5, Lsp3;->a:Lij0;

    invoke-interface {v5, v4}, Lij0;->c(Landroid/graphics/Bitmap;)V

    :cond_8
    iput-object v3, v1, Lu68;->m:Landroid/graphics/Bitmap;

    iput-object v3, v1, Lu68;->d:Ljava/nio/ByteBuffer;

    iput-object v3, v1, Lu68;->s:Ljava/lang/Boolean;

    iget-object v1, v1, Lu68;->e:[B

    if-eqz v1, :cond_a

    check-cast v2, Lsp3;

    iget-object v2, v2, Lsp3;->b:Lpr;

    if-nez v2, :cond_9

    goto :goto_2

    :cond_9
    invoke-interface {v2, v1}, Lpr;->put(Ljava/lang/Object;)V

    :cond_a
    :goto_2
    iput-boolean v0, p0, Lzp3;->j:Z

    return-void
.end method
