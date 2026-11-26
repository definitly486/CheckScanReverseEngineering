.class public final synthetic Ly09;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly09;->b:Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    sget-object p1, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog;->g:Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog$a;

    iget-object p0, p0, Ly09;->b:Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
