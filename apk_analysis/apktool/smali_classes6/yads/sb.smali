.class public final Lyads/sb;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x2

    .line 19
    invoke-direct {p0, v0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    const v0, 0x7fffffff

    .line 20
    iput v0, p0, Lyads/sb;->a:I

    .line 21
    iput v0, p0, Lyads/sb;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7fffffff

    .line 32
    iput p1, p0, Lyads/sb;->a:I

    .line 33
    iput p1, p0, Lyads/sb;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const p1, 0x7fffffff

    .line 26
    iput p1, p0, Lyads/sb;->a:I

    .line 27
    iput p1, p0, Lyads/sb;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const p1, 0x7fffffff

    .line 23
    iput p1, p0, Lyads/sb;->a:I

    .line 24
    iput p1, p0, Lyads/sb;->b:I

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    const p1, 0x7fffffff

    .line 29
    iput p1, p0, Lyads/sb;->a:I

    .line 30
    iput p1, p0, Lyads/sb;->b:I

    return-void
.end method

.method public constructor <init>(Lyads/ro1;)V
    .locals 1

    .line 34
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const v0, 0x7fffffff

    .line 35
    iput v0, p0, Lyads/sb;->a:I

    .line 36
    iput v0, p0, Lyads/sb;->b:I

    .line 37
    iget v0, p1, Lyads/ro1;->g:I

    .line 38
    iput v0, p0, Lyads/sb;->a:I

    .line 39
    iget p1, p1, Lyads/ro1;->h:I

    .line 40
    iput p1, p0, Lyads/sb;->b:I

    return-void
.end method

.method public constructor <init>(Lyads/sb;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    const v0, 0x7fffffff

    iput v0, p0, Lyads/sb;->a:I

    iput v0, p0, Lyads/sb;->b:I

    iget v0, p1, Lyads/sb;->a:I

    iput v0, p0, Lyads/sb;->a:I

    iget p1, p1, Lyads/sb;->b:I

    iput p1, p0, Lyads/sb;->b:I

    return-void
.end method
