.class public final Li56;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lj56;",
        "Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormChipBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;)V
    .locals 1

    sget-object v0, Lg56;->c:Lg56;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Li56;->b:Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lj56;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormChipBinding;

    check-cast p2, Lj56;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormChipBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lh56;

    invoke-direct {v2, p0, p2}, Lh56;-><init>(Li56;Lj56;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p1, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormChipBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v0, p2, Lj56;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p0, p2, Lj56;->e:Z

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormChipBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p1}, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormChipBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0800cb

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormChipBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p1}, Lcom/warefly/checkscan/personalform/databinding/ItemPersonalDataFormChipBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0800e1

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
