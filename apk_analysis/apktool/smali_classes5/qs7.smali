.class public final synthetic Lqs7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh6;


# instance fields
.field public final synthetic a:Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqs7;->a:Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    sget-object v0, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog;->g:[Lze4;

    iget-object p0, p0, Lqs7;->a:Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog;->e()Lcom/warefly/checkscan/databinding/DialogShareBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/DialogShareBinding;->pbLoading:Landroid/widget/ProgressBar;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
