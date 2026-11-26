.class public Lcom/my/target/w4;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lefa;


# static fields
.field public static final synthetic g:I


# instance fields
.field public final b:Lcom/my/target/w1;

.field public c:Lcom/my/target/z0;

.field public final d:Lcom/my/target/w1$b;

.field public final e:Lcom/my/target/w1;

.field public final f:Lcom/my/target/rf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/my/target/w1;Lcom/my/target/w1$b;Lcom/my/target/w1;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/my/target/w4;->b:Lcom/my/target/w1;

    iput-object p3, p0, Lcom/my/target/w4;->d:Lcom/my/target/w1$b;

    iput-object p4, p0, Lcom/my/target/w4;->e:Lcom/my/target/w1;

    new-instance p2, Lko9;

    invoke-direct {p2, p1}, Lko9;-><init>(Landroid/content/Context;)V

    new-instance p3, Lcom/my/target/rf;

    invoke-direct {p3, p1}, Lcom/my/target/rf;-><init>(Landroid/content/Context;)V

    sget p1, Lko9;->e:I

    iget-object p2, p2, Lko9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    new-instance p4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p4, v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget p1, Lko9;->k:I

    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    sget v1, Lko9;->g:I

    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p2

    invoke-virtual {p4, v0, p1, v0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p3, p4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p3, p0, Lcom/my/target/w4;->f:Lcom/my/target/rf;

    invoke-virtual {p0}, Lcom/my/target/w4;->b()V

    return-void
.end method


# virtual methods
.method public final a(Lxda;Z)V
    .locals 10

    iget-object v0, p0, Lcom/my/target/w4;->c:Lcom/my/target/z0;

    iget-object v1, p0, Lcom/my/target/w4;->f:Lcom/my/target/rf;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/my/target/z0;->getTopBar()Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/my/target/w4;->c:Lcom/my/target/z0;

    invoke-interface {v0}, Lcom/my/target/z0;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Lcom/my/target/i0;

    invoke-direct {v3, v0}, Lcom/my/target/i0;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Lcom/my/target/r1;

    invoke-direct {v4, v0}, Lcom/my/target/r1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/my/target/r1;->getSkipButton()Lcom/my/target/e6;

    move-result-object v0

    new-instance v2, Lvfa;

    invoke-direct {v2, p0}, Lvfa;-><init>(Lcom/my/target/w4;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lxda;->Z:Lkha;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v5, Lcom/my/target/f0;

    invoke-direct {v5, v0}, Lcom/my/target/f0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v6, 0x1

    invoke-static {v0, v6}, Lho9;->a(Landroid/content/Context;Z)Lcom/my/target/n;

    move-result-object v0

    move-object v6, v5

    new-instance v5, Lcom/my/target/yj;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/my/target/w4;->d:Lcom/my/target/w1$b;

    invoke-direct {v5, v0, v6, v7, v8}, Lcom/my/target/yj;-><init>(Lcom/my/target/n;Lcom/my/target/f0;Landroid/content/Context;Lu0a;)V

    move-object v0, v2

    new-instance v2, Lcom/my/target/nb;

    if-eqz p2, :cond_2

    move-object v6, v0

    goto :goto_0

    :cond_2
    move-object v6, v1

    :goto_0
    iget-object v8, p0, Lcom/my/target/w4;->d:Lcom/my/target/w1$b;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v7, p0, Lcom/my/target/w4;->b:Lcom/my/target/w1;

    invoke-direct/range {v2 .. v9}, Lcom/my/target/nb;-><init>(Lcom/my/target/i0;Lcom/my/target/r1;Lcom/my/target/yj;Lcom/my/target/rf;Lcom/my/target/z0$a;Lu0a;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/my/target/w4;->c:Lcom/my/target/z0;

    invoke-interface {v2, p1}, Lcom/my/target/z0;->setBanner(Lxda;)V

    goto :goto_2

    :cond_3
    move-object v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v5, Lcom/my/target/i6;

    invoke-direct {v5, v2}, Lcom/my/target/i6;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/my/target/fb;

    if-eqz p2, :cond_4

    move-object v6, v0

    goto :goto_1

    :cond_4
    move-object v6, v1

    :goto_1
    iget-object v7, p0, Lcom/my/target/w4;->b:Lcom/my/target/w1;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/my/target/fb;-><init>(Lcom/my/target/i0;Lcom/my/target/r1;Lcom/my/target/i6;Lcom/my/target/rf;Lcom/my/target/z0$a;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/my/target/w4;->c:Lcom/my/target/z0;

    invoke-interface {v2, p1}, Lcom/my/target/z0;->setBanner(Lxda;)V

    :goto_2
    iget-object p1, p0, Lcom/my/target/w4;->c:Lcom/my/target/z0;

    invoke-interface {p1}, Lcom/my/target/z0;->a()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final b()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lyu9;

    invoke-direct {v1, v0}, Lyu9;-><init>(Landroid/content/Context;)V

    sget v0, Lyu9;->r:I

    iget-object v1, v1, Lyu9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public getInterstitialView()Lcom/my/target/z0;
    .locals 0

    iget-object p0, p0, Lcom/my/target/w4;->c:Lcom/my/target/z0;

    return-object p0
.end method

.method public getProgressBar()Lcom/my/target/rf;
    .locals 0

    iget-object p0, p0, Lcom/my/target/w4;->f:Lcom/my/target/rf;

    return-object p0
.end method

.method public getRootLayout()Landroid/widget/FrameLayout;
    .locals 0

    return-object p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/my/target/w4;->b()V

    return-void
.end method
