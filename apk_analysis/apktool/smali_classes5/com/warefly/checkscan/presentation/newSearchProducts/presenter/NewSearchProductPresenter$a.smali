.class public final Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;->searchItem(Ljava/lang/String;)V
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
        "Lui6;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter$a;->f:Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter$a;->g:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter$a;->f:Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;

    invoke-static {v0}, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;->access$getCatalogInteractor$p(Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;)Lp61;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p1, :cond_0

    iget-object v0, v0, Lp61;->g:Lcf1;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter$a;->g:Ljava/lang/String;

    invoke-interface {v0, p1, p0}, Lcf1;->g(Ljava/lang/Integer;Ljava/lang/String;)Lp08;

    move-result-object p0

    new-instance p1, Lo61;

    sget-object v0, Ls61;->f:Ls61;

    invoke-direct {p1, v0}, Lo61;-><init>(Ljava/lang/Object;)V

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
    const-string p0, "Page must be non-negative, was "

    invoke-static {p1, p0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method
