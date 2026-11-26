.class public final Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment$f;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;->showTimeForRepeatCode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljava/lang/Long;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;

.field public final synthetic g:Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment$f;->f:Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment$f;->g:Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-double v2, v0

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    div-double/2addr v2, v4

    const-wide/16 v4, 0x3c

    rem-long/2addr v0, v4

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment$f;->f:Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->tvGetNewCode:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment$f;->g:Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;->o()Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;

    move-result-object v4

    double-to-long v2, v2

    invoke-virtual {v4, v2, v3}, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->formatTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;->o()Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->formatTime(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f1402b7

    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
