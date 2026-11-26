.class public interface abstract Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;


# virtual methods
.method public abstract setToolbarTitle(Ljava/lang/String;)V
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
