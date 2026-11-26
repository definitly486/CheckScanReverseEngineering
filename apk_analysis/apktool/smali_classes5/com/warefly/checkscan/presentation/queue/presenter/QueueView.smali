.class public interface abstract Lcom/warefly/checkscan/presentation/queue/presenter/QueueView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;


# virtual methods
.method public abstract showCouldntCreateCheque()V
.end method

.method public abstract showCouldntDeleteCheque()V
.end method

.method public abstract showCouldntGetChequeInfo()V
.end method

.method public abstract showCouldntLoadCheques()V
.end method

.method public abstract showCouldntResendCheque()V
.end method

.method public abstract showProgress(Z)V
.end method

.method public abstract showQueueSortDialog()V
.end method

.method public abstract showReceipts(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgf9;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showThereAreNoReceipts(Z)V
.end method
