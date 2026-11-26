.class public interface abstract Lcom/warefly/checkscan/presentation/operations/base/OperationsView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;


# virtual methods
.method public abstract showAllOperationsLoaded()V
.end method

.method public abstract showEmptyOperations(Z)V
.end method

.method public abstract showEmptyOperationsError(Z)V
.end method

.method public abstract showEmptyOperationsProgress(Z)V
.end method

.method public abstract showOperations(ZLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showPageOfOperationsProgress(Z)V
.end method

.method public abstract showRefreshOperationsProgress(Z)V
.end method
