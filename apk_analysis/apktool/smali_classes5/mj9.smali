.class public final Lmj9;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lnj9;",
        "Lcom/warefly/checkscan/databinding/ItemWithdrawalHeaderLogoBannerBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Z

.field public final c:Lrj9;


# direct methods
.method public constructor <init>(ZLrj9;)V
    .locals 1

    sget-object v0, Lmj9$a;->c:Lmj9$a;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-boolean p1, p0, Lmj9;->b:Z

    iput-object p2, p0, Lmj9;->c:Lrj9;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lnj9;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemWithdrawalHeaderLogoBannerBinding;

    check-cast p2, Lnj9;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemWithdrawalHeaderLogoBannerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    iget-object v1, p2, Lnj9;->e:Lwi9;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-boolean p0, p0, Lmj9;->b:Z

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemWithdrawalHeaderLogoBannerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x10

    invoke-static {v0}, Lpl2;->e(I)I

    move-result v0

    invoke-static {v0, p0}, Lie9;->a(ILandroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemWithdrawalHeaderLogoBannerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0xc5

    invoke-static {v0}, Lpl2;->e(I)I

    move-result v0

    invoke-static {p0, v0}, Lie9;->b(Landroid/view/View;I)V

    :goto_0
    iget-object p0, p2, Lnj9;->c:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemWithdrawalHeaderLogoBannerBinding;->tvValue:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemWithdrawalHeaderLogoBannerBinding;->tvValue:Landroid/widget/TextView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemWithdrawalHeaderLogoBannerBinding;->tvDescription:Landroid/widget/TextView;

    iget-object v1, p2, Lnj9;->b:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemWithdrawalHeaderLogoBannerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object p0

    iget-object p2, p2, Lnj9;->d:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object p0

    const/high16 p2, 0x40e00000    # 7.0f

    invoke-static {p2}, Lpl2;->d(F)F

    move-result p2

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemWithdrawalHeaderLogoBannerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06001d

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {p2, v1}, Lis7;->b(FI)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lee0;->r(Landroid/graphics/drawable/ShapeDrawable;)Lee0;

    move-result-object p0

    check-cast p0, Lh37;

    new-instance p2, Ls37;

    invoke-direct {p2}, Ls37;-><init>()V

    new-instance v1, Ls81;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Le87;

    const/4 v3, 0x7

    invoke-static {v3}, Lpl2;->e(I)I

    move-result v3

    invoke-direct {v2, v3}, Le87;-><init>(I)V

    const/4 v3, 0x2

    new-array v3, v3, [Ls19;

    aput-object v1, v3, v0

    const/4 v0, 0x1

    aput-object v2, v3, v0

    invoke-virtual {p2, v3}, Lee0;->D([Ls19;)Lee0;

    move-result-object p2

    invoke-virtual {p0, p2}, Lh37;->G(Lee0;)Lh37;

    move-result-object p0

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/ItemWithdrawalHeaderLogoBannerBinding;->ivLogo:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lh37;->L(Landroid/widget/ImageView;)V

    return-void
.end method

.method public final j(Landroidx/viewbinding/ViewBinding;)V
    .locals 4

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemWithdrawalHeaderLogoBannerBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemWithdrawalHeaderLogoBannerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lso0;

    const/4 v3, 0x3

    invoke-direct {v2, v3, p0, p1}, Lso0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
