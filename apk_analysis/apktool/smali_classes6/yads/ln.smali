.class public Lyads/ln;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# instance fields
.field public final a:Lyads/nn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lyads/nn;

    invoke-direct {p1, p0}, Lyads/nn;-><init>(Lyads/ln;)V

    iput-object p1, p0, Lyads/ln;->a:Lyads/nn;

    return-void
.end method


# virtual methods
.method public final onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lyads/ln;->a:Lyads/nn;

    invoke-virtual {v0, p1, p2}, Lyads/nn;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    iget-object p0, p0, Lyads/ln;->a:Lyads/nn;

    invoke-virtual {p0}, Lyads/nn;->a()V

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    iget-object p0, p0, Lyads/ln;->a:Lyads/nn;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lyads/nn;->a()V

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public setOnBackClickListener(Lyads/mn;)V
    .locals 1

    if-eqz p1, :cond_0

    const/high16 v0, 0x20000

    goto :goto_0

    :cond_0
    const/high16 v0, 0x40000

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    iget-object p0, p0, Lyads/ln;->a:Lyads/nn;

    iput-object p1, p0, Lyads/nn;->b:Lyads/mn;

    invoke-virtual {p0}, Lyads/nn;->a()V

    return-void
.end method
