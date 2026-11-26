.class public Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView$$State$ShowOfferCardDialogCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowOfferCardDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView;",
        ">;"
    }
.end annotation


# instance fields
.field public final sum:I

.field public final title:I


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView$$State;II)V
    .locals 1

    const-string p1, "showOfferCardDialog"

    const-class v0, Lhx5;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput p2, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView$$State$ShowOfferCardDialogCommand;->sum:I

    iput p3, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView$$State$ShowOfferCardDialogCommand;->title:I

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView;)V
    .locals 1

    iget v0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView$$State$ShowOfferCardDialogCommand;->sum:I

    iget p0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView$$State$ShowOfferCardDialogCommand;->title:I

    invoke-interface {p1, v0, p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView;->showOfferCardDialog(II)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    .line 8
    check-cast p1, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView$$State$ShowOfferCardDialogCommand;->apply(Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView;)V

    return-void
.end method
