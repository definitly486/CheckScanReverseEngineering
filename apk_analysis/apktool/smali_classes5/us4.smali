.class public final Lus4;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field public final synthetic e:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lus4;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lsg;->e(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    iget-object p0, p0, Lus4;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    instance-of p3, p0, Li58;

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    check-cast p0, Li58;

    goto :goto_0

    :cond_0
    move-object p0, p4

    :goto_0
    if-eqz p0, :cond_1

    iget-object p0, p0, Li58;->i:Lm8;

    invoke-virtual {p0, p2}, Lm8;->e(I)Lpz3;

    move-result-object p4

    :cond_1
    instance-of p0, p4, Lqs4;

    if-eqz p0, :cond_5

    rem-int/lit8 p0, p2, 0x2

    const/4 p3, 0x1

    if-nez p0, :cond_2

    move p0, p3

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    if-le p2, p3, :cond_3

    const/16 p2, 0xc

    invoke-static {p2}, Lpl2;->e(I)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    :cond_3
    const/4 p2, 0x6

    if-eqz p0, :cond_4

    invoke-static {p2}, Lpl2;->e(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    return-void

    :cond_4
    invoke-static {p2}, Lpl2;->e(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->left:I

    return-void

    :cond_5
    instance-of p0, p4, Lns4;

    if-eqz p0, :cond_6

    const/16 p0, 0x10

    invoke-static {p0}, Lpl2;->e(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->top:I

    :cond_6
    return-void
.end method
