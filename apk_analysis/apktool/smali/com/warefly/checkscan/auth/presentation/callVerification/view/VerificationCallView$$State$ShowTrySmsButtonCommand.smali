.class public Lcom/warefly/checkscan/auth/presentation/callVerification/view/VerificationCallView$$State$ShowTrySmsButtonCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/auth/presentation/callVerification/view/VerificationCallView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowTrySmsButtonCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/auth/presentation/callVerification/view/VerificationCallView;",
        ">;"
    }
.end annotation


# instance fields
.field public final show:Z


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/auth/presentation/callVerification/view/VerificationCallView$$State;Z)V
    .locals 1

    const-string p1, "showTrySmsButton"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-boolean p2, p0, Lcom/warefly/checkscan/auth/presentation/callVerification/view/VerificationCallView$$State$ShowTrySmsButtonCommand;->show:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/auth/presentation/callVerification/view/VerificationCallView;)V
    .locals 0

    .line 6
    iget-boolean p0, p0, Lcom/warefly/checkscan/auth/presentation/callVerification/view/VerificationCallView$$State$ShowTrySmsButtonCommand;->show:Z

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/auth/presentation/callVerification/view/VerificationCallView;->showTrySmsButton(Z)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/auth/presentation/callVerification/view/VerificationCallView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/auth/presentation/callVerification/view/VerificationCallView$$State$ShowTrySmsButtonCommand;->apply(Lcom/warefly/checkscan/auth/presentation/callVerification/view/VerificationCallView;)V

    return-void
.end method
