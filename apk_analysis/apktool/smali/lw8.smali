.class public final Llw8;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lmw8;",
        "Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithBlueButtonBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;)V
    .locals 1

    sget-object v0, Lkw8;->c:Lkw8;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Llw8;->b:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lmw8;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithBlueButtonBinding;

    check-cast p2, Lmw8;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithBlueButtonBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p0, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithBlueButtonBinding;->tvSubButton:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p0, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithBlueButtonBinding;->tvTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithBlueButtonBinding;->tvHelpButton:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithBlueButtonBinding;->tvSubButton:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final j(Landroidx/viewbinding/ViewBinding;)V
    .locals 2

    check-cast p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithBlueButtonBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithBlueButtonBinding;->tvHelpButton:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Liw8;

    invoke-direct {v1, p0, p1}, Liw8;-><init>(Llw8;Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithBlueButtonBinding;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithBlueButtonBinding;->tvSubButton:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Ljw8;

    invoke-direct {v1, p0, p1}, Ljw8;-><init>(Llw8;Lcom/warefly/checkscan/bonuses/databinding/ItemRvTitleWithBlueButtonBinding;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
