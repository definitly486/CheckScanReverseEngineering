.class public Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangeView$$State$FinishChangeMailCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangeView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FinishChangeMailCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangeView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangeView$$State;)V
    .locals 1

    const-string p1, "finishChangeMail"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangeView;)V
    .locals 0

    .line 6
    invoke-interface {p1}, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangeView;->finishChangeMail()V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangeView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangeView$$State$FinishChangeMailCommand;->apply(Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangeView;)V

    return-void
.end method
