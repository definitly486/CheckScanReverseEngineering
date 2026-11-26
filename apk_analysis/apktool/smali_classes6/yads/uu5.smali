.class public Lyads/uu5;
.super Lyads/nr;
.source "SourceFile"

# interfaces
.implements Lyads/gq;


# instance fields
.field public I:Lyads/fq;

.field public J:Ljava/util/List;

.field public K:Lyads/qg6;

.field public L:Ljava/lang/String;

.field public M:Lyads/x52;

.field public N:Lyads/su5;

.field public O:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1, v0, v1}, Lyads/uu5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lyads/uu5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lyads/nr;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lyads/uu5;->O:Z

    invoke-virtual {p0, p1}, Lyads/nr;->setTabMode(I)V

    invoke-virtual {p0, p1}, Lyads/nr;->setTabIndicatorHeight(I)V

    new-instance p1, Lyads/ru5;

    invoke-direct {p1, p0}, Lyads/ru5;-><init>(Lyads/uu5;)V

    invoke-virtual {p0, p1}, Lyads/nr;->setOnTabSelectedListener(Lyads/fr;)V

    new-instance p1, Lyads/a35;

    invoke-direct {p1}, Lyads/a35;-><init>()V

    new-instance p2, Lyads/tu5;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lyads/tu5;-><init>(Landroid/content/Context;)V

    iget-object p3, p1, Lyads/a35;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v0, "TabTitlesLayoutView.TAB_HEADER"

    invoke-virtual {p3, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lyads/uu5;->K:Lyads/qg6;

    iput-object v0, p0, Lyads/uu5;->L:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lyads/xu5;
    .locals 0

    iget-object p1, p0, Lyads/uu5;->K:Lyads/qg6;

    iget-object p0, p0, Lyads/uu5;->L:Ljava/lang/String;

    invoke-interface {p1, p0}, Lyads/qg6;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lyads/xu5;

    return-object p0
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Lyads/nr;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lyads/uu5;->O:Z

    :cond_0
    return v0
.end method

.method public final onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lyads/nr;->onScrollChanged(IIII)V

    iget-object p1, p0, Lyads/uu5;->N:Lyads/su5;

    if-eqz p1, :cond_0

    iget-boolean p2, p0, Lyads/uu5;->O:Z

    if-eqz p2, :cond_0

    check-cast p1, Lps7;

    iget-object p2, p1, Lps7;->b:Ljava/lang/Object;

    check-cast p2, Lyads/c62;

    iget-object p1, p1, Lps7;->c:Ljava/lang/Object;

    check-cast p1, Lyads/tt;

    invoke-static {p2, p1}, Lyads/c62;->a(Lyads/c62;Lyads/tt;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lyads/uu5;->O:Z

    :cond_0
    return-void
.end method

.method public setData(Ljava/util/List;ILyads/fs2;Lyads/hs2;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lyads/kq;",
            ">;I",
            "Lyads/fs2;",
            "Lyads/hs2;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lyads/uu5;->J:Ljava/util/List;

    invoke-virtual {p0}, Lyads/nr;->e()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_5

    invoke-virtual {p0}, Lyads/nr;->c()Lyads/kr;

    move-result-object v3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/kq;

    check-cast v4, Lyads/t02;

    iget-object v5, v4, Lyads/t02;->a:Lyads/t52;

    iget-object v5, v5, Lyads/t52;->b:Lyads/as2;

    iget-object v4, v4, Lyads/t02;->c:Lyads/fs2;

    invoke-virtual {v5, v4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Lyads/kr;->a:Ljava/lang/CharSequence;

    iget-object v4, v3, Lyads/kr;->d:Lyads/xu5;

    if-eqz v4, :cond_2

    iget-object v5, v4, Lyads/xu5;->j:Lyads/kr;

    if-nez v5, :cond_1

    const/4 v5, 0x0

    goto :goto_2

    :cond_1
    iget-object v5, v5, Lyads/kr;->a:Ljava/lang/CharSequence;

    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v4, Lyads/xu5;->i:Lyads/wu5;

    if-eqz v5, :cond_2

    check-cast v5, Ly3;

    invoke-virtual {v5, v4}, Ly3;->b(Lyads/xu5;)V

    :cond_2
    iget-object v4, v3, Lyads/kr;->d:Lyads/xu5;

    iget-object v5, p0, Lyads/uu5;->M:Lyads/x52;

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {v4, v5, p3, p4}, Lyads/d62;->a(Lyads/xu5;Lyads/x52;Lyads/fs2;Lyads/hs2;)V

    :goto_3
    if-ne v2, p2, :cond_4

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    move v4, v1

    :goto_4
    invoke-virtual {p0, v3, v4}, Lyads/nr;->a(Lyads/kr;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public setHost(Lyads/fq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyads/fq;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lyads/uu5;->I:Lyads/fq;

    return-void
.end method

.method public setIntermediateState(IF)V
    .locals 0

    return-void
.end method

.method public setOnScrollChangedListener(Lyads/su5;)V
    .locals 0

    iput-object p1, p0, Lyads/uu5;->N:Lyads/su5;

    return-void
.end method

.method public setTabColors(IIII)V
    .locals 0

    invoke-virtual {p0, p3, p1}, Lyads/nr;->setTabTextColors(II)V

    invoke-virtual {p0, p2}, Lyads/nr;->setSelectedTabIndicatorColor(I)V

    invoke-virtual {p0, p4}, Lyads/nr;->setTabBackgroundColor(I)V

    return-void
.end method

.method public setTabTitleStyle(Lyads/x52;)V
    .locals 0

    iput-object p1, p0, Lyads/uu5;->M:Lyads/x52;

    return-void
.end method

.method public setTypefaceProvider(Lyads/cf2;)V
    .locals 0

    iput-object p1, p0, Lyads/nr;->j:Lyads/cf2;

    return-void
.end method

.method public setViewPool(Lyads/qg6;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lyads/uu5;->K:Lyads/qg6;

    iput-object p2, p0, Lyads/uu5;->L:Ljava/lang/String;

    return-void
.end method
