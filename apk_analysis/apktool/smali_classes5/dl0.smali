.class public final synthetic Ldl0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh6;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;I)V
    .locals 0

    iput p2, p0, Ldl0;->a:I

    iput-object p1, p0, Ldl0;->b:Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Ldl0;->a:I

    iget-object p0, p0, Ldl0;->b:Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter;

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter;->f(Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;->showLoading(Z)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->access$getBlocksLoadingState$p(Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;)Ljava/util/HashMap;

    move-result-object p0

    sget-object v0, Lck0;->OnlineShopInfo:Lck0;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
