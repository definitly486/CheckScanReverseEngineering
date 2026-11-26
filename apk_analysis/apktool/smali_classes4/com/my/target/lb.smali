.class public Lcom/my/target/lb;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final synthetic o:I


# instance fields
.field public final b:Lcom/my/target/i0;

.field public final c:Landroid/widget/LinearLayout;

.field public final d:Lcom/my/target/r1;

.field public e:Le6a;

.field public f:Z

.field public g:Lcom/my/target/s3;

.field public h:Lyu9;

.field public i:Lh14;

.field public j:Lh14;

.field public final k:Lcom/my/target/i6;

.field public l:I

.field public final m:Lcom/my/target/j0;

.field public final n:Lcom/my/target/c1;


# direct methods
.method public constructor <init>(Lcom/my/target/i0;Lcom/my/target/r1;Lcom/my/target/i6;Lcom/my/target/j0;Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0, p5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ld6a;

    invoke-direct {v0}, Le6a;-><init>()V

    iput-object v0, p0, Lcom/my/target/lb;->e:Le6a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/lb;->f:Z

    new-instance v1, Lcom/my/target/c1;

    new-instance v2, Lfh1;

    const/4 v3, 0x6

    invoke-direct {v2, p0, v3}, Lfh1;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v1, v2}, Lcom/my/target/c1;-><init>(Lcom/my/target/c1$a;)V

    iput-object v1, p0, Lcom/my/target/lb;->n:Lcom/my/target/c1;

    iput-object p3, p0, Lcom/my/target/lb;->k:Lcom/my/target/i6;

    iput-object p4, p0, Lcom/my/target/lb;->m:Lcom/my/target/j0;

    iput-object p1, p0, Lcom/my/target/lb;->b:Lcom/my/target/i0;

    iput-object p2, p0, Lcom/my/target/lb;->d:Lcom/my/target/r1;

    new-instance p4, Lko9;

    invoke-direct {p4, p5}, Lko9;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lyu9;

    invoke-direct {v1, p5}, Lyu9;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/my/target/lb;->h:Lyu9;

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/my/target/lb;->l:I

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iget v3, p0, Lcom/my/target/lb;->l:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v1, p0, Lcom/my/target/lb;->c:Landroid/widget/LinearLayout;

    const-string v3, "content"

    invoke-static {v1, v3}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1, p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object p3, p0, Lcom/my/target/lb;->h:Lyu9;

    sget v0, Lyu9;->r:I

    iget-object p3, p3, Lyu9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p3, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p3

    invoke-virtual {p0, p3}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance p3, Landroid/widget/LinearLayout;

    invoke-direct {p3, p5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x70

    invoke-static {v0, p5}, Ll3a;->d(ILandroid/content/Context;)I

    move-result v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p5, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p5, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sget v2, Lko9;->k:I

    iget-object p4, p4, Lko9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p4, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p4

    invoke-virtual {p5, p4, p4, p4, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const p4, 0x800033

    iput p4, p5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, p5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string p4, "age_restriction_view"

    invoke-static {p1, p4}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

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
.method public getCloseButton()Lcom/my/target/e6;
    .locals 0

    iget-object p0, p0, Lcom/my/target/lb;->d:Lcom/my/target/r1;

    invoke-virtual {p0}, Lcom/my/target/r1;->getCloseButton()Lcom/my/target/e6;

    move-result-object p0

    return-object p0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 13

    iget-object v0, p0, Lcom/my/target/lb;->d:Lcom/my/target/r1;

    invoke-virtual {v0}, Lcom/my/target/r1;->getCloseButton()Lcom/my/target/e6;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/lb;->m:Lcom/my/target/j0;

    if-ne p1, v1, :cond_0

    iget-object p0, v2, Lcom/my/target/j0;->d:Lcom/my/target/m2$a;

    iget-object p1, v2, Lcom/my/target/j0;->e:Lvy9;

    invoke-virtual {p0, p1}, Lcom/my/target/m2$a;->e(Lao9;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/my/target/r1;->getAdChoicesButton()Lcom/my/target/e6;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_3

    iget-object p0, v2, Lcom/my/target/j0;->e:Lvy9;

    iget-object p0, p0, Lao9;->H:Lcom/my/target/q;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, v2, Lcom/my/target/j0;->g:Lcom/my/target/lb;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, v2, Lcom/my/target/j0;->f:Lcom/my/target/o;

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/my/target/q;->b:Ljava/lang/String;

    invoke-static {p1, p0, v1, v1, v1}, Ly14;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Intent;)Z

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/my/target/o;->b()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/my/target/lb;->b:Lcom/my/target/i0;

    invoke-virtual {v0}, Lcom/my/target/i0;->getAdsIcon()Landroid/widget/ImageView;

    move-result-object v3

    if-ne v3, p1, :cond_5

    iget-object p0, v2, Lcom/my/target/j0;->e:Lvy9;

    iget-object p0, p0, Lao9;->H:Lcom/my/target/q;

    if-eqz p0, :cond_4

    iget-object p0, p0, Lcom/my/target/q;->b:Ljava/lang/String;

    iget-object p1, v2, Lcom/my/target/j0;->g:Lcom/my/target/lb;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0, v1, v1, v1}, Ly14;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Intent;)Z

    :cond_4
    :goto_0
    return-void

    :cond_5
    iget-object v1, p0, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    const/4 v6, 0x2

    const/16 v3, 0x40

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/my/target/s3;->getCtaButton()Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_7

    iget-object v1, p0, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    invoke-virtual {v1}, Lcom/my/target/s3;->getCtaButton()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean p1, p0, Lcom/my/target/lb;->f:Z

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/my/target/lb;->e:Le6a;

    new-instance p1, Lup9;

    invoke-direct {p1, v3, p0}, Lup9;-><init>(ILe6a;)V

    goto :goto_1

    :cond_6
    new-instance p1, Lgia;

    invoke-direct {p1}, Lgia;-><init>()V

    :goto_1
    iget-object v3, v2, Lcom/my/target/j0;->d:Lcom/my/target/m2$a;

    iget-object v4, v2, Lcom/my/target/j0;->e:Lvy9;

    invoke-static {p1}, Ly14;->j(Lpfa;)Lcha;

    move-result-object v7

    iget-object p0, v2, Lcom/my/target/j0;->g:Lcom/my/target/lb;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/my/target/m2$a;->g(Lao9;Ljava/lang/String;ILcha;Landroid/content/Context;)V

    return-void

    :cond_7
    iget-object v1, p0, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    const/4 v10, 0x1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/my/target/s3;->getCtaButton()Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_8

    move v6, v3

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/my/target/s3;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v1

    if-ne p1, v1, :cond_9

    move v6, v10

    goto :goto_2

    :cond_9
    invoke-virtual {v0}, Lcom/my/target/i0;->getAgeRestrictionsTextView()Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_a

    const/16 v6, 0x80

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/my/target/s3;->getDescriptionTextView()Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_b

    goto :goto_2

    :cond_b
    const/16 v6, 0x800

    :goto_2
    iget-boolean p1, p0, Lcom/my/target/lb;->f:Z

    if-eqz p1, :cond_c

    iget-object p0, p0, Lcom/my/target/lb;->e:Le6a;

    new-instance p1, Lup9;

    invoke-direct {p1, v6, p0}, Lup9;-><init>(ILe6a;)V

    goto :goto_3

    :cond_c
    new-instance p1, Lgia;

    invoke-direct {p1}, Lgia;-><init>()V

    :goto_3
    iget-object v7, v2, Lcom/my/target/j0;->d:Lcom/my/target/m2$a;

    iget-object v8, v2, Lcom/my/target/j0;->e:Lvy9;

    invoke-static {p1}, Ly14;->j(Lpfa;)Lcha;

    move-result-object v11

    iget-object p0, v2, Lcom/my/target/j0;->g:Lcom/my/target/lb;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    const/4 v9, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/my/target/m2$a;->g(Lao9;Ljava/lang/String;ILcha;Landroid/content/Context;)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/my/target/lb;->l:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iget-object v0, p0, Lcom/my/target/lb;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object p1, p0, Lcom/my/target/lb;->m:Lcom/my/target/j0;

    invoke-virtual {p1}, Lcom/my/target/j0;->c()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lyu9;

    invoke-direct {v0, p1}, Lyu9;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/lb;->h:Lyu9;

    sget p1, Lyu9;->r:I

    iget-object v0, v0, Lyu9;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v1, p0, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/my/target/s3;->getDescriptionTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    invoke-virtual {p0}, Lcom/my/target/s3;->getDescriptionTextView()Landroid/widget/TextView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/my/target/s3;->getDescriptionTextView()Landroid/widget/TextView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setIcon(Lh14;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Lxha;->d:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    instance-of v1, v0, Lcom/my/target/uh;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/my/target/s3;->getLogoImageView()Lcom/my/target/zh;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    invoke-virtual {v0}, Lcom/my/target/s3;->getLogoImageView()Lcom/my/target/zh;

    move-result-object v0

    iget-object p1, p1, Lxha;->d:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {p1}, Lr2a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/my/target/zh;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    invoke-virtual {p0}, Lcom/my/target/s3;->getLogoImageView()Lcom/my/target/zh;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setRemainingAllowCloseDelay(I)V
    .locals 0

    iget-object p0, p0, Lcom/my/target/lb;->d:Lcom/my/target/r1;

    invoke-virtual {p0}, Lcom/my/target/r1;->getProgress()Landroid/widget/TextView;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setShowingChoiceButton(Z)V
    .locals 0

    iget-object p0, p0, Lcom/my/target/lb;->d:Lcom/my/target/r1;

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

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v1, p0, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/my/target/s3;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    invoke-virtual {p0}, Lcom/my/target/s3;->getTitleTextView()Landroid/widget/TextView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/my/target/s3;->getTitleTextView()Landroid/widget/TextView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setTitleAction(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v1, p0, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/my/target/s3;->getCtaButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/my/target/lb;->g:Lcom/my/target/s3;

    invoke-virtual {p0}, Lcom/my/target/s3;->getCtaButton()Landroid/widget/Button;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/my/target/s3;->getCtaButton()Landroid/widget/Button;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
