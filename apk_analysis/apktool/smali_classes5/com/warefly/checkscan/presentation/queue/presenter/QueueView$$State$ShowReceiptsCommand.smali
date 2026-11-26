.class public Lcom/warefly/checkscan/presentation/queue/presenter/QueueView$$State$ShowReceiptsCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/queue/presenter/QueueView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowReceiptsCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/queue/presenter/QueueView;",
        ">;"
    }
.end annotation


# instance fields
.field public final receipts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgf9;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/queue/presenter/QueueView$$State;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgf9;",
            ">;)V"
        }
    .end annotation

    const-string p1, "showReceipts"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/queue/presenter/QueueView$$State$ShowReceiptsCommand;->receipts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/queue/presenter/QueueView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/queue/presenter/QueueView$$State$ShowReceiptsCommand;->receipts:Ljava/util/List;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/queue/presenter/QueueView;->showReceipts(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/queue/presenter/QueueView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/queue/presenter/QueueView$$State$ShowReceiptsCommand;->apply(Lcom/warefly/checkscan/presentation/queue/presenter/QueueView;)V

    return-void
.end method
