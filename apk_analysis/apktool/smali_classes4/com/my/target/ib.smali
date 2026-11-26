.class public Lcom/my/target/ib;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/my/target/e1$a;


# static fields
.field public static final synthetic i:I


# instance fields
.field public final b:Lcom/my/target/b0;

.field public final c:Lcom/my/target/i0;

.field public final d:Lcom/my/target/r1;

.field public final e:Lcom/my/target/e1;

.field public f:Z

.field public final g:Lcom/my/target/c1;

.field public h:Le6a;


# direct methods
.method public constructor <init>(Lcom/my/target/i0;Lcom/my/target/r1;Lcom/my/target/e1;Lcom/my/target/b0;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/ib;->f:Z

    new-instance v0, Lcom/my/target/c1;

    new-instance v1, Lq9;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lq9;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Lcom/my/target/c1;-><init>(Lcom/my/target/c1$a;)V

    iput-object v0, p0, Lcom/my/target/ib;->g:Lcom/my/target/c1;

    new-instance v0, Ld6a;

    invoke-direct {v0}, Le6a;-><init>()V

    iput-object v0, p0, Lcom/my/target/ib;->h:Le6a;

    iput-object p4, p0, Lcom/my/target/ib;->b:Lcom/my/target/b0;

    iput-object p3, p0, Lcom/my/target/ib;->e:Lcom/my/target/e1;

    iput-object p1, p0, Lcom/my/target/ib;->c:Lcom/my/target/i0;

    iput-object p2, p0, Lcom/my/target/ib;->d:Lcom/my/target/r1;

    new-instance p4, Lko9;

    invoke-direct {p4, p5}, Lko9;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lyu9;

    invoke-direct {v0, p5}, Lyu9;-><init>(Landroid/content/Context;)V

    sget v2, Lyu9;->r:I

    iget-object v0, v0, Lyu9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p3, Landroid/widget/LinearLayout;

    invoke-direct {p3, p5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x70

    invoke-static {v0, p5}, Ll3a;->d(ILandroid/content/Context;)I

    move-result v0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {p5, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p5, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sget v1, Lko9;->k:I

    iget-object p4, p4, Lko9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p4, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p4

    invoke-virtual {p5, p4, p4, p4, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const p4, 0x800033

    iput p4, p5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, p5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string p4, "age_restriction_view"

    invoke-static {p1, p4}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const p4, 0x800035

    iput p4, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2}, Lcom/my/target/r1;->getCloseButton()Lcom/my/target/e6;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Lcom/my/target/r1;->getAdChoicesButton()Lcom/my/target/e6;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "buttons_view"

    invoke-static {p2, p1}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/my/target/ib;->b:Lcom/my/target/b0;

    .line 18
    iget-object p0, p0, Lcom/my/target/b0;->h:Lcom/my/target/m2$a;

    .line 19
    invoke-virtual {p0}, Lcom/my/target/m2$a;->a()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/my/target/ib;->b:Lcom/my/target/b0;

    iget-object p1, p0, Lcom/my/target/b0;->e:Landroid/os/Handler;

    iget-object v0, p0, Lcom/my/target/b0;->f:Ljj2;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/my/target/b0;->h:Lcom/my/target/m2$a;

    const/4 p1, 0x1

    iget-object p0, p0, Lcom/my/target/m2$a;->a:Lcom/my/target/m2;

    iput-boolean p1, p0, Lcom/my/target/r;->i:Z

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/my/target/ib;->c:Lcom/my/target/i0;

    invoke-virtual {v0}, Lcom/my/target/i0;->getAgeRestrictionsTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/ib;->e:Lcom/my/target/e1;

    if-ne v1, v0, :cond_0

    const/16 v0, 0x80

    goto :goto_0

    :cond_0
    const/16 v0, 0x800

    :goto_0
    iget-boolean v1, p0, Lcom/my/target/ib;->f:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/my/target/ib;->h:Le6a;

    new-instance v2, Lup9;

    invoke-direct {v2, v0, v1}, Lup9;-><init>(ILe6a;)V

    goto :goto_1

    :cond_1
    new-instance v2, Lgia;

    invoke-direct {v2}, Lgia;-><init>()V

    :goto_1
    iget-object p0, p0, Lcom/my/target/ib;->b:Lcom/my/target/b0;

    iget-object v3, p0, Lcom/my/target/b0;->h:Lcom/my/target/m2$a;

    iget-object v4, p0, Lcom/my/target/b0;->c:Lwv9;

    invoke-static {v2}, Ly14;->j(Lpfa;)Lcha;

    move-result-object v7

    iget-object p0, p0, Lcom/my/target/b0;->b:Lcom/my/target/ib;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v6, 0x1

    move-object v5, p1

    invoke-virtual/range {v3 .. v8}, Lcom/my/target/m2$a;->g(Lao9;Ljava/lang/String;ILcha;Landroid/content/Context;)V

    return-void
.end method

.method public final c(Landroid/webkit/WebView;)V
    .locals 0

    iget-object p0, p0, Lcom/my/target/ib;->b:Lcom/my/target/b0;

    iget-object p0, p0, Lcom/my/target/b0;->h:Lcom/my/target/m2$a;

    invoke-virtual {p0, p1}, Lcom/my/target/m2$a;->c(Landroid/webkit/WebView;)V

    return-void
.end method

.method public getCloseButton()Lcom/my/target/e6;
    .locals 0

    iget-object p0, p0, Lcom/my/target/ib;->d:Lcom/my/target/r1;

    invoke-virtual {p0}, Lcom/my/target/r1;->getCloseButton()Lcom/my/target/e6;

    move-result-object p0

    return-object p0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 9

    iget-object v0, p0, Lcom/my/target/ib;->d:Lcom/my/target/r1;

    invoke-virtual {v0}, Lcom/my/target/r1;->getCloseButton()Lcom/my/target/e6;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/ib;->b:Lcom/my/target/b0;

    if-ne p1, v1, :cond_0

    iget-object p0, v2, Lcom/my/target/b0;->h:Lcom/my/target/m2$a;

    iget-object p1, v2, Lcom/my/target/b0;->c:Lwv9;

    invoke-virtual {p0, p1}, Lcom/my/target/m2$a;->e(Lao9;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/my/target/r1;->getAdChoicesButton()Lcom/my/target/e6;

    move-result-object v0

    const/4 v5, 0x0

    if-ne v0, p1, :cond_3

    iget-object p0, v2, Lcom/my/target/b0;->c:Lwv9;

    iget-object p0, p0, Lao9;->H:Lcom/my/target/q;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, v2, Lcom/my/target/b0;->b:Lcom/my/target/ib;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, v2, Lcom/my/target/b0;->g:Lcom/my/target/o;

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/my/target/q;->b:Ljava/lang/String;

    invoke-static {p1, p0, v5, v5, v5}, Ly14;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Intent;)Z

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/my/target/o;->b()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/my/target/ib;->c:Lcom/my/target/i0;

    invoke-virtual {v0}, Lcom/my/target/i0;->getAdsIcon()Landroid/widget/ImageView;

    move-result-object v1

    if-ne v1, p1, :cond_5

    iget-object p0, v2, Lcom/my/target/b0;->c:Lwv9;

    iget-object p0, p0, Lao9;->H:Lcom/my/target/q;

    if-eqz p0, :cond_4

    iget-object p0, p0, Lcom/my/target/q;->b:Ljava/lang/String;

    iget-object p1, v2, Lcom/my/target/b0;->b:Lcom/my/target/ib;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0, v5, v5, v5}, Ly14;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Intent;)Z

    :cond_4
    :goto_0
    return-void

    :cond_5
    invoke-virtual {v0}, Lcom/my/target/i0;->getAgeRestrictionsTextView()Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_6

    const/16 p1, 0x80

    goto :goto_1

    :cond_6
    const/16 p1, 0x800

    :goto_1
    iget-boolean v0, p0, Lcom/my/target/ib;->f:Z

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/my/target/ib;->h:Le6a;

    new-instance v0, Lup9;

    invoke-direct {v0, p1, p0}, Lup9;-><init>(ILe6a;)V

    goto :goto_2

    :cond_7
    new-instance v0, Lgia;

    invoke-direct {v0}, Lgia;-><init>()V

    :goto_2
    iget-object v3, v2, Lcom/my/target/b0;->h:Lcom/my/target/m2$a;

    iget-object v4, v2, Lcom/my/target/b0;->c:Lwv9;

    invoke-static {v0}, Ly14;->j(Lpfa;)Lcha;

    move-result-object v7

    iget-object p0, v2, Lcom/my/target/b0;->b:Lcom/my/target/ib;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v6, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/my/target/m2$a;->g(Lao9;Ljava/lang/String;ILcha;Landroid/content/Context;)V

    return-void
.end method

.method public setHtmlSource(Lwv9;)V
    .locals 2

    iget-object v0, p0, Lcom/my/target/ib;->e:Lcom/my/target/e1;

    invoke-virtual {v0, p0}, Lcom/my/target/e1;->setBannerWebViewListener(Lcom/my/target/e1$a;)V

    iget-object v1, p1, Lwv9;->X:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/my/target/e1;->setData(Ljava/lang/String;)V

    iget-boolean p0, p1, Lwv9;->Z:Z

    invoke-virtual {v0, p0}, Lcom/my/target/e1;->setForceMediaPlayback(Z)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/my/target/ib;->b:Lcom/my/target/b0;

    iget-object p1, p0, Lcom/my/target/b0;->e:Landroid/os/Handler;

    iget-object v0, p0, Lcom/my/target/b0;->f:Ljj2;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/my/target/b0;->h:Lcom/my/target/m2$a;

    const/4 p1, 0x1

    iget-object p0, p0, Lcom/my/target/m2$a;->a:Lcom/my/target/m2;

    iput-boolean p1, p0, Lcom/my/target/r;->i:Z

    return-void
.end method

.method public setRemainingAllowCloseDelay(I)V
    .locals 0

    iget-object p0, p0, Lcom/my/target/ib;->d:Lcom/my/target/r1;

    invoke-virtual {p0}, Lcom/my/target/r1;->getProgress()Landroid/widget/TextView;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setShowingChoiceButton(Z)V
    .locals 0

    iget-object p0, p0, Lcom/my/target/ib;->d:Lcom/my/target/r1;

    invoke-virtual {p0}, Lcom/my/target/r1;->getAdChoicesButton()Lcom/my/target/e6;

    move-result-object p0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
