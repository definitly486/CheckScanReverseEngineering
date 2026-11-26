.class public final Lyads/qx3;
.super Lyads/cq;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lyads/z83;Lyads/y83;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lyads/cq;-><init>(Landroid/view/ViewGroup;Lyads/z83;Lyads/y83;)V

    return-void
.end method


# virtual methods
.method public final a(Lyads/nu5;IF)I
    .locals 0

    if-lez p2, :cond_0

    .line 60
    invoke-virtual {p1}, Lyads/nu5;->a()I

    move-result p0

    return p0

    :cond_0
    const p0, 0x3c23d70a    # 0.01f

    cmpg-float p0, p3, p0

    const/4 p2, 0x0

    if-gez p0, :cond_2

    .line 61
    iget p0, p1, Lyads/nu5;->b:I

    if-gez p0, :cond_1

    .line 62
    iget-object p0, p1, Lyads/nu5;->e:Lyads/mu5;

    check-cast p0, Lyr9;

    invoke-virtual {p0, p2}, Lyr9;->a(I)I

    move-result p0

    iput p0, p1, Lyads/nu5;->b:I

    :cond_1
    return p0

    .line 63
    :cond_2
    iget p0, p1, Lyads/nu5;->b:I

    if-gez p0, :cond_3

    .line 64
    iget-object p0, p1, Lyads/nu5;->e:Lyads/mu5;

    check-cast p0, Lyr9;

    invoke-virtual {p0, p2}, Lyr9;->a(I)I

    move-result p0

    iput p0, p1, Lyads/nu5;->b:I

    .line 65
    :cond_3
    invoke-virtual {p1}, Lyads/nu5;->a()I

    move-result p1

    int-to-float p2, p0

    sub-int/2addr p1, p0

    int-to-float p0, p1

    mul-float/2addr p0, p3

    add-float/2addr p0, p2

    .line 66
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public final a(IF)Z
    .locals 2

    iget-object v0, p0, Lyads/cq;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-ne p1, v1, :cond_3

    const/4 p1, 0x0

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_3

    :cond_1
    iget-object p1, p0, Lyads/cq;->d:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    iget-object p0, p0, Lyads/cq;->d:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/nu5;

    iget p1, p0, Lyads/nu5;->b:I

    if-gez p1, :cond_2

    iget-object p1, p0, Lyads/nu5;->e:Lyads/mu5;

    check-cast p1, Lyr9;

    invoke-virtual {p1, v0}, Lyr9;->a(I)I

    move-result p1

    iput p1, p0, Lyads/nu5;->b:I

    :cond_2
    invoke-virtual {p0}, Lyads/nu5;->a()I

    move-result p0

    if-eq p1, p0, :cond_3

    :goto_0
    return v1

    :cond_3
    return v0
.end method
