.class public final Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter$h;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->confirmCode(Ljava/lang/String;Lcw1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;

.field public final synthetic g:Lcw1;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;Lcw1;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter$h;->f:Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter$h;->g:Lcw1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter$h;->f:Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;

    invoke-static {v0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->access$getPhone$p(Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter$h;->g:Lcw1;

    invoke-static {v0, v1, p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->access$successCode(Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;Ljava/lang/String;Lcw1;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
