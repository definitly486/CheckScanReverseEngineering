.class public Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsView$$State$ShowSelectedCategoryCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowSelectedCategoryCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final category:Lpy5;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsView$$State;Lpy5;)V
    .locals 1

    const-string p1, "showSelectedCategory"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsView$$State$ShowSelectedCategoryCommand;->category:Lpy5;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsView$$State$ShowSelectedCategoryCommand;->category:Lpy5;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsView;->showSelectedCategory(Lpy5;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsView$$State$ShowSelectedCategoryCommand;->apply(Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsView;)V

    return-void
.end method
