.class public final Lai4;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lwh4;",
        "Lcom/warefly/checkscan/databinding/ItemLandingButtonWithBackgroundBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;)V
    .locals 1

    sget-object v0, Lxh4;->c:Lxh4;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lai4;->b:Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lwh4;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemLandingButtonWithBackgroundBinding;

    check-cast p2, Lwh4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemLandingButtonWithBackgroundBinding;->btnRegistration:Landroid/widget/TextView;

    invoke-virtual {p2}, Lwh4;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    instance-of v0, p2, Lqj4;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lqj4;

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemLandingButtonWithBackgroundBinding;->btnRegistration:Landroid/widget/TextView;

    iget-boolean v2, v0, Lqj4;->d:Z

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    new-instance v2, Llb7;

    new-instance v3, Lzh4;

    invoke-direct {v3, p0, v0}, Lzh4;-><init>(Lai4;Lqj4;)V

    invoke-direct {v2, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lej4;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lej4;

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemLandingButtonWithBackgroundBinding;->btnRegistration:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    new-instance v2, Llb7;

    new-instance v3, Lyh4;

    invoke-direct {v3, p0, v0}, Lyh4;-><init>(Lai4;Lej4;)V

    invoke-direct {v2, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemLandingButtonWithBackgroundBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Lwh4;->d()I

    move-result p1

    invoke-static {p1}, Lpl2;->e(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p2, p1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
