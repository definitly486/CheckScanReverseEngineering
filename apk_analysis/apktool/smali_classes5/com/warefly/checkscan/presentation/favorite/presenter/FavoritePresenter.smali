.class public final Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"

# interfaces
.implements Lbv7;
.implements Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter$a;,
        Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/favorite/presenter/FavoriteView;",
        ">;",
        "Lbv7;",
        "Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a$a<",
        "Lcs0;",
        "Lj59;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter$a;

.field private static final DOUBLE_COLUMN:I = 0x2

.field private static final PROMOCODES_COUNT_VISIBLE:I = 0x2

.field private static final PROMOCODES_TITLE:Ljava/lang/String; = "\u041f\u0440\u043e\u043c\u043e\u043a\u043e\u0434\u044b \u0438 \u043a\u0443\u043f\u043e\u043d\u044b"

.field private static final SINGLE_COLUMN:I = 0x1


# instance fields
.field private arePromocodesEmpty:Z

.field private areShopsEmpty:Z

.field private final controller:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a<",
            "Lcs0;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final flowRouter:Luf3;

.field private final interactor:Lbm0;

.field private final isFavoriteArgs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->Companion:Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter$a;

    return-void
.end method

.method public constructor <init>(Luf3;Lbm0;Z)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->flowRouter:Luf3;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->interactor:Lbm0;

    iput-boolean p3, p0, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->isFavoriteArgs:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->arePromocodesEmpty:Z

    iput-boolean p1, p0, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->areShopsEmpty:Z

    new-instance p1, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;

    new-instance v0, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter$c;

    const-string v5, "invalidateAndSubscribe()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;

    const-string v4, "invalidateAndSubscribe"

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p1, v0, v2}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;-><init>(Lll3;Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a$a;)V

    iput-object p1, v2, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->controller:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;

    return-void
.end method

.method public static final synthetic access$formPromocodes(Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;Lb36;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->formPromocodes(Lb36;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$invalidateAndSubscribe(Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->invalidateAndSubscribe()V

    return-void
.end method

.method public static final synthetic access$loadData(Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->loadData()V

    return-void
.end method

.method public static synthetic e(ZILcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->onFavoritePromocode$lambda$0(ZILcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;)V

    return-void
.end method

.method private final formPromocodes(Lb36;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb36<",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/util/List<",
            "Ler6;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcs0;",
            ">;"
        }
    .end annotation

    iget-object v0, p1, Lb36;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object p1, p1, Lb36;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-lez p1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->arePromocodesEmpty:Z

    const/4 p0, 0x2

    if-le p1, p0, :cond_0

    new-instance v2, Lcw8;

    new-instance v3, Lzv8;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-direct {v2, v3}, Lcw8;-><init>(Lzv8;)V

    invoke-static {v2}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-static {v0, v1, p0}, Lor4;->a(Ljava/util/List;II)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0, v2}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    new-instance v0, Lsd5;

    new-instance v1, Lyv0;

    invoke-direct {v1, p1}, Lyv0;-><init>(I)V

    invoke-direct {v0, v1}, Lsd5;-><init>(Lyv0;)V

    invoke-static {v0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1, p0}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Lcw8;

    new-instance v2, Lzv8;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-direct {p1, v2}, Lcw8;-><init>(Lzv8;)V

    invoke-static {p1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {v0, v1, p0}, Lor4;->a(Ljava/util/List;II)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0, p1}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->arePromocodesEmpty:Z

    sget-object p0, Lkx2;->b:Lkx2;

    return-object p0
.end method

.method private final invalidateAndSubscribe()V
    .locals 4

    iget-boolean v0, p0, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->isFavoriteArgs:Z

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->interactor:Lbm0;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lbm0;->k:Ltq5;

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lbm0;->j:Ltq5;

    :goto_0
    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Ltq5;->g(Lhe7;)Lxr5;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltq5;->e(Lhe7;)Lqr5;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter$d;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter$d;-><init>(Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lyb8;->h(Lqr5;Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter$d;Lnl3;I)Lhh4;

    move-result-object v0

    const-string v1, "invalidateAndSubscribe"

    invoke-virtual {p0, v0, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy(Lcp2;Ljava/lang/String;)V

    return-void
.end method

.method private final loadData()V
    .locals 5

    iget-boolean v0, p0, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->isFavoriteArgs:Z

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->interactor:Lbm0;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lbm0;->a:Lrp0;

    iget v4, v1, Lbm0;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lrp0;->l(ILjava/lang/Integer;)Lp08;

    move-result-object v0

    new-instance v4, Lm4;

    invoke-direct {v4, v1, v2}, Lm4;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lgl0;

    invoke-direct {v1, v4, v3}, Lgl0;-><init>(Lgh4;I)V

    new-instance v3, Lyz7;

    invoke-direct {v3, v0, v1}, Lyz7;-><init>(Lmz7;Lqx1;)V

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lbm0;->a:Lrp0;

    iget v4, v1, Lbm0;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lrp0;->c(ILjava/lang/Integer;)Lp08;

    move-result-object v0

    new-instance v3, Ln4;

    invoke-direct {v3, v1, v2}, Ln4;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lvl0;

    invoke-direct {v1, v3}, Lvl0;-><init>(Ln4;)V

    new-instance v3, Lyz7;

    invoke-direct {v3, v0, v1}, Lyz7;-><init>(Lmz7;Lqx1;)V

    :goto_0
    sget-object v0, Lne7;->c:Lhe7;

    invoke-virtual {v3, v0}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    sget-object v1, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter$e;->f:Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter$e;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lyb8;->f(Lmz7;Lnl3;Lnl3;I)Lrx1;

    move-result-object v0

    const-string v1, "loadData"

    invoke-virtual {p0, v0, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy(Lcp2;Ljava/lang/String;)V

    return-void
.end method

.method private final loadPromocodes()V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->interactor:Lbm0;

    iget-boolean v1, p0, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->isFavoriteArgs:Z

    invoke-virtual {v0, v1}, Lbm0;->b(Z)Lp08;

    move-result-object v0

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter$g;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter$g;-><init>(Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;)V

    new-instance v2, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter$h;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter$h;-><init>(Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;)V

    invoke-static {v0, v1, v2}, Lyb8;->d(Lmz7;Lnl3;Lnl3;)Lrx1;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private static final onFavoritePromocode$lambda$0(ZILcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;)V
    .locals 0

    if-eqz p0, :cond_0

    new-instance p0, Lkd$e$b$b;

    invoke-direct {p0, p1}, Lkd$e$b$b;-><init>(I)V

    invoke-virtual {p0}, Lkd;->a()V

    new-instance p0, Lmd;

    invoke-direct {p0, p1}, Lmd;-><init>(I)V

    invoke-virtual {p0}, Lkd;->a()V

    goto :goto_0

    :cond_0
    new-instance p0, Lkd$e$b$f;

    invoke-direct {p0, p1}, Lkd$e$b$f;-><init>(I)V

    invoke-virtual {p0}, Lkd;->a()V

    new-instance p0, Ltd;

    invoke-direct {p0, p1}, Ltd;-><init>(I)V

    invoke-virtual {p0}, Lkd;->a()V

    :goto_0
    invoke-virtual {p2}, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->refreshPromocodes()V

    return-void
.end method


# virtual methods
.method public final getArePromocodesEmpty()Z
    .locals 0

    iget-boolean p0, p0, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->arePromocodesEmpty:Z

    return p0
.end method

.method public final getAreShopsEmpty()Z
    .locals 0

    iget-boolean p0, p0, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->areShopsEmpty:Z

    return p0
.end method

.method public final getSpanCount(I)I
    .locals 5

    sget-object p0, Lbs0;->Companion:Lbs0$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lbs0;->values()[Lbs0;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v4, p1, :cond_2

    sget-object p0, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter$b;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    if-eq p0, p1, :cond_1

    const/4 v2, 0x3

    if-eq p0, v2, :cond_1

    const/4 p1, 0x4

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lme0;->e()V

    return v1

    :cond_1
    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string p0, "Array contains no element matching the predicate."

    invoke-static {p0}, Lag;->g(Ljava/lang/String;)V

    return v1
.end method

.method public final loadMoreData()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->controller:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;->a()Lqp1;

    move-result-object v0

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Lqp1;->i(Lhe7;)Lrq1;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqp1;->f(Lhe7;)Llq1;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter$f;->f:Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter$f;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lyb8;->g(Llq1;Lnl3;Lll3;I)Lcp2;

    move-result-object v0

    invoke-static {p0, v0, v1, v3, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public loadNextPage(ILj59;)Lmz7;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lj59;",
            ")",
            "Lmz7<",
            "Lk57<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p2, p0, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->isFavoriteArgs:Z

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->interactor:Lbm0;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lbm0;->a:Lrp0;

    iget v2, p0, Lbm0;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, p1, v2}, Lrp0;->l(ILjava/lang/Integer;)Lp08;

    move-result-object p1

    new-instance p2, Lq4;

    invoke-direct {p2, p0, v1}, Lq4;-><init>(Ljava/lang/Object;I)V

    new-instance p0, Lhl0;

    invoke-direct {p0, p2, v0}, Lhl0;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Le08;

    invoke-direct {p2, p1, p0}, Le08;-><init>(Lmz7;Lxl3;)V

    return-object p2

    :cond_0
    iget-object p2, p0, Lbm0;->a:Lrp0;

    iget v2, p0, Lbm0;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, p1, v2}, Lrp0;->c(ILjava/lang/Integer;)Lp08;

    move-result-object p1

    new-instance p2, Lrb;

    invoke-direct {p2, p0, v1}, Lrb;-><init>(Ljava/lang/Object;I)V

    new-instance p0, Lkl0;

    invoke-direct {p0, p2, v0}, Lkl0;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Le08;

    invoke-direct {p2, p1, p0}, Le08;-><init>(Lmz7;Lxl3;)V

    return-object p2
.end method

.method public bridge synthetic loadNextPage(ILjava/lang/Object;)Lmz7;
    .locals 0

    .line 67
    check-cast p2, Lj59;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->loadNextPage(ILj59;)Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final onBackPressed()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public onConfirmAdultClick()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->interactor:Lbm0;

    iget-object p0, p0, Lbm0;->a:Lrp0;

    invoke-interface {p0}, Lrp0;->e()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->interactor:Lbm0;

    iget-object v1, v0, Lbm0;->h:Lhi0;

    sget-object v2, Lkx2;->b:Lkx2;

    invoke-virtual {v1, v2}, Lhi0;->onNext(Ljava/lang/Object;)V

    iget-object v0, v0, Lbm0;->i:Lhi0;

    invoke-virtual {v0, v2}, Lhi0;->onNext(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->onDestroy()V

    return-void
.end method

.method public final onFavoritePromocode(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->interactor:Lbm0;

    invoke-virtual {v0, p1, p2}, Lbm0;->e(IZ)Lh08;

    move-result-object v0

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Lqp1;->i(Lhe7;)Lrq1;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqp1;->f(Lhe7;)Llq1;

    move-result-object v0

    new-instance v1, La63;

    invoke-direct {v1, p2, p1, p0}, La63;-><init>(ZILcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;)V

    new-instance p1, Luy0;

    invoke-direct {p1, v1}, Luy0;-><init>(Lh6;)V

    invoke-virtual {v0, p1}, Lqp1;->b(Lmq1;)V

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onFavouriteClick(IZ)V
    .locals 6

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->interactor:Lbm0;

    iget-boolean v1, p0, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->isFavoriteArgs:Z

    iget-object v2, v0, Lbm0;->a:Lrp0;

    invoke-interface {v2, p1, p2}, Lrp0;->t(IZ)Lqp1;

    move-result-object v2

    iget-object v3, v0, Lbm0;->b:Laa;

    int-to-long v4, p1

    invoke-interface {v3, v4, v5}, Laa;->j(J)Lmz7;

    move-result-object v3

    new-instance v4, Lyl0;

    invoke-direct {v4, v0, p1, v1}, Lyl0;-><init>(Lbm0;IZ)V

    new-instance p1, Lll0;

    const/4 v0, 0x0

    invoke-direct {p1, v4, v0}, Lll0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lh08;

    invoke-direct {v0, v3, p1}, Lh08;-><init>(Lmz7;Lxl3;)V

    invoke-virtual {v2, v0}, Lqp1;->c(Lqq1;)Lrp1;

    move-result-object p1

    sget-object v0, Lne7;->c:Lhe7;

    invoke-virtual {p1, v0}, Lqp1;->i(Lhe7;)Lrq1;

    move-result-object p1

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lqp1;->f(Lhe7;)Llq1;

    move-result-object p1

    new-instance v0, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter$i;

    invoke-direct {v0, p0, p2}, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter$i;-><init>(Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;Z)V

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-static {p1, p2, v0, v1}, Lyb8;->g(Llq1;Lnl3;Lll3;I)Lcp2;

    move-result-object p1

    invoke-static {p0, p1, p2, v1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 2

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->controller:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;

    sget-object v1, Lj59;->a:Lj59;

    invoke-virtual {v0, v1}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;->b(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->loadPromocodes()V

    return-void
.end method

.method public final onMorePromocodes()V
    .locals 5

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->flowRouter:Luf3;

    new-instance v1, Lth7;

    iget-boolean p0, p0, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->isFavoriteArgs:Z

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2, p0}, Lth7;-><init>(Ljava/lang/String;IIZ)V

    const/4 p0, 0x1

    new-array p0, p0, [Llk3;

    aput-object v1, p0, v4

    invoke-virtual {v0, p0}, Luf3;->j([Llk3;)V

    return-void
.end method

.method public onOrdClick(Lb06;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoriteView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoriteView;->showOrdBottomSheet(Lb06;)V

    :cond_0
    return-void
.end method

.method public final onPromocodeClicked(I)V
    .locals 3

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->flowRouter:Luf3;

    sget-object v0, Lsq0;->COUPON:Lsq0;

    new-instance v1, Lqf7;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v0, v2}, Lqf7;-><init>(ILsq0;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, v1}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public onShopClick(I)V
    .locals 3

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->flowRouter:Luf3;

    sget-object v0, Lsq0;->ONLINE_SHOP:Lsq0;

    new-instance v1, Lqf7;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v0, v2}, Lqf7;-><init>(ILsq0;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, v1}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public final refreshPromocodes()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->interactor:Lbm0;

    iget-boolean v1, p0, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->isFavoriteArgs:Z

    invoke-virtual {v0, v1}, Lbm0;->b(Z)Lp08;

    move-result-object v0

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter$j;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter$j;-><init>(Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lyb8;->f(Lmz7;Lnl3;Lnl3;I)Lrx1;

    move-result-object v0

    invoke-static {p0, v0, v2, v3, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final setArePromocodesEmpty(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->arePromocodesEmpty:Z

    return-void
.end method

.method public final setAreShopsEmpty(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->areShopsEmpty:Z

    return-void
.end method

.method public final setShopsEmpty(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->areShopsEmpty:Z

    return-void
.end method
