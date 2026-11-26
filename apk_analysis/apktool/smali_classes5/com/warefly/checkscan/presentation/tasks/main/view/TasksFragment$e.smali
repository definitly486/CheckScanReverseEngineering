.class public final Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$e;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$e;->e:Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;

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

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$e;->e:Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->i:Leu1;

    if-eqz p0, :cond_0

    iget-object p0, p0, Leu1;->i:Lm8;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lm8;->f(I)Lpz3;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    instance-of p2, p0, Lnm8;

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    move p2, p3

    goto :goto_1

    :cond_1
    sget-object p2, Lyl8;->a:Lyl8;

    invoke-static {p0, p2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    :goto_1
    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    instance-of p3, p0, Lzl8;

    :goto_2
    const/16 p2, 0x8

    if-eqz p3, :cond_3

    invoke-static {p2}, Lpl2;->e(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->top:I

    return-void

    :cond_3
    instance-of p3, p0, Lir0;

    if-eqz p3, :cond_4

    const/16 p0, 0x10

    invoke-static {p0}, Lpl2;->e(I)I

    return-void

    :cond_4
    instance-of p0, p0, Lro8;

    if-eqz p0, :cond_5

    const/16 p0, 0x18

    invoke-static {p0}, Lpl2;->e(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->top:I

    return-void

    :cond_5
    invoke-static {p2}, Lpl2;->e(I)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->top:I

    return-void
.end method
