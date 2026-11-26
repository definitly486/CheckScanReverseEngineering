.class public final Lei6;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lei6;->f:I

    iput-object p2, p0, Lei6;->g:Ljava/lang/Object;

    iput-object p3, p0, Lei6;->h:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lei6;->f:I

    iget-object v1, p0, Lei6;->h:Ljava/lang/Object;

    iget-object p0, p0, Lei6;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/warefly/checkscan/databinding/DialogWithdrawalBankBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/DialogWithdrawalBankBinding;->webViewContent:Landroid/webkit/WebView;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lfi6;

    iget-object p0, p0, Lfi6;->b:Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;

    check-cast v1, Lti6;

    iget p1, v1, Lti6;->a:I

    invoke-interface {p0, p1}, Lco7;->onProductClicked(I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
