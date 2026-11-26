.class public final Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter$b;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;->loadPromocodes()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljava/lang/Integer;",
        "Lmz7<",
        "Ljava/util/List<",
        "+",
        "Ler6;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter$b;->f:Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter$b;->f:Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;->access$getCatId$p(Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;->access$getInteractor$p(Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;)Lbm0;

    move-result-object v0

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;->access$getCatId$p(Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;)I

    move-result p0

    iget-object v1, v0, Lbm0;->a:Lrp0;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget v0, v0, Lbm0;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p0, v0, p1}, Lrp0;->p(Ljava/lang/Integer;Ljava/lang/Integer;I)Lp08;

    move-result-object p0

    new-instance p1, Ljl0;

    const/4 v0, 0x0

    sget-object v1, Ltm0;->f:Ltm0;

    invoke-direct {p1, v1, v0}, Ljl0;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lp08;

    invoke-direct {v0, p0, p1}, Lp08;-><init>(Lmz7;Lxl3;)V

    sget-object p0, Lne7;->c:Lhe7;

    invoke-virtual {v0, p0}, Lmz7;->i(Lhe7;)Le18;

    move-result-object p0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;->access$getQuery$p(Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_1

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;->access$getInteractor$p(Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;)Lbm0;

    move-result-object v0

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;->access$getQuery$p(Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lbm0;->a:Lrp0;

    iget v0, v0, Lbm0;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, p0, p1, v0}, Lrp0;->j(Ljava/lang/String;ILjava/lang/Integer;)Lp08;

    move-result-object p0

    new-instance p1, Lqb0;

    sget-object v0, Lin0;->f:Lin0;

    invoke-direct {p1, v0, v1}, Lqb0;-><init>(Lnl3;I)V

    new-instance v0, Lp08;

    invoke-direct {v0, p0, p1}, Lp08;-><init>(Lmz7;Lxl3;)V

    sget-object p0, Lne7;->c:Lhe7;

    invoke-virtual {v0, p0}, Lmz7;->i(Lhe7;)Le18;

    move-result-object p0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;->access$getInteractor$p(Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;)Lbm0;

    move-result-object v0

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;->access$isFavorite$p(Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;)Z

    move-result p0

    iget v2, v0, Lbm0;->e:I

    iget-object v0, v0, Lbm0;->a:Lrp0;

    if-eqz p0, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lrp0;->k(ILjava/lang/Integer;)Lp08;

    move-result-object p0

    new-instance p1, Lw3;

    sget-object v0, Lrm0;->f:Lrm0;

    invoke-direct {p1, v0, v1}, Lw3;-><init>(Lnl3;I)V

    new-instance v0, Lp08;

    invoke-direct {v0, p0, p1}, Lp08;-><init>(Lmz7;Lxl3;)V

    goto :goto_0

    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lrp0;->o(ILjava/lang/Integer;)Lp08;

    move-result-object p0

    sget-object p1, Lj4;->h:Lj4;

    new-instance v0, Le90;

    invoke-direct {v0, p1, v1}, Le90;-><init>(Lnl3;I)V

    new-instance p1, Lp08;

    invoke-direct {p1, p0, v0}, Lp08;-><init>(Lmz7;Lxl3;)V

    move-object v0, p1

    :goto_0
    sget-object p0, Lne7;->c:Lhe7;

    invoke-virtual {v0, p0}, Lmz7;->i(Lhe7;)Le18;

    move-result-object p0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object p0

    return-object p0
.end method
