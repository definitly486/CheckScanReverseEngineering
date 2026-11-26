.class public final synthetic Lhc9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhc9;->b:Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    sget-object p1, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;->m:[Lze4;

    iget-object p0, p0, Lhc9;->b:Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;->o()Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->onConfirmClick()V

    return-void
.end method
