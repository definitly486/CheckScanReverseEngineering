.class public final Lyads/px2;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(Lyads/ts1;Lyads/sx2;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    iget-object v0, p1, Lyads/ts1;->i:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lyads/sx2;->a()F

    move-result v0

    invoke-static {v0}, Lw65;->b(F)I

    move-result v0

    :goto_0
    iput v0, p0, Lyads/px2;->a:I

    iget-object v0, p1, Lyads/ts1;->j:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Lyads/sx2;->a()F

    move-result v0

    invoke-static {v0}, Lw65;->b(F)I

    move-result v0

    :goto_1
    iput v0, p0, Lyads/px2;->b:I

    iget-object v0, p1, Lyads/ts1;->k:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_2
    invoke-interface {p2}, Lyads/sx2;->a()F

    move-result v0

    invoke-static {v0}, Lw65;->b(F)I

    move-result v0

    :goto_2
    iput v0, p0, Lyads/px2;->c:I

    iget-object p1, p1, Lyads/ts1;->l:Ljava/lang/Integer;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_3

    :cond_3
    invoke-interface {p2}, Lyads/sx2;->a()F

    move-result p1

    invoke-static {p1}, Lw65;->b(F)I

    move-result p1

    :goto_3
    iput p1, p0, Lyads/px2;->d:I

    return-void
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    iget p2, p0, Lyads/px2;->a:I

    iget p3, p0, Lyads/px2;->b:I

    iget p4, p0, Lyads/px2;->c:I

    iget p0, p0, Lyads/px2;->d:I

    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
