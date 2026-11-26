.class public final Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment$f;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;->showMotivationBanner(Lap6;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Landroid/view/View;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;

.field public final synthetic g:Lap6$a;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;Lap6$a;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment$f;->f:Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment$f;->g:Lap6$a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment$f;->f:Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;

    invoke-virtual {p1}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment;->r()Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;

    move-result-object p1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardFragment$f;->g:Lap6$a;

    iget-object v0, p0, Lap6$a;->a:Ljava/lang/String;

    iget-object p0, p0, Lap6$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->onFullTermsClicked(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
