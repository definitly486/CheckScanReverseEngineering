.class public interface abstract Loe9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw18;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Lw18;"
    }
.end annotation


# direct methods
.method public static e(III)Lhn2;
    .locals 1

    const/4 v0, -0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Lhn2$b;->a:Lhn2$b;

    return-object p0

    :cond_0
    sub-int/2addr p0, p2

    if-lez p0, :cond_1

    invoke-static {p0}, Lhn2$a;->a(I)V

    new-instance p1, Lhn2$a;

    invoke-direct {p1, p0}, Lhn2$a;-><init>(I)V

    return-object p1

    :cond_1
    sub-int/2addr p1, p2

    if-lez p1, :cond_2

    invoke-static {p1}, Lhn2$a;->a(I)V

    new-instance p0, Lhn2$a;

    invoke-direct {p0, p1}, Lhn2$a;-><init>(I)V

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(Le02;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Lt18;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-interface {p0}, Loe9;->getSize()Lt18;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lc31;

    invoke-static {p1}, Lzya;->b(Le02;)Le02;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lc31;-><init>(ILe02;)V

    invoke-virtual {v0}, Lc31;->u()V

    invoke-interface {p0}, Loe9;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v1, Lne9;

    invoke-direct {v1, p0, p1, v0}, Lne9;-><init>(Loe9;Landroid/view/ViewTreeObserver;Lc31;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    new-instance v2, Lme9;

    invoke-direct {v2, p0, p1, v1}, Lme9;-><init>(Loe9;Landroid/view/ViewTreeObserver;Lne9;)V

    invoke-virtual {v0, v2}, Lc31;->n(Lnl3;)V

    invoke-virtual {v0}, Lc31;->s()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    return-object p0
.end method

.method public c(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void

    :cond_0
    invoke-interface {p0}, Loe9;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public d()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getSize()Lt18;
    .locals 6

    invoke-interface {p0}, Loe9;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-interface {p0}, Loe9;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-interface {p0}, Loe9;->d()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {p0}, Loe9;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-interface {p0}, Loe9;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    add-int/2addr v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    invoke-static {v0, v2, v5}, Loe9;->e(III)Lhn2;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {p0}, Loe9;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_3

    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_3
    invoke-interface {p0}, Loe9;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-interface {p0}, Loe9;->d()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Loe9;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-interface {p0}, Loe9;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    add-int v4, p0, v3

    :cond_4
    invoke-static {v1, v2, v4}, Loe9;->e(III)Lhn2;

    move-result-object p0

    if-nez p0, :cond_5

    :goto_2
    const/4 p0, 0x0

    return-object p0

    :cond_5
    new-instance v1, Lt18;

    invoke-direct {v1, v0, p0}, Lt18;-><init>(Lhn2;Lhn2;)V

    return-object v1
.end method

.method public abstract getView()Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
