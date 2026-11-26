.class public final Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter$a$a$a;
.super Lf02;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.auth.presentation.userCallVerification.presenter.VerificationUserCallPresenter$onCallClicked$$inlined$map$1$2"
    f = "VerificationUserCallPresenter.kt"
    l = {
        0xda,
        0xd9
    }
    m = "emit"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter$a$a;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public l:Lid3;

.field public synthetic m:Ljava/lang/Object;

.field public n:I

.field public final synthetic o:Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter$a$a;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter$a$a;Le02;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter$a$a$a;->o:Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter$a$a;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter$a$a$a;->m:Ljava/lang/Object;

    iget p1, p0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter$a$a$a;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter$a$a$a;->n:I

    iget-object p1, p0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter$a$a$a;->o:Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter$a$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter$a$a;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
