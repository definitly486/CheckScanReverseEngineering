.class public abstract Lzza;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public final synthetic e:Lp0b;


# direct methods
.method public constructor <init>(Lp0b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzza;->e:Lp0b;

    iget v0, p1, Lp0b;->f:I

    iput v0, p0, Lzza;->b:I

    invoke-virtual {p1}, Lp0b;->isEmpty()Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lzza;->c:I

    iput v0, p0, Lzza;->d:I

    return-void
.end method


# virtual methods
.method public abstract a(I)Ljava/lang/Object;
.end method

.method public final hasNext()Z
    .locals 0

    iget p0, p0, Lzza;->c:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lzza;->e:Lp0b;

    iget v1, v0, Lp0b;->f:I

    iget v2, p0, Lzza;->b:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lzza;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lzza;->c:I

    iput v1, p0, Lzza;->d:I

    invoke-virtual {p0, v1}, Lzza;->a(I)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lzza;->c:I

    add-int/lit8 v2, v2, 0x1

    iget v0, v0, Lp0b;->g:I

    if-ge v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    iput v2, p0, Lzza;->c:I

    return-object v1

    :cond_1
    invoke-static {}, Lqz0;->e()V

    return-object v3

    :cond_2
    invoke-static {}, Lln;->e()V

    return-object v3
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lzza;->e:Lp0b;

    iget v1, v0, Lp0b;->f:I

    iget v2, p0, Lzza;->b:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lzza;->d:I

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "no calls to next() since the last call to remove()"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaz;->zzf(ZLjava/lang/Object;)V

    iget v1, p0, Lzza;->b:I

    add-int/lit8 v1, v1, 0x20

    iput v1, p0, Lzza;->b:I

    iget v1, p0, Lzza;->d:I

    invoke-virtual {v0}, Lp0b;->b()[Ljava/lang/Object;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Lp0b;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lzza;->c:I

    const/4 v1, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lzza;->c:I

    iput v1, p0, Lzza;->d:I

    return-void

    :cond_1
    invoke-static {}, Lln;->e()V

    return-void
.end method
