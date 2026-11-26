.class public final Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog$c;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lfm3;


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
        "Lfm3<",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
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

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog$c;->f:Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog$c;->g:Lcom/warefly/checkscan/databinding/DialogChequePersonalInfoBinding;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog$c;->f:Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog;

    iget-object p2, p2, Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog;->presenter:Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter;

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog$c;->g:Lcom/warefly/checkscan/databinding/DialogChequePersonalInfoBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/DialogChequePersonalInfoBinding;->etName:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, ""

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/warefly/checkscan/presentation/chequePage/form/presenter/ChequeInfoFormPresenter;->onDataChanged(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_2
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
