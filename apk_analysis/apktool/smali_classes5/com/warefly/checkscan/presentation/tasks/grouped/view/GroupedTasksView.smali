.class public interface abstract Lcom/warefly/checkscan/presentation/tasks/grouped/view/GroupedTasksView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;


# virtual methods
.method public abstract showDefaultError()V
.end method

.method public abstract showError(Z)V
.end method

.method public abstract showItems(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lpz3;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showLoading(Z)V
.end method

.method public abstract showTaskError(Lhn8;)V
.end method

.method public abstract showTaskSuccess(ILno8;)V
.end method

.method public abstract showToolbarTitle(Ljava/lang/String;)V
.end method
