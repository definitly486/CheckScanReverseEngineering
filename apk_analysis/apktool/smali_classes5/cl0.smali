.class public final synthetic Lcl0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqx1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lnl3;


# direct methods
.method public synthetic constructor <init>(Lnl3;I)V
    .locals 0

    iput p2, p0, Lcl0;->b:I

    iput-object p1, p0, Lcl0;->c:Lnl3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcl0;->b:I

    iget-object p0, p0, Lcl0;->c:Lnl3;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog;->g:[Lze4;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_0
    check-cast p0, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter$a;

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter;->e(Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter$a;Ljava/lang/Object;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/g;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/g;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
