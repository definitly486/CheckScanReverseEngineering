.class public final Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallFragment$$PresentersBinder$a;
.super Lpf6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallFragment$$PresentersBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpf6<",
        "Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallFragment;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;Lih5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallFragment;

    check-cast p2, Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;

    iput-object p2, p1, Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallFragment;->presenter:Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;

    return-void
.end method

.method public final b(Ljava/lang/Object;)Lih5;
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallFragment;

    invoke-virtual {p1}, Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallFragment;->providePresenter()Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;

    move-result-object p0

    return-object p0
.end method
