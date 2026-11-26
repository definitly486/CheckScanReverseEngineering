.class public final synthetic Li76;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li76;->b:Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    sget-object v0, Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment;->j:[Lze4;

    if-nez p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f0a0280

    if-ne p1, p2, :cond_2

    iget-object p0, p0, Li76;->b:Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment;

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
    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment;->phoneChangePresenter:Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;->checkPhoneInput(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "phoneChangePresenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    throw p2

    :cond_2
    return-void
.end method
