.class public interface abstract Lcom/warefly/checkscan/presentation/scanner/view/ScannerView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;


# virtual methods
.method public abstract handleChequesListVisible(Z)V
.end method

.method public abstract handleErrorMessage(Z)V
.end method

.method public abstract handleMessageVisibility(Z)V
.end method

.method public abstract openGallery()V
.end method

.method public abstract setCheques(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkh1;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setLoadButtonText(Ljava/lang/String;)V
.end method

.method public abstract showBrandlinkButton()V
.end method

.method public abstract showCropError()V
.end method

.method public abstract showLastChequeInfo(Ljava/lang/String;)V
.end method

.method public abstract showLastChequeInfo(Ljava/lang/String;I)V
.end method

.method public abstract showLoadButton()V
.end method

.method public abstract vibrate()V
.end method
