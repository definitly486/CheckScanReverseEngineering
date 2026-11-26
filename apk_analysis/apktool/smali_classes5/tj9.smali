.class public final Ltj9;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Luj9;",
        "Lcom/warefly/checkscan/databinding/ItemWithdrawalMiniLogoBannerBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lrj9;


# direct methods
.method public constructor <init>(Lrj9;)V
    .locals 1

    sget-object v0, Ltj9$a;->c:Ltj9$a;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Ltj9;->b:Lrj9;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Luj9;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 7

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemWithdrawalMiniLogoBannerBinding;

    check-cast p2, Luj9;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p2, Luj9;->e:Luj9$a;

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemWithdrawalMiniLogoBannerBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v2, p2, Luj9;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemWithdrawalMiniLogoBannerBinding;->tvDescription:Landroid/widget/TextView;

    iget-object v2, p2, Luj9;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemWithdrawalMiniLogoBannerBinding;->btnAction:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p2, Luj9;->d:Luj9$a;

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemWithdrawalMiniLogoBannerBinding;->btnSecondary:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x2

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/warefly/checkscan/databinding/ItemWithdrawalMiniLogoBannerBinding;->btnAction:Landroid/widget/TextView;

    iget-object v5, v2, Luj9$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Llb7;

    new-instance v6, Lax3;

    invoke-direct {v6, p0, v2, v1}, Lax3;-><init>(Lvd9;Ljava/lang/Object;I)V

    invoke-direct {v5, v6}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v3, p1, Lcom/warefly/checkscan/databinding/ItemWithdrawalMiniLogoBannerBinding;->btnSecondary:Landroid/widget/TextView;

    iget-object v5, v0, Luj9$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Llb7;

    new-instance v6, Lbx3;

    invoke-direct {v6, p0, v0, v2}, Lbx3;-><init>(Lvd9;Ljava/lang/Object;I)V

    invoke-direct {v5, v6}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_5

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemWithdrawalMiniLogoBannerBinding;->spaceButtons:Landroid/widget/Space;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_4

    const/16 v3, 0x10

    invoke-static {v3}, Lpl2;->e(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_4
    const-string p0, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemWithdrawalMiniLogoBannerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object p0

    iget-object p2, p2, Luj9;->a:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object p0

    const/high16 p2, 0x40800000    # 4.0f

    invoke-static {p2}, Lpl2;->d(F)F

    move-result p2

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemWithdrawalMiniLogoBannerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f06001d

    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p2, v0}, Lis7;->b(FI)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lee0;->r(Landroid/graphics/drawable/ShapeDrawable;)Lee0;

    move-result-object p0

    check-cast p0, Lh37;

    new-instance p2, Ls37;

    invoke-direct {p2}, Ls37;-><init>()V

    new-instance v0, Ls81;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Le87;

    const/4 v5, 0x4

    invoke-static {v5}, Lpl2;->e(I)I

    move-result v5

    invoke-direct {v3, v5}, Le87;-><init>(I)V

    new-array v1, v1, [Ls19;

    aput-object v0, v1, v4

    aput-object v3, v1, v2

    invoke-virtual {p2, v1}, Lee0;->D([Ls19;)Lee0;

    move-result-object p2

    invoke-virtual {p0, p2}, Lh37;->G(Lee0;)Lh37;

    move-result-object p0

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/ItemWithdrawalMiniLogoBannerBinding;->ivLogo:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lh37;->L(Landroid/widget/ImageView;)V

    return-void
.end method
