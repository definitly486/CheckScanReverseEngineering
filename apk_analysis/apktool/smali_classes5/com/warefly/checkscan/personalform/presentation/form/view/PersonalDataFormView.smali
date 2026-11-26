.class public interface abstract Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;


# virtual methods
.method public abstract requestGeoPermission()V
.end method

.method public abstract setButtonEnabled(Z)V
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

.method public abstract showOnboardingWarning(Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/a;)V
.end method

.method public abstract showSaveError()V
.end method

.method public abstract showSaveLoading(Z)V
.end method

.method public abstract showSaveSuccess(Ljava/lang/String;)V
.end method

.method public abstract showSaveSuccessFirstTime(Lu66;)V
.end method
