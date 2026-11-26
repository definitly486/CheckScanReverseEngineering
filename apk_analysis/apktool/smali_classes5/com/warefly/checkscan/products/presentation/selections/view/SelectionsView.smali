.class public interface abstract Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;


# virtual methods
.method public abstract showContent(Ljava/util/List;)V
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

.method public abstract showError(Z)V
.end method

.method public abstract showLoading(Z)V
.end method

.method public abstract turnOffRefreshing()V
.end method
