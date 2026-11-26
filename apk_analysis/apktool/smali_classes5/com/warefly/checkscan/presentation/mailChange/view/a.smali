.class public final Lcom/warefly/checkscan/presentation/mailChange/view/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/presentation/mailChange/view/MailChangeFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/mailChange/view/MailChangeFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/mailChange/view/a;->b:Lcom/warefly/checkscan/presentation/mailChange/view/MailChangeFragment;

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

    sget-object p1, Lcom/warefly/checkscan/presentation/mailChange/view/MailChangeFragment;->k:[Lze4;

    new-instance p1, Lt11;

    const/4 p2, 0x2

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/mailChange/view/a;->b:Lcom/warefly/checkscan/presentation/mailChange/view/MailChangeFragment;

    invoke-direct {p1, p0, p2}, Lt11;-><init>(Ljava/lang/Object;I)V

    :try_start_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/mailChange/view/MailChangeFragment;->n()Lcom/warefly/checkscan/databinding/FragmentChangeEmailBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentChangeEmailBinding;->etMailChange:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Lt11;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
