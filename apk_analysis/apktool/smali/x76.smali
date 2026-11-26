.class public final Lx76;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx76;->b:Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;

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

    iget-object p0, p0, Lx76;->b:Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;->o()Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;->onInviteCodeChanged(Ljava/lang/String;)V

    return-void
.end method
