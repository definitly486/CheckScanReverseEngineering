.class public final Lw8;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;I)V
    .locals 0

    iput p2, p0, Lw8;->f:I

    iput-object p1, p0, Lw8;->g:Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lw8;->f:I

    iget-object p0, p0, Lw8;->g:Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;->o()Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->loadForm()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardFragment;->o()Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->editNumberClick()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment;

    sget-object p1, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment;->n:[Lze4;

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment;->m:Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;

    new-instance v1, Lrh1;

    invoke-direct {v1, p0}, Lrh1;-><init>(Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment;)V

    invoke-direct {v0, p1, v1}, Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;-><init>(Landroid/content/Context;Lbm3;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/exportCheques/view/ChequesExportFragment;->m:Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_2
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/warefly/checkscan/auth/presentation/addEmail/view/AddEmailFragment;

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/addEmail/view/AddEmailFragment;->presenter:Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;->onAddEmailClicked()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_2
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
