.class public final Lg71;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lbm3<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/bonuses/categories/view/CategoriesFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/categories/view/CategoriesFragment;)V
    .locals 0

    iput-object p1, p0, Lg71;->f:Lcom/warefly/checkscan/presentation/bonuses/categories/view/CategoriesFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lg71;->f:Lcom/warefly/checkscan/presentation/bonuses/categories/view/CategoriesFragment;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/categories/view/CategoriesFragment;->presenter:Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesPresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesPresenter;->onCategoryClicked(ILjava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
