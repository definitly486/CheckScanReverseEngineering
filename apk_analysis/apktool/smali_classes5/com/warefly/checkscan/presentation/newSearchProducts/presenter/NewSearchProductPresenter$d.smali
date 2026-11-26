.class public final Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter$d;
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
        "Loa4;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter$d;->f:Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter$d;->g:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter$d;->f:Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;

    invoke-static {v0}, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;->access$getCheueInteractor$p(Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;)Lxd1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lxd1;->a:Lcf1;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter$d;->g:Ljava/lang/String;

    invoke-interface {v1, p1, p0}, Lcf1;->j(ILjava/lang/String;)Lmz7;

    move-result-object p0

    new-instance p1, Lae1;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lae1;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lb9;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lb9;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lp08;

    invoke-direct {p1, p0, v0}, Lp08;-><init>(Lmz7;Lxl3;)V

    sget-object p0, Lne7;->c:Lhe7;

    invoke-virtual {p1, p0}, Lmz7;->i(Lhe7;)Le18;

    move-result-object p0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object p0

    return-object p0
.end method
