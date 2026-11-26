.class public final Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesPresenter$b;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesPresenter;->loadCategories()V
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
        "Lcs0;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesPresenter$b;->f:Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesPresenter$b;->f:Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesPresenter;

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesPresenter;->access$getInteractor$p(Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesPresenter;)Lbm0;

    move-result-object v0

    iget-object v1, v0, Lbm0;->a:Lrp0;

    iget v0, v0, Lbm0;->e:I

    invoke-interface {v1, v0, p1}, Lrp0;->g(II)Lp08;

    move-result-object p1

    new-instance v0, Lul0;

    sget-object v1, Lqm0;->f:Lqm0;

    invoke-direct {v0, v1}, Lul0;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lp08;

    invoke-direct {v1, p1, v0}, Lp08;-><init>(Lmz7;Lxl3;)V

    sget-object p1, Lne7;->c:Lhe7;

    invoke-virtual {v1, p1}, Lmz7;->i(Lhe7;)Le18;

    move-result-object p1

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/a;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/a;-><init>(Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesPresenter;)V

    new-instance p0, Ll71;

    invoke-direct {p0, v0}, Ll71;-><init>(Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/a;)V

    new-instance v0, Lsz7;

    invoke-direct {v0, p1, p0}, Lsz7;-><init>(Lmz7;Lqx1;)V

    new-instance p0, Lm71;

    sget-object p1, Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/b;->f:Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/b;

    invoke-direct {p0, p1}, Lm71;-><init>(Ljava/lang/Object;)V

    new-instance p1, Lp08;

    invoke-direct {p1, v0, p0}, Lp08;-><init>(Lmz7;Lxl3;)V

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object p0

    invoke-virtual {p1, p0}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object p0

    return-object p0
.end method
