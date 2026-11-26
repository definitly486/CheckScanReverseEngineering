.class public final synthetic Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter$b;
.super Lqm3;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;->onDoActionButtonClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lqm3;",
        "Lnl3<",
        "Lur6;",
        "Lj59;",
        ">;"
    }
.end annotation


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lur6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lqy0;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/warefly/checkscan/presentation/landing/view/LandingView;

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/landing/view/LandingView;->showPromoRegisterResult(Lur6;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
