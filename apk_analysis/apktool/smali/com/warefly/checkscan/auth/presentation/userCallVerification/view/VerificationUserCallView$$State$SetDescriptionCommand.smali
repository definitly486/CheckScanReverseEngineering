.class public Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallView$$State$SetDescriptionCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetDescriptionCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallView;",
        ">;"
    }
.end annotation


# instance fields
.field public final callPhone:Ljava/lang/String;

.field public final phone:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallView$$State;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string p1, "setDescription"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallView$$State$SetDescriptionCommand;->phone:Ljava/lang/String;

    iput-object p3, p0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallView$$State$SetDescriptionCommand;->callPhone:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallView;)V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallView$$State$SetDescriptionCommand;->phone:Ljava/lang/String;

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallView$$State$SetDescriptionCommand;->callPhone:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallView;->setDescription(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    .line 8
    check-cast p1, Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallView$$State$SetDescriptionCommand;->apply(Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallView;)V

    return-void
.end method
