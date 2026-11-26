.class public final Les3;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Les3$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lfs3;",
        "Lcom/warefly/checkscan/bonuses/databinding/ItemRvGroupShopsVerticalBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;)V
    .locals 1

    sget-object v0, Lds3;->c:Lds3;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Les3;->b:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lfs3;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 8

    check-cast p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvGroupShopsVerticalBinding;

    check-cast p2, Lfs3;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvGroupShopsVerticalBinding;->ivLogo:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v0

    iget-object v1, p2, Lfs3;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Luq2;->c:Luq2$d;

    new-instance v2, Ls81;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1, v2}, Lee0;->A(Luq2;Llj0;)Lee0;

    move-result-object v0

    check-cast v0, Lh37;

    iget-object v1, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvGroupShopsVerticalBinding;->ivLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v0, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvGroupShopsVerticalBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p2, Lfs3;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvGroupShopsVerticalBinding;->btnCheckMore:Landroid/widget/TextView;

    iget-object v1, p2, Lfs3;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvGroupShopsVerticalBinding;->btnCheckMore:Landroid/widget/TextView;

    new-instance v1, Las3;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p2}, Las3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p2, Lfs3;->e:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x3

    if-ge v0, v3, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-static {v1, v3}, Lqn1;->o0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iget-object v1, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvGroupShopsVerticalBinding;->first:Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;

    iget-object v3, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvGroupShopsVerticalBinding;->second:Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;

    iget-object p1, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvGroupShopsVerticalBinding;->third:Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;

    filled-new-array {v1, v3, p1}, [Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;

    move-result-object p1

    invoke-static {p1}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lqn1;->z0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb36;

    iget-object v1, v0, Lb36;->b:Ljava/lang/Object;

    check-cast v1, Lsv7$c;

    iget-object v0, v0, Lb36;->c:Ljava/lang/Object;

    check-cast v0, Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;

    iget v3, p2, Lfs3;->a:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0x8

    invoke-static {v5, v4}, Lle9;->c(ILandroid/view/View;)V

    if-eqz v1, :cond_5

    iget-object v4, v0, Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;->btnFave:Landroid/widget/ImageView;

    iget-boolean v6, v1, Lsv7;->b:Z

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v4, v0, Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;->ivLogo:Landroid/widget/ImageView;

    invoke-static {v4}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v4

    iget-object v6, v1, Lsv7$c;->d:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v4

    iget-object v6, v0, Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;->ivLogo:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-boolean v4, v1, Lsv7$c;->h:Z

    iget-object v6, v0, Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;->tvValue:Landroid/widget/TextView;

    const/4 v7, 0x2

    if-eqz v4, :cond_2

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v6, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_2

    :cond_2
    const/high16 v4, 0x41b00000    # 22.0f

    invoke-virtual {v6, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_2
    iget-object v4, v0, Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v6, v1, Lsv7$c;->e:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;->tvValue:Landroid/widget/TextView;

    iget-object v6, v1, Lsv7$c;->f:Landroid/text/Spanned;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;->ivPowerCode:Landroid/widget/ImageView;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v6, v1, Lsv7$c;->i:Z

    if-eqz v6, :cond_3

    move v6, v2

    goto :goto_3

    :cond_3
    move v6, v5

    :goto_3
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v0, Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;->viewDivider:Landroid/view/View;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v6, v1, Lsv7$c;->j:Z

    if-eqz v6, :cond_4

    move v5, v2

    :cond_4
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v4

    new-instance v5, Lbs3;

    invoke-direct {v5, p0, v1}, Lbs3;-><init>(Les3;Lsv7$c;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v0, Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;->btnFave:Landroid/widget/ImageView;

    new-instance v4, Lcs3;

    invoke-direct {v4, p0, v1, v3}, Lcs3;-><init>(Les3;Lsv7$c;I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_6
    return-void
.end method

.method public final j(Landroidx/viewbinding/ViewBinding;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvGroupShopsVerticalBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/warefly/checkscan/bonuses/databinding/ItemRvGroupShopsVerticalBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x10

    invoke-static {p1, p0}, Lle9;->c(ILandroid/view/View;)V

    return-void
.end method
