.class public final Lyads/sm2;
.super Lyads/cq;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lyads/z83;Lyads/y83;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lyads/cq;-><init>(Landroid/view/ViewGroup;Lyads/z83;Lyads/y83;)V

    return-void
.end method


# virtual methods
.method public final a(II)I
    .locals 1

    .line 33
    sget v0, Lyads/rv3;->a:I

    .line 34
    sget-object v0, Lyads/vj5;->b:[Lyads/vj5;

    .line 35
    iget-object v0, p0, Lyads/cq;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 36
    invoke-super {p0, p1, p2}, Lyads/cq;->a(II)I

    move-result p0

    return p0
.end method

.method public final a(Lyads/nu5;IF)I
    .locals 0

    const p0, 0x3c23d70a    # 0.01f

    cmpg-float p0, p3, p0

    if-gez p0, :cond_0

    invoke-virtual {p1, p2}, Lyads/nu5;->a(I)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1, p2}, Lyads/nu5;->a(I)I

    move-result p0

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lyads/nu5;->a(I)I

    move-result p1

    int-to-float p2, p0

    sub-int/2addr p1, p0

    int-to-float p0, p1

    mul-float/2addr p0, p3

    add-float/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public final a(IF)Z
    .locals 0

    .line 32
    const/4 p0, 0x1

    return p0
.end method
