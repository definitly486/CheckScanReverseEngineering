.class public final Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lbm3<",
        "Ljava/lang/String;",
        "Landroid/os/Bundle;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment$a;->f:Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment$a;->f:Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment;

    invoke-static {p0, p1}, Landroidx/fragment/app/FragmentKt;->clearFragmentResult(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "DONE_DIALOG_REQUEST_KEY"

    invoke-static {p1, p2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment;->q()Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/presenter/ChequesExportPresenter;->onBackClicked()V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
