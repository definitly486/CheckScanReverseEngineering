.class public final synthetic Ltr0;
.super Lqm3;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lqm3;",
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lqy0;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;->onBackClick()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
