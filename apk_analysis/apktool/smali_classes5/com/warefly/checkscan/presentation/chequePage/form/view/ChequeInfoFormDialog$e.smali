.class public final Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog$e;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field public final synthetic f:Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog;

.field public final synthetic g:Lcom/warefly/checkscan/databinding/DialogChequePersonalInfoBinding;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog;Lcom/warefly/checkscan/databinding/DialogChequePersonalInfoBinding;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog$e;->f:Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog$e;->g:Lcom/warefly/checkscan/databinding/DialogChequePersonalInfoBinding;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog$e;->f:Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog;

    iget-object p1, p1, Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog;->presenter:Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter;

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog$e;->g:Lcom/warefly/checkscan/databinding/DialogChequePersonalInfoBinding;

    iget-object v0, p0, Lcom/warefly/checkscan/databinding/DialogChequePersonalInfoBinding;->etName:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    :cond_1
    iget-object p0, p0, Lcom/warefly/checkscan/databinding/DialogChequePersonalInfoBinding;->etTransferDestination:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, p0

    :cond_3
    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter;->onPostInfoClicked(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_4
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
