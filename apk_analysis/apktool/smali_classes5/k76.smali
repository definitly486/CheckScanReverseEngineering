.class public final Lk76;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk76;->b:Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment;

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    sget-object p1, Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment;->j:[Lze4;

    iget-object p0, p0, Lk76;->b:Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment;->n()Lcom/warefly/checkscan/databinding/FragmentPhoneBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentPhoneBinding;->etNumberPhone:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    if-eqz p1, :cond_3

    const/4 p3, 0x0

    const-string p4, "+7"

    invoke-static {p1, p4, p3}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment;->n()Lcom/warefly/checkscan/databinding/FragmentPhoneBinding;

    move-result-object p3

    iget-object p3, p3, Lcom/warefly/checkscan/databinding/FragmentPhoneBinding;->etNumberPhone:Landroid/widget/EditText;

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p4, 0x2

    invoke-virtual {p3, p4}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment;->phoneChangePresenter:Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;->onPhoneChanged(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p0, "phoneChangePresenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    throw p2

    :cond_3
    return-void
.end method
