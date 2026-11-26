.class public final synthetic Loy4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/presentation/mailChange/view/MailChangeFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/presentation/mailChange/view/MailChangeFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loy4;->b:Lcom/warefly/checkscan/presentation/mailChange/view/MailChangeFragment;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    sget-object v0, Lcom/warefly/checkscan/presentation/mailChange/view/MailChangeFragment;->k:[Lze4;

    if-nez p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f0a027d

    if-ne p1, p2, :cond_1

    iget-object p0, p0, Loy4;->b:Lcom/warefly/checkscan/presentation/mailChange/view/MailChangeFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/mailChange/view/MailChangeFragment;->n()Lcom/warefly/checkscan/databinding/FragmentChangeEmailBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentChangeEmailBinding;->etMailChange:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/mailChange/view/MailChangeFragment;->mailChangePresenter:Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter;->checkMailInput(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "mailChangePresenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    return-void
.end method
