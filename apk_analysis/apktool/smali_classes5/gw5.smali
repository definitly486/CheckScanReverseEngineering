.class public abstract Lgw5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I


# virtual methods
.method public abstract a()I
.end method

.method public final b(FI)V
    .locals 4

    int-to-float p2, p2

    add-float/2addr p2, p1

    invoke-virtual {p0}, Lgw5;->a()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    int-to-float p1, p1

    cmpg-float v1, p2, p1

    if-nez v1, :cond_0

    const p2, 0x38d1b717    # 1.0E-4f

    sub-float p2, p1, p2

    :cond_0
    float-to-int v1, p2

    add-int/lit8 v2, v1, 0x1

    int-to-float v3, v2

    cmpl-float p1, v3, p1

    if-gtz p1, :cond_4

    if-gez v1, :cond_1

    goto :goto_2

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    rem-float/2addr p2, p1

    invoke-virtual {p0, p2, v1, v2}, Lgw5;->c(FII)V

    iget p1, p0, Lgw5;->a:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_3

    if-le v1, p1, :cond_2

    invoke-static {p1, v1}, Lkx6;->n(II)Ly74;

    move-result-object p1

    invoke-virtual {p1}, Lw74;->b()Lx74;

    move-result-object p1

    :goto_0
    iget-boolean p2, p1, Lx74;->d:Z

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lu74;->nextInt()I

    move-result p2

    invoke-virtual {p0, p2}, Lgw5;->d(I)V

    goto :goto_0

    :cond_2
    iget p1, p0, Lgw5;->b:I

    if-ge v2, p1, :cond_3

    invoke-virtual {p0, p1}, Lgw5;->d(I)V

    new-instance p1, Ly74;

    add-int/lit8 p2, v1, 0x2

    iget v3, p0, Lgw5;->b:I

    invoke-direct {p1, p2, v3, v0}, Lw74;-><init>(III)V

    invoke-virtual {p1}, Lw74;->b()Lx74;

    move-result-object p1

    :goto_1
    iget-boolean p2, p1, Lx74;->d:Z

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lu74;->nextInt()I

    move-result p2

    invoke-virtual {p0, p2}, Lgw5;->d(I)V

    goto :goto_1

    :cond_3
    iput v1, p0, Lgw5;->a:I

    iput v2, p0, Lgw5;->b:I

    :cond_4
    :goto_2
    return-void
.end method

.method public abstract c(FII)V
.end method

.method public abstract d(I)V
.end method
