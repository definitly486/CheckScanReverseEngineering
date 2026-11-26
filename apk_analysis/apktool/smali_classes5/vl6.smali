.class public final Lvl6;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lrl6;",
        "Lcom/warefly/checkscan/profile/databinding/ItemRvProfileOptionBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;)V
    .locals 1

    sget-object v0, Ltl6;->c:Ltl6;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lvl6;->b:Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lrl6;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileOptionBinding;

    check-cast p2, Lrl6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileOptionBinding;->tvItemSettingsTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileOptionBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p2, Lrl6;->a:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileOptionBinding;->includeDelimiterArrow:Lcom/warefly/checkscan/profile/databinding/LayoutProfileDelimiterArrowBinding;

    iget-object v0, v0, Lcom/warefly/checkscan/profile/databinding/LayoutProfileDelimiterArrowBinding;->ivItemSettingsIc:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v0

    iget-object v1, p2, Lrl6;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lp37;->g(Ljava/lang/Object;)Lh37;

    move-result-object v0

    iget-object v1, p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileOptionBinding;->includeDelimiterArrow:Lcom/warefly/checkscan/profile/databinding/LayoutProfileDelimiterArrowBinding;

    iget-object v1, v1, Lcom/warefly/checkscan/profile/databinding/LayoutProfileDelimiterArrowBinding;->ivItemSettingsIc:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v0, p1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileOptionBinding;->ivBadge:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileOptionBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lul6;

    invoke-direct {v1, p2, p0}, Lul6;-><init>(Lrl6;Lvl6;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
