.class public final Lyads/to5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Landroid/util/SparseArray;

.field public final c:Lyads/a60;


# direct methods
.method public constructor <init>(Lyads/a60;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lyads/to5;->b:Landroid/util/SparseArray;

    iput-object p1, p0, Lyads/to5;->c:Lyads/a60;

    const/4 p1, -0x1

    iput p1, p0, Lyads/to5;->a:I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    iget-object v0, p0, Lyads/to5;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lyads/to5;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lyads/to5;->c:Lyads/a60;

    iget-object v2, p0, Lyads/to5;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v1, Ll2;

    invoke-virtual {v1, v2}, Ll2;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Lyads/to5;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lyads/to5;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget p1, p0, Lyads/to5;->a:I

    iget-object v0, p0, Lyads/to5;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    :goto_1
    iput p1, p0, Lyads/to5;->a:I

    return-void
.end method

.method public final b(I)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lyads/to5;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lyads/to5;->b:Landroid/util/SparseArray;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    if-lt p1, v1, :cond_1

    iget-object v1, p0, Lyads/to5;->c:Lyads/a60;

    iget-object v3, p0, Lyads/to5;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v1, Ll2;

    invoke-virtual {v1, v3}, Ll2;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Lyads/to5;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    iget v0, p0, Lyads/to5;->a:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lyads/to5;->a:I

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lyads/to5;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lyads/to5;->a:I

    :cond_0
    :goto_0
    iget v0, p0, Lyads/to5;->a:I

    if-lez v0, :cond_1

    iget-object v1, p0, Lyads/to5;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    if-ge p1, v0, :cond_1

    iget v0, p0, Lyads/to5;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lyads/to5;->a:I

    goto :goto_0

    :cond_1
    :goto_1
    iget v0, p0, Lyads/to5;->a:I

    iget-object v1, p0, Lyads/to5;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lyads/to5;->b:Landroid/util/SparseArray;

    iget v1, p0, Lyads/to5;->a:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    if-lt p1, v0, :cond_2

    iget v0, p0, Lyads/to5;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lyads/to5;->a:I

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lyads/to5;->b:Landroid/util/SparseArray;

    iget p0, p0, Lyads/to5;->a:I

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
