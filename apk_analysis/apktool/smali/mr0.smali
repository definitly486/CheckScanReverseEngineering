.class public final Lmr0;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmr0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Ljr0;",
        "Lcom/warefly/checkscan/bonuses/databinding/ItemRvBalancePromocodeBlockBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

.field public c:Lnr0;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;)V
    .locals 1

    sget-object v0, Llr0;->c:Llr0;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lmr0;->b:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Ljr0;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvBalancePromocodeBlockBinding;

    check-cast p2, Ljr0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvBalancePromocodeBlockBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p2, Ljr0;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Ljr0;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvBalancePromocodeBlockBinding;->etField:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p2, Ljr0;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvBalancePromocodeBlockBinding;->btnActivate:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvBalancePromocodeBlockBinding;->etField:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    filled-new-array {v1}, [Landroid/text/InputFilter$LengthFilter;

    move-result-object v1

    check-cast v1, [Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object p2, p2, Ljr0;->d:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p2, Lkr0;

    invoke-direct {p2, p0, p1}, Lkr0;-><init>(Lmr0;Lcom/warefly/checkscan/bonuses/databinding/ItemRvBalancePromocodeBlockBinding;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public final j(Landroidx/viewbinding/ViewBinding;)V
    .locals 4

    check-cast p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvBalancePromocodeBlockBinding;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvBalancePromocodeBlockBinding;->btnActivate:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lor0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lor0;-><init>(Lvd9;Ljava/lang/Object;I)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
