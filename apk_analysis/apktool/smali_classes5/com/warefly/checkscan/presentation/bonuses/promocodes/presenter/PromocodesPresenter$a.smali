.class public final Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls26$m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls26$m<",
        "Ler6;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter$c;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter$a;->a:Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter$c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter$a;->a:Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter$c;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter$c;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesView;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesView;->hideLoading(Z)V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c(Z)V
    .locals 0

    return-void
.end method

.method public final d(Ljava/util/List;Z)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter$a;->a:Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter$c;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter$c;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesView;

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesView;->hideLoading(Z)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter$c;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesView;

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesView;->showPromocodes(Ljava/util/List;)V

    return-void
.end method

.method public final e(Z)V
    .locals 0

    return-void
.end method

.method public final f(Z)V
    .locals 0

    return-void
.end method

.method public final g(Z)V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter$a;->a:Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter$c;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter$c;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesView;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesView;->hideLoading(Z)V

    return-void
.end method

.method public final h(Z)V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter$a;->a:Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter$c;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter$c;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesView;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesView;->hideLoading(Z)V

    return-void
.end method
