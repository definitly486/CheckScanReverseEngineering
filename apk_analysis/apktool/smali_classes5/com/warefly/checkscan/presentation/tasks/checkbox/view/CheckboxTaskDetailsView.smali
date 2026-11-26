.class public interface abstract Lcom/warefly/checkscan/presentation/tasks/checkbox/view/CheckboxTaskDetailsView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;


# virtual methods
.method public abstract showDetails(Ljb1;)V
.end method

.method public abstract showError()V
.end method

.method public abstract showErrorState(Z)V
.end method

.method public abstract showInfoBottomSheet(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/b$a;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showLoading(Z)V
.end method

.method public abstract showOrdInfoDialog(Lb06;)V
.end method

.method public abstract showTaskError(Lhn8;)V
.end method

.method public abstract showTaskNotFinished(Ljava/lang/String;)V
.end method

.method public abstract showTaskSuccess(ILno8;)V
.end method
