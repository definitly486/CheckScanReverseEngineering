.class public final Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter$e;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->loadAll(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Ldm3<",
        "Ljava/util/List<",
        "+",
        "Lhc0$b;",
        ">;",
        "Ljava/util/List<",
        "+",
        "Lsx5;",
        ">;",
        "Ljava/util/List<",
        "+",
        "Ler6;",
        ">;",
        "Lj59;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter$e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter$e;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter$e;->f:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter$e;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    check-cast p3, Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
