.class public abstract Lyads/cq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/og6;


# instance fields
.field public final a:Landroid/view/ViewGroup;

.field public final b:Lyads/z83;

.field public final c:Lyads/y83;

.field public final d:Landroid/util/SparseArray;

.field public e:I

.field public f:F


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lyads/z83;Lyads/y83;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lyads/cq;->d:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Lyads/cq;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lyads/cq;->f:F

    iput-object p1, p0, Lyads/cq;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Lyads/cq;->b:Lyads/z83;

    iput-object p3, p0, Lyads/cq;->c:Lyads/y83;

    return-void
.end method


# virtual methods
.method public a(II)I
    .locals 4

    iget-object v0, p0, Lyads/cq;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/nu5;

    if-nez v0, :cond_1

    iget-object v0, p0, Lyads/cq;->c:Lyads/y83;

    check-cast v0, Ljv;

    iget-object v0, v0, Ljv;->c:Ljava/lang/Object;

    check-cast v0, Lyads/oq;

    invoke-virtual {v0}, Lyads/oq;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    new-instance v2, Lyads/nu5;

    new-instance v3, Lyr9;

    invoke-direct {v3, p0, v1, p2}, Lyr9;-><init>(Lyads/cq;II)V

    invoke-direct {v2, v0, v3}, Lyads/nu5;-><init>(ILyads/mu5;)V

    iget-object p2, p0, Lyads/cq;->d:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v0, v2

    :cond_1
    iget p1, p0, Lyads/cq;->e:I

    iget p2, p0, Lyads/cq;->f:F

    invoke-virtual {p0, v0, p1, p2}, Lyads/cq;->a(Lyads/nu5;IF)I

    move-result p0

    sget p1, Lyads/rv3;->a:I

    sget-object p1, Lyads/vj5;->b:[Lyads/vj5;

    return p0
.end method

.method public final a(III)I
    .locals 1

    .line 59
    iget-object v0, p0, Lyads/cq;->b:Lyads/z83;

    iget-object p0, p0, Lyads/cq;->a:Landroid/view/ViewGroup;

    check-cast v0, Lwo0;

    iget-object v0, v0, Lwo0;->b:Ljava/lang/Object;

    check-cast v0, Lyads/oq;

    invoke-virtual {v0, p0, p1, p2, p3}, Lyads/oq;->a(Landroid/view/ViewGroup;III)I

    move-result p0

    return p0
.end method

.method public abstract a(Lyads/nu5;IF)I
.end method
