.class public final Lzr0;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;)V
    .locals 0

    iput-object p1, p0, Lzr0;->f:Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lzr0;->f:Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;->loadNext()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
