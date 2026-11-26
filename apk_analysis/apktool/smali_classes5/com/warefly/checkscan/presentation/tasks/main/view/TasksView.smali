.class public interface abstract Lcom/warefly/checkscan/presentation/tasks/main/view/TasksView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;


# virtual methods
.method public abstract setContent(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lso8;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showAd(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lw48;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showAdResult(Lcom/warefly/checkscan/tasks/presentation/adResult/DailyBonusPoints;)V
.end method

.method public abstract showDefaultError()V
.end method

.method public abstract showErrorLoading(Z)V
.end method

.method public abstract showLoading(Z)V
.end method

.method public abstract showOrdInfoDialog(Lb06;)V
.end method

.method public abstract showTaskError(Lhn8;)V
.end method

.method public abstract showTaskSuccess(ILno8;)V
.end method

.method public abstract showToolbar(Z)V
.end method

.method public abstract turnOffRefreshing()V
.end method
