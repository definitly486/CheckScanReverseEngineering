.class public final Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter$d;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;->onFavoriteClicked(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Z

.field public final synthetic g:I

.field public final synthetic h:Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;


# direct methods
.method public constructor <init>(ZILcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;)V
    .locals 0

    iput-boolean p1, p0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter$d;->f:Z

    iput p2, p0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter$d;->g:I

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter$d;->h:Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter$d;->f:Z

    iget v1, p0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter$d;->g:I

    if-eqz v0, :cond_0

    new-instance v0, Lkd$e$b$b;

    invoke-direct {v0, v1}, Lkd$e$b$b;-><init>(I)V

    invoke-virtual {v0}, Lkd;->a()V

    new-instance v0, Lmd;

    invoke-direct {v0, v1}, Lmd;-><init>(I)V

    invoke-virtual {v0}, Lkd;->a()V

    goto :goto_0

    :cond_0
    new-instance v0, Lkd$e$b$f;

    invoke-direct {v0, v1}, Lkd$e$b$f;-><init>(I)V

    invoke-virtual {v0}, Lkd;->a()V

    new-instance v0, Ltd;

    invoke-direct {v0, v1}, Ltd;-><init>(I)V

    invoke-virtual {v0}, Lkd;->a()V

    :goto_0
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter$d;->h:Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;->access$getPromocodesController$p(Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;)Ls26;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ls26;->c()V

    :cond_1
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesView;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesView;->sendPromocodesUpdateResult()V

    :cond_2
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
