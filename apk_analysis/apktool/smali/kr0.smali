.class public final synthetic Lkr0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic b:Lmr0;

.field public final synthetic c:Lcom/warefly/checkscan/bonuses/databinding/ItemRvBalancePromocodeBlockBinding;


# direct methods
.method public synthetic constructor <init>(Lmr0;Lcom/warefly/checkscan/bonuses/databinding/ItemRvBalancePromocodeBlockBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkr0;->b:Lmr0;

    iput-object p2, p0, Lkr0;->c:Lcom/warefly/checkscan/bonuses/databinding/ItemRvBalancePromocodeBlockBinding;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    iget-object p1, p0, Lkr0;->b:Lmr0;

    iget-object p0, p0, Lkr0;->c:Lcom/warefly/checkscan/bonuses/databinding/ItemRvBalancePromocodeBlockBinding;

    if-eqz p2, :cond_1

    iget-object p2, p1, Lmr0;->b:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    invoke-interface {p2}, Lmr0$a;->sendPromocodeStartInteraction()V

    iget-object p2, p1, Lmr0;->c:Lnr0;

    if-nez p2, :cond_0

    new-instance p2, Lnr0;

    invoke-direct {p2, p1}, Lnr0;-><init>(Lmr0;)V

    iput-object p2, p1, Lmr0;->c:Lnr0;

    :cond_0
    iget-object p0, p0, Lcom/warefly/checkscan/bonuses/databinding/ItemRvBalancePromocodeBlockBinding;->etField:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/warefly/checkscan/bonuses/databinding/ItemRvBalancePromocodeBlockBinding;->etField:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object p1, p1, Lmr0;->c:Lnr0;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
