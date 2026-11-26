.class public interface abstract Lcom/warefly/checkscan/presentation/newBankCards/view/NewBankCardsView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;


# virtual methods
.method public abstract handleProgress(Z)V
.end method

.method public abstract setDescription(Ljava/lang/String;)V
.end method

.method public abstract setTitle(Ljava/lang/String;)V
.end method

.method public abstract showBankCardsInfoLoadingError()V
.end method

.method public abstract showData(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lk90;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showNoCards()V
.end method
