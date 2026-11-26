.class public final synthetic Loz8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv75;


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loz8;->b:Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;

    iput-object p2, p0, Loz8;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lc75$a;)V
    .locals 1

    sget-object v0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;->f:Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog$a;

    iget-object v0, p0, Loz8;->b:Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/view/TransferPhoneDialog;->e()Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;->etPhone:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-static {v0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v0

    invoke-virtual {v0}, Lp37;->b()Lh37;

    move-result-object v0

    iget-object p0, p0, Loz8;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lh37;->N(Ljava/lang/Object;)Lh37;

    move-result-object p0

    new-instance v0, Lqz8;

    invoke-direct {v0, p1}, Lqz8;-><init>(Lc75$a;)V

    invoke-virtual {p0, v0, p0}, Lh37;->K(Lwk8;Lee0;)V

    return-void
.end method
