.class public final Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/presenter/HowGetMoreCashbackPresenter$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/presenter/HowGetMoreCashbackPresenter;-><init>(Ls47;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Ljava/util/List<",
        "+",
        "Lhx3;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/presenter/HowGetMoreCashbackPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/presenter/HowGetMoreCashbackPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/presenter/HowGetMoreCashbackPresenter$a;->f:Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/presenter/HowGetMoreCashbackPresenter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    new-instance v0, Lhx3;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/presenter/HowGetMoreCashbackPresenter$a;->f:Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/presenter/HowGetMoreCashbackPresenter;

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/presenter/HowGetMoreCashbackPresenter;->access$getResourceProvider$p(Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/presenter/HowGetMoreCashbackPresenter;)Ls47;

    move-result-object v1

    const v2, 0x7f1402f0

    invoke-interface {v1, v2}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/presenter/HowGetMoreCashbackPresenter;->access$getResourceProvider$p(Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/presenter/HowGetMoreCashbackPresenter;)Ls47;

    move-result-object v2

    const v3, 0x7f0802e7

    invoke-interface {v2, v3}, Ls47;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lhx3;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lhx3;

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/presenter/HowGetMoreCashbackPresenter;->access$getResourceProvider$p(Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/presenter/HowGetMoreCashbackPresenter;)Ls47;

    move-result-object v2

    const v3, 0x7f1402f2

    invoke-interface {v2, v3}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/presenter/HowGetMoreCashbackPresenter;->access$getResourceProvider$p(Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/presenter/HowGetMoreCashbackPresenter;)Ls47;

    move-result-object v3

    const v4, 0x7f1402f3

    invoke-interface {v3, v4}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/presenter/HowGetMoreCashbackPresenter;->access$getResourceProvider$p(Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/presenter/HowGetMoreCashbackPresenter;)Ls47;

    move-result-object v4

    const v5, 0x7f0802e9

    invoke-interface {v4, v5}, Ls47;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lhx3;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lhx3;

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/presenter/HowGetMoreCashbackPresenter;->access$getResourceProvider$p(Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/presenter/HowGetMoreCashbackPresenter;)Ls47;

    move-result-object v3

    const v4, 0x7f1402f1

    invoke-interface {v3, v4}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/presenter/HowGetMoreCashbackPresenter;->access$getResourceProvider$p(Lcom/warefly/checkscan/presentation/bonuses/shopPage/howGetCashbackDialog/presenter/HowGetMoreCashbackPresenter;)Ls47;

    move-result-object p0

    const v4, 0x7f0802e8

    invoke-interface {p0, v4}, Ls47;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lhx3;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    filled-new-array {v0, v1, v2}, [Lhx3;

    move-result-object p0

    invoke-static {p0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
