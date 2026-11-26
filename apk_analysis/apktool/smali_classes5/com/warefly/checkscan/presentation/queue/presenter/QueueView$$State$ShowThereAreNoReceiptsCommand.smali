.class public Lcom/warefly/checkscan/presentation/queue/presenter/QueueView$$State$ShowThereAreNoReceiptsCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/queue/presenter/QueueView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowThereAreNoReceiptsCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/queue/presenter/QueueView;",
        ">;"
    }
.end annotation


# instance fields
.field public final show:Z


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/queue/presenter/QueueView$$State;Z)V
    .locals 1

    const-string p1, "showThereAreNoReceipts"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-boolean p2, p0, Lcom/warefly/checkscan/presentation/queue/presenter/QueueView$$State$ShowThereAreNoReceiptsCommand;->show:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/queue/presenter/QueueView;)V
    .locals 0

    .line 6
    iget-boolean p0, p0, Lcom/warefly/checkscan/presentation/queue/presenter/QueueView$$State$ShowThereAreNoReceiptsCommand;->show:Z

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/queue/presenter/QueueView;->showThereAreNoReceipts(Z)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/queue/presenter/QueueView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/queue/presenter/QueueView$$State$ShowThereAreNoReceiptsCommand;->apply(Lcom/warefly/checkscan/presentation/queue/presenter/QueueView;)V

    return-void
.end method
