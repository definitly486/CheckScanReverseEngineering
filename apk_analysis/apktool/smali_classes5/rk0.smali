.class public final synthetic Lrk0;
.super Lk8;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk8;",
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lk8;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->loadNextHots()Lj59;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
