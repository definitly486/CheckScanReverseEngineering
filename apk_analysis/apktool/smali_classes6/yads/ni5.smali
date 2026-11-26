.class public Lyads/ni5;
.super Lyads/an2;
.source "SourceFile"


# instance fields
.field public n:Lnl3;

.field public o:Lyads/sg3;

.field public final p:Lyads/mi5;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lyads/an2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lj3a;

    invoke-direct {v0, p0, v1}, Lj3a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lyads/mi5;

    invoke-direct {v0, p1}, Lyads/mi5;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setModal(Z)V

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    new-instance v1, Lk3a;

    invoke-direct {v1, p0, v0}, Lk3a;-><init>(Lyads/ni5;Lyads/mi5;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setOverlapAnchor(Z)V

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, -0x1

    invoke-direct {p1, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, v0, Lyads/mi5;->b:Lyads/li5;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lyads/ni5;->p:Lyads/mi5;

    return-void
.end method

.method public static final a(Lyads/ni5;Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lyads/ni5;->o:Lyads/sg3;

    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Lyads/pq;->a(Landroid/view/View;Lyads/sg3;)V

    :cond_0
    iget-object p1, p0, Lyads/ni5;->p:Lyads/mi5;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/ListView;->setSelectionAfterHeaderView()V

    :cond_1
    iget-object p0, p0, Lyads/ni5;->p:Lyads/mi5;

    invoke-virtual {p0}, Lyads/mi5;->show()V

    return-void
.end method

.method public static final a(Lyads/ni5;Lyads/mi5;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    const/4 p2, 0x4

    .line 24
    invoke-virtual {p0, p2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 25
    iget-object p0, p0, Lyads/ni5;->n:Lnl3;

    if-eqz p0, :cond_0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    const-string p0, "android.widget.Spinner"

    return-object p0
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lyads/an2;->onDetachedFromWindow()V

    iget-object v0, p0, Lyads/ni5;->p:Lyads/mi5;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyads/ni5;->p:Lyads/mi5;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    invoke-virtual {p0}, Lyads/an2;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/AppCompatTextView;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lyads/ni5;->p:Lyads/mi5;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lyads/ni5;->p:Lyads/mi5;

    invoke-virtual {p0}, Lyads/mi5;->show()V

    :cond_0
    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lyads/ni5;->p:Lyads/mi5;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lyads/ni5;->p:Lyads/mi5;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public final setFocusTracker(Lyads/sg3;)V
    .locals 0

    iput-object p1, p0, Lyads/ni5;->o:Lyads/sg3;

    return-void
.end method

.method public final setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lyads/ni5;->p:Lyads/mi5;

    iget-object p0, p0, Lyads/mi5;->b:Lyads/li5;

    iput-object p1, p0, Lyads/li5;->a:Ljava/util/List;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final setOnItemSelectedListener(Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lyads/ni5;->n:Lnl3;

    return-void
.end method
