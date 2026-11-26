.class public final synthetic Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment$e;
.super Lqm3;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment;->showOnboardingWarning(Lcom/warefly/checkscan/personalform/presentation/form/bottomSheet/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lqm3;",
        "Lnl3<",
        "Ljava/lang/Boolean;",
        "Lj59;",
        ">;"
    }
.end annotation


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lqy0;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;->onLaterClicked(Z)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
