.class public final Ll09;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll09$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lm09;",
        "Lcom/warefly/checkscan/databinding/ItemRvSbpTransferBankBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;)V
    .locals 1

    sget-object v0, Lk09;->c:Lk09;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Ll09;->b:Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lm09;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemRvSbpTransferBankBinding;

    check-cast p2, Lm09;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemRvSbpTransferBankBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p2, Lm09;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p2, Lm09;->d:Z

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemRvSbpTransferBankBinding;->ivSelected:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemRvSbpTransferBankBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemRvSbpTransferBankBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0800ae

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemRvSbpTransferBankBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemRvSbpTransferBankBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0800ca

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemRvSbpTransferBankBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v0

    iget-object v1, p2, Lm09;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v0

    iget-object v1, p1, Lcom/warefly/checkscan/databinding/ItemRvSbpTransferBankBinding;->ivLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lh37;->L(Landroid/widget/ImageView;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemRvSbpTransferBankBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Ln90;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0, p2}, Ln90;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
