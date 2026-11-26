.class public final Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment$$PresentersBinder$a;
.super Lpf6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment$$PresentersBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpf6<",
        "Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;Lih5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;

    check-cast p2, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;

    iput-object p2, p1, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;->presenter:Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;

    return-void
.end method

.method public final b(Ljava/lang/Object;)Lih5;
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;

    invoke-virtual {p1}, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;->providePresenter()Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;

    move-result-object p0

    return-object p0
.end method
