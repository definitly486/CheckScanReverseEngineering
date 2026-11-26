.class public final Lyads/dt1;
.super Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic b:Lyads/et1;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lyads/et1;)V
    .locals 0

    iput-object p1, p0, Lyads/dt1;->a:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lyads/dt1;->b:Lyads/et1;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const v1, 0x8000

    if-eq v0, v1, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lyads/dt1;->b:Lyads/et1;

    sget v1, Lyads/et1;->k:I

    move-object v1, p2

    :cond_1
    invoke-virtual {v0}, Lyads/ng6;->h()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4

    instance-of v2, v1, Lyads/pi2;

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_3

    check-cast v1, Landroid/view/View;

    goto :goto_0

    :cond_3
    move-object v1, v3

    :goto_0
    if-nez v1, :cond_1

    :cond_4
    move-object v1, v3

    :goto_1
    if-eqz v1, :cond_7

    iget-object v0, p0, Lyads/dt1;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lyads/dt1;->b:Lyads/et1;

    iget-object v1, v1, Lyads/ng6;->a:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    if-eq v1, v0, :cond_7

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lyads/dt1;->b:Lyads/et1;

    iget-object v1, v1, Lyads/ng6;->a:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    if-le v0, v1, :cond_6

    const/16 v0, 0x1000

    goto :goto_2

    :cond_6
    const/16 v0, 0x2000

    :goto_2
    iget-object v1, p0, Lyads/dt1;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0, v3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    :cond_7
    :goto_3
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method
