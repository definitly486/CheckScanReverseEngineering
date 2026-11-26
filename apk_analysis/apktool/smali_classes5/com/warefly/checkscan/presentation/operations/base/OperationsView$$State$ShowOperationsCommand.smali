.class public Lcom/warefly/checkscan/presentation/operations/base/OperationsView$$State$ShowOperationsCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/operations/base/OperationsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowOperationsCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/operations/base/OperationsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final show:Z


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/operations/base/OperationsView$$State;ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string p1, "showOperations"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-boolean p2, p0, Lcom/warefly/checkscan/presentation/operations/base/OperationsView$$State$ShowOperationsCommand;->show:Z

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/operations/base/OperationsView$$State$ShowOperationsCommand;->data:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/operations/base/OperationsView;)V
    .locals 1

    iget-boolean v0, p0, Lcom/warefly/checkscan/presentation/operations/base/OperationsView$$State$ShowOperationsCommand;->show:Z

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/operations/base/OperationsView$$State$ShowOperationsCommand;->data:Ljava/util/List;

    invoke-interface {p1, v0, p0}, Lcom/warefly/checkscan/presentation/operations/base/OperationsView;->showOperations(ZLjava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    .line 8
    check-cast p1, Lcom/warefly/checkscan/presentation/operations/base/OperationsView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/operations/base/OperationsView$$State$ShowOperationsCommand;->apply(Lcom/warefly/checkscan/presentation/operations/base/OperationsView;)V

    return-void
.end method
