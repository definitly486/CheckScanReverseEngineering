.class public Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView$$State$ShowIncorrectPhoneMessageCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowIncorrectPhoneMessageCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView;",
        ">;"
    }
.end annotation


# instance fields
.field public final show:Z


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView$$State;Z)V
    .locals 1

    const-string p1, "showIncorrectPhoneMessage"

    const-class v0, Lhx5;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-boolean p2, p0, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView$$State$ShowIncorrectPhoneMessageCommand;->show:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView;)V
    .locals 0

    .line 6
    iget-boolean p0, p0, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView$$State$ShowIncorrectPhoneMessageCommand;->show:Z

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView;->showIncorrectPhoneMessage(Z)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView$$State$ShowIncorrectPhoneMessageCommand;->apply(Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView;)V

    return-void
.end method
