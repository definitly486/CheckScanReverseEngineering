.class public Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsView$$State$ShowBeginListCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowBeginListCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsView$$State;)V
    .locals 1

    const-string p1, "showBeginList"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsView;)V
    .locals 0

    .line 6
    invoke-interface {p1}, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsView;->showBeginList()V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsView$$State$ShowBeginListCommand;->apply(Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsView;)V

    return-void
.end method
