.class public final Lc82;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment;)V
    .locals 0

    iput-object p1, p0, Lc82;->e:Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    invoke-static {p1, p2, p3, p4}, Lsg;->e(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    iget-object p0, p0, Lc82;->e:Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/daily/view/DailyTaskFragment;->h:Leu1;

    if-eqz p0, :cond_0

    iget-object p0, p0, Leu1;->i:Lm8;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lm8;->f(I)Lpz3;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    instance-of p4, p0, Lb82;

    const/4 v0, 0x1

    if-eqz p4, :cond_1

    move p4, v0

    goto :goto_1

    :cond_1
    instance-of p4, p0, La82;

    :goto_1
    if-eqz p4, :cond_2

    const/16 p0, 0x10

    invoke-static {p0}, Lpl2;->e(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-void

    :cond_2
    instance-of p4, p0, Lm82;

    if-eqz p4, :cond_3

    move p0, v0

    goto :goto_2

    :cond_3
    instance-of p0, p0, Lj82;

    :goto_2
    if-eqz p0, :cond_5

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    const/16 p3, 0x8

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p0

    sub-int/2addr p0, v0

    if-ne p2, p0, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {p3}, Lpl2;->e(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    :goto_3
    invoke-static {p3}, Lpl2;->e(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_5
    return-void
.end method
