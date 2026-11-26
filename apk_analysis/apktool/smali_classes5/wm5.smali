.class public final synthetic Lwm5;
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

    iput p2, p0, Lwm5;->a:I

    iput-object p1, p0, Lwm5;->b:Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lwm5;->a:I

    iget-object p0, p0, Lwm5;->b:Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/presenter/RedirectDialogPresenter;

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/presenter/RedirectDialogPresenter;->e(Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/presenter/RedirectDialogPresenter;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/warefly/checkscan/presentation/newBankCards/presenter/NewBankCardPresenter;

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/newBankCards/presenter/NewBankCardPresenter;->f(Lcom/warefly/checkscan/presentation/newBankCards/presenter/NewBankCardPresenter;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
