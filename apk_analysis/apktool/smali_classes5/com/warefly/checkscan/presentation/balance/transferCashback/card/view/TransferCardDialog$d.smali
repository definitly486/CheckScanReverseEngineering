.class public final Lcom/warefly/checkscan/presentation/balance/transferCashback/card/view/TransferCardDialog$d;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/balance/transferCashback/card/view/TransferCardDialog;->showErrorInfoNotLoaded(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Landroid/view/View;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/balance/transferCashback/card/view/TransferCardDialog;

.field public final synthetic g:Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;Lcom/warefly/checkscan/presentation/balance/transferCashback/card/view/TransferCardDialog;)V
    .locals 0

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/view/TransferCardDialog$d;->f:Lcom/warefly/checkscan/presentation/balance/transferCashback/card/view/TransferCardDialog;

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/view/TransferCardDialog$d;->g:Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/view/TransferCardDialog$d;->f:Lcom/warefly/checkscan/presentation/balance/transferCashback/card/view/TransferCardDialog;

    invoke-virtual {p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/view/TransferCardDialog;->f()Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;

    move-result-object p1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/view/TransferCardDialog$d;->g:Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;->etSum:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, ""

    :cond_1
    invoke-virtual {p1, p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;->onTransferClicked(Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
