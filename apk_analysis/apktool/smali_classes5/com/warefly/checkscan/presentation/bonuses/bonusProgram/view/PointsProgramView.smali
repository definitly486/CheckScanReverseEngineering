.class public interface abstract Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/view/PointsProgramView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;
.implements Ljs7;


# virtual methods
.method public abstract enableTransfer(ZJ)V
.end method

.method public abstract hideTransfer()V
.end method

.method public abstract showAgreement(Ljava/lang/String;)V
.end method

.method public abstract showCouldntGetAgreement()V
.end method

.method public abstract showCouldntGetTerms()V
.end method

.method public abstract showCouldntLoadProgram()V
.end method

.method public abstract showCouldntUpdateBalance()V
.end method

.method public abstract showLoadingDialog(Z)V
.end method

.method public abstract showLoadingProgram(Z)V
.end method

.method public abstract showProgram(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showTerms(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljo0;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showUpdatingBalance()V
.end method

.method public abstract updateBalance(I)V
.end method
