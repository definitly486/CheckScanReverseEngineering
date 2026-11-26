.class public final Lyads/q0;
.super Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;
.source "SourceFile"


# instance fields
.field public final a:Lyads/ln;

.field public final b:Ljava/util/ArrayList;

.field public final c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field public d:Lyads/m0;

.field public e:Z


# direct methods
.method public constructor <init>(Lyads/ln;)V
    .locals 3

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object p1, p0, Lyads/q0;->a:Lyads/ln;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyads/q0;->b:Ljava/util/ArrayList;

    new-instance v0, Lk72;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lk72;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lyads/q0;->c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    new-instance v0, Lyads/k0;

    invoke-direct {v0, p0}, Lyads/k0;-><init>(Lyads/q0;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lyads/q0;->a(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lyads/q0;->a:Lyads/ln;

    new-instance v0, Lyads/l0;

    invoke-direct {v0, p0}, Lyads/l0;-><init>(Lyads/q0;)V

    invoke-virtual {p1, v0}, Lyads/ln;->setOnBackClickListener(Lyads/mn;)V

    return-void
.end method

.method public static final a(Lyads/q0;)V
    .locals 1

    .line 100
    iget-boolean v0, p0, Lyads/q0;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lyads/q0;->a:Lyads/ln;

    .line 101
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p0}, Lyads/q0;->a()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 86
    iget-boolean v0, p0, Lyads/q0;->e:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lyads/q0;->e:Z

    .line 88
    iget-object v1, p0, Lyads/q0;->a:Lyads/ln;

    .line 89
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_1

    .line 90
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 91
    invoke-virtual {p0, v3}, Lyads/q0;->a(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_1
    :goto_1
    iget-object v0, p0, Lyads/q0;->b:Ljava/util/ArrayList;

    .line 93
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/n0;

    .line 94
    iget-object v2, v1, Lyads/n0;->a:Ljava/lang/ref/WeakReference;

    .line 95
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-nez v2, :cond_2

    goto :goto_2

    .line 96
    :cond_2
    iget v1, v1, Lyads/n0;->b:I

    .line 97
    invoke-virtual {v2, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_2

    .line 98
    :cond_3
    iget-object p0, p0, Lyads/q0;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 0

    .line 99
    iget-boolean p0, p0, Lyads/q0;->e:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method

.method public final a(Landroid/view/ViewGroup;)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    return-void

    :cond_2
    invoke-static {v0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lzo7;

    move-result-object v1

    invoke-interface {v1}, Lzo7;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-static {v2, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lyads/q0;->b:Ljava/util/ArrayList;

    new-instance v5, Lyads/n0;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lyads/n0;-><init>(Ljava/lang/ref/WeakReference;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v0}, Lyads/q0;->a(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public final getItemDelegate()Landroidx/core/view/AccessibilityDelegateCompat;
    .locals 1

    iget-object v0, p0, Lyads/q0;->d:Lyads/m0;

    if-nez v0, :cond_0

    new-instance v0, Lyads/m0;

    invoke-direct {v0, p0}, Lyads/m0;-><init>(Lyads/q0;)V

    iput-object v0, p0, Lyads/q0;->d:Lyads/m0;

    :cond_0
    return-object v0
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    iget-boolean p1, p0, Lyads/q0;->e:Z

    if-eqz p1, :cond_0

    const-class p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object p1

    invoke-virtual {p1}, Lzk1;->a()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-class p1, Landroid/widget/Button;

    invoke-static {p1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object p1

    invoke-virtual {p1}, Lzk1;->a()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    const/16 p1, 0x10

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setImportantForAccessibility(Z)V

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScreenReaderFocusable(Z)V

    iget-object p1, p0, Lyads/q0;->a:Lyads/ln;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lyads/q0;->a(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 11

    const/16 v0, 0x10

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_a

    iget-boolean v0, p0, Lyads/q0;->e:Z

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iput-boolean v2, p0, Lyads/q0;->e:Z

    iget-object v0, p0, Lyads/q0;->a:Lyads/ln;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_1

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lyads/q0;->a(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lyads/q0;->a:Lyads/ln;

    invoke-virtual {p0, v0}, Lyads/q0;->a(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lyads/q0;->a:Lyads/ln;

    invoke-static {v0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lzo7;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Lnl3;

    sget-object v4, Lyads/o0;->b:Lyads/o0;

    aput-object v4, v3, v1

    sget-object v4, Lyads/p0;->b:Lyads/p0;

    aput-object v4, v3, v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lzo7;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    move-object v4, v5

    goto :goto_5

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    array-length v7, v3

    move v8, v1

    :goto_3
    if-ge v8, v7, :cond_5

    aget-object v9, v3, v8

    invoke-interface {v9, v4}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Comparable;

    invoke-interface {v9, v6}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Comparable;

    invoke-static {v10, v9}, Lpp1;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_5
    move v9, v1

    :goto_4
    if-lez v9, :cond_3

    move-object v4, v6

    goto :goto_2

    :cond_6
    :goto_5
    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_8

    instance-of v0, v4, Lyads/pi2;

    if-eqz v0, :cond_7

    move-object v0, v4

    check-cast v0, Lyads/pi2;

    invoke-virtual {v0}, Lyads/pi2;->j()Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_8

    :cond_7
    move-object v5, v4

    :cond_8
    if-eqz v5, :cond_9

    invoke-static {v5}, Lyads/tq;->a(Landroid/view/View;)V

    :cond_9
    move v0, v2

    goto :goto_6

    :cond_a
    move v0, v1

    :goto_6
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    if-nez p0, :cond_c

    if-eqz v0, :cond_b

    goto :goto_7

    :cond_b
    return v1

    :cond_c
    :goto_7
    return v2
.end method
