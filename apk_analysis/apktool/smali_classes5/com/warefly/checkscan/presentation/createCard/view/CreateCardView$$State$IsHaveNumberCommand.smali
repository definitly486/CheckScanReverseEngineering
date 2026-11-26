.class public Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView$$State$IsHaveNumberCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IsHaveNumberCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView;",
        ">;"
    }
.end annotation


# instance fields
.field public final number:Ljava/lang/String;

.field public final validNumber:Z

.field public final value:Z


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView$$State;ZZLjava/lang/String;)V
    .locals 1

    const-string p1, "isHaveNumber"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-boolean p2, p0, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView$$State$IsHaveNumberCommand;->value:Z

    iput-boolean p3, p0, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView$$State$IsHaveNumberCommand;->validNumber:Z

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView$$State$IsHaveNumberCommand;->number:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView;)V
    .locals 2

    iget-boolean v0, p0, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView$$State$IsHaveNumberCommand;->value:Z

    iget-boolean v1, p0, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView$$State$IsHaveNumberCommand;->validNumber:Z

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView$$State$IsHaveNumberCommand;->number:Ljava/lang/String;

    invoke-interface {p1, v0, v1, p0}, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView;->isHaveNumber(ZZLjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    .line 10
    check-cast p1, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView$$State$IsHaveNumberCommand;->apply(Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView;)V

    return-void
.end method
