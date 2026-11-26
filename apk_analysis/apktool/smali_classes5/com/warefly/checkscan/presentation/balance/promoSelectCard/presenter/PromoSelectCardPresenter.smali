.class public final Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;
.super Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;
.source "SourceFile"

# interfaces
.implements Lho6$a;
.implements Lta$a;
.implements Lss4$a;
.implements Lrj9;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter<",
        "Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardView;",
        ">;",
        "Lho6$a;",
        "Lta$a;",
        "Lss4$a;",
        "Lrj9;"
    }
.end annotation


# static fields
.field private static final Companion:Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter$a;

.field public static final SOURCE_DEEPLINK:Ljava/lang/String; = "deeplink"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final fetchPromoTransferShowcase:Lu73;

.field private final flowRouter:Luf3;

.field private isShowcaseReloadPending:Z

.field private final observeTransferShowcaseUpdates:Lks5;

.field private final onboardingKey:Ljava/lang/String;

.field private final promoId:I

.field private final saveShowcaseClick:Lzb7;

.field private final saveShowcaseContext:Lac7;

.field private final sendBankCardEventUseCase:Llo7;

.field private final showcaseAnalytics:Le41;

.field private showcaseJob:Lmb4;

.field private showcasePayloads:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lb36<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lpw7;",
            ">;"
        }
    .end annotation
.end field

.field private final showcaseRenderState:Lq41;

.field private showcaseResponse:Lpp6;

.field private showcaseRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lsw7;",
            ">;>;"
        }
    .end annotation
.end field

.field private final source:Ljava/lang/String;

.field private final sourceTaskId:Ljava/lang/Integer;

.field private final taskId:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->Companion:Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter$a;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Le41;Lac7;Lzb7;Lop3;Lu73;Lks5;Lb40;Luf3;Llo7;Lmk1;Ljf6;Liw2;)V
    .locals 4

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p15 .. p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p16 .. p16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p17 .. p17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, p12

    move-object/from16 v1, p15

    move-object/from16 v2, p16

    move-object/from16 v3, p17

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;-><init>(Lb40;Ljf6;Lmk1;Liw2;)V

    iput p1, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->promoId:I

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->onboardingKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->taskId:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->source:Ljava/lang/String;

    iput-object p5, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->sourceTaskId:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->showcaseAnalytics:Le41;

    iput-object p7, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->saveShowcaseContext:Lac7;

    iput-object p8, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->saveShowcaseClick:Lzb7;

    iput-object p10, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->fetchPromoTransferShowcase:Lu73;

    iput-object p11, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->observeTransferShowcaseUpdates:Lks5;

    move-object/from16 p2, p13

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->flowRouter:Luf3;

    move-object/from16 p2, p14

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->sendBankCardEventUseCase:Llo7;

    iget-object p2, p9, Lop3;->a:Lh41;

    invoke-interface {p2, p1}, Lh41;->c(I)Lq41;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->showcaseRenderState:Lq41;

    sget-object p1, Lkx2;->b:Lkx2;

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->showcaseRows:Ljava/util/List;

    sget-object p1, Lmx2;->b:Lmx2;

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->showcasePayloads:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getSendBankCardEventUseCase$p(Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;)Llo7;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->sendBankCardEventUseCase:Llo7;

    return-object p0
.end method

.method public static final synthetic access$isShowcaseReloadPending$p(Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->isShowcaseReloadPending:Z

    return p0
.end method

.method public static final synthetic access$onShowcaseUpdated(Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->onShowcaseUpdated()V

    return-void
.end method

.method public static final synthetic access$showShowcase(Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;Lpp6;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->showShowcase(Lpp6;)V

    return-void
.end method

.method private final loadShowcase(ZLjava/lang/String;)Lmb4;
    .locals 8

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->showcaseJob:Lmb4;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->isShowcaseReloadPending:Z

    iget-object v3, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->fetchPromoTransferShowcase:Lu73;

    iget v4, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->promoId:I

    iget-object v6, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->taskId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lt73;

    const/4 v7, 0x0

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lt73;-><init>(Lu73;ILjava/lang/String;Ljava/lang/Integer;Le02;)V

    new-instance p2, Ltb7;

    invoke-direct {p2, v2}, Ltb7;-><init>(Lbm3;)V

    invoke-static {p2}, Ls57;->a(Lhd3;)Lde3;

    move-result-object p2

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter$c;

    invoke-direct {v0, p0, p1, v1}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter$c;-><init>(Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;ZLe02;)V

    new-instance p1, Ldf3;

    invoke-direct {p1, p2, v0}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    move-result-object p1

    new-instance p2, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter$b;

    invoke-direct {p2, p0}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;)V

    invoke-interface {p1, p2}, Lmb4;->g(Lnl3;)Lhp2;

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->showcaseJob:Lmb4;

    return-object p1
.end method

.method public static synthetic loadShowcase$default(Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;ZLjava/lang/String;ILjava/lang/Object;)Lmb4;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->loadShowcase(ZLjava/lang/String;)Lmb4;

    move-result-object p0

    return-object p0
.end method

.method private final onShowcaseUpdated()V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->showcaseJob:Lmb4;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmb4;->isActive()Z

    move-result v0

    if-ne v0, v1, :cond_0

    iput-boolean v1, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->isShowcaseReloadPending:Z

    return-void

    :cond_0
    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0, v2}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->loadShowcase$default(Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;ZLjava/lang/String;ILjava/lang/Object;)Lmb4;

    return-void
.end method

.method private final sendCardPreviewAction(ILjava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter$e;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p0, p1, v2}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter$e;-><init>(Ljava/lang/String;Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;ILe02;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void
.end method

.method private final sendShowcaseClick(ILjava/lang/String;)V
    .locals 12

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->saveShowcaseClick:Lzb7;

    iget v1, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->promoId:I

    iget-object v0, v0, Lzb7;->a:Lh41;

    invoke-interface {v0, v1, p1}, Lh41;->b(II)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->showcasePayloads:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lb36;

    invoke-direct {v2, p2, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpw7;

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->showcasePayloads:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lpw7;

    iget-object v5, v5, Lpw7;->b:Ljava/lang/Integer;

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p1, :cond_0

    if-eqz v2, :cond_2

    :goto_1
    move-object v3, v1

    goto :goto_2

    :cond_2
    const/4 v2, 0x1

    move-object v3, v4

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    move-object v0, v3

    check-cast v0, Lpw7;

    :cond_5
    if-eqz v0, :cond_7

    iget-object v2, v0, Lpw7;->a:Ljava/lang/String;

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    move-object v5, v2

    goto :goto_4

    :cond_7
    :goto_3
    move-object v5, p2

    :goto_4
    iget-object v3, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->showcaseAnalytics:Le41;

    iget v4, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->promoId:I

    invoke-direct {p0, v5, p1}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->showcasePositionOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->showcaseListSize()I

    move-result v8

    if-eqz v0, :cond_8

    iget-object p0, v0, Lpw7;->c:Ljava/lang/String;

    move-object v9, p0

    goto :goto_5

    :cond_8
    move-object v9, v1

    :goto_5
    if-eqz v0, :cond_9

    iget-object p0, v0, Lpw7;->d:Ljava/lang/Integer;

    move-object v10, p0

    goto :goto_6

    :cond_9
    move-object v10, v1

    :goto_6
    if-eqz v0, :cond_a

    iget-object v1, v0, Lpw7;->e:Ljava/lang/String;

    :cond_a
    move v6, p1

    move-object v11, v1

    invoke-interface/range {v3 .. v11}, Le41;->b(ILjava/lang/String;ILjava/lang/Integer;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic sendShowcaseClick$default(Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;ILjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-string p2, "offer"

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->sendShowcaseClick(ILjava/lang/String;)V

    return-void
.end method

.method private final showShowcase(Lpp6;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->showcaseResponse:Lpp6;

    iget-object v2, v0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->showcaseRenderState:Lq41;

    iget-object v3, v1, Lpp6;->d:Ljava/lang/String;

    iget-object v4, v1, Lpp6;->b:Ljava/util/ArrayList;

    iget-object v5, v2, Lq41;->b:Ljava/lang/String;

    invoke-static {v3, v5}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    sget-object v6, Lkx2;->b:Lkx2;

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    iput-object v3, v2, Lq41;->b:Ljava/lang/String;

    iget-object v3, v2, Lq41;->a:Lrw7;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v6, v3, Lrw7;->a:Ljava/util/List;

    invoke-virtual {v2}, Lq41;->d()V

    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v4, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v7, "offer"

    const-string v8, "in_progress"

    const/4 v9, 0x1

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpz3;

    invoke-static {v5}, Lr41;->a(Lpz3;)Lpw7;

    move-result-object v10

    if-nez v10, :cond_2

    :cond_1
    move-object v5, v6

    goto :goto_3

    :cond_2
    iget-object v11, v10, Lpw7;->b:Ljava/lang/Integer;

    if-eqz v11, :cond_1

    new-instance v12, Low7;

    iget-object v10, v10, Lpw7;->a:Ljava/lang/String;

    if-nez v10, :cond_5

    instance-of v10, v5, Luj9;

    if-eqz v10, :cond_3

    goto :goto_2

    :cond_3
    instance-of v9, v5, Lvj9;

    :goto_2
    if-eqz v9, :cond_4

    move-object v7, v8

    :cond_4
    move-object v10, v7

    :cond_5
    invoke-direct {v12, v11, v10}, Low7;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-static {v12}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    :goto_3
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    iput-object v2, v0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->showcaseRows:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpz3;

    invoke-static {v5}, Lr41;->a(Lpz3;)Lpw7;

    move-result-object v6

    const/4 v10, 0x0

    if-nez v6, :cond_8

    goto :goto_8

    :cond_8
    iget-object v14, v6, Lpw7;->b:Ljava/lang/Integer;

    if-eqz v14, :cond_10

    iget-object v11, v6, Lpw7;->a:Ljava/lang/String;

    if-nez v11, :cond_b

    instance-of v11, v5, Luj9;

    if-eqz v11, :cond_9

    move v11, v9

    goto :goto_5

    :cond_9
    instance-of v11, v5, Lvj9;

    :goto_5
    if-eqz v11, :cond_a

    move-object v11, v8

    goto :goto_6

    :cond_a
    move-object v11, v7

    :cond_b
    :goto_6
    move-object v12, v11

    new-instance v11, Lb36;

    invoke-direct {v11, v12, v14}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v13, v6, Lpw7;->c:Ljava/lang/String;

    if-nez v13, :cond_f

    instance-of v13, v5, Lvo6;

    if-eqz v13, :cond_c

    check-cast v5, Lvo6;

    iget-object v5, v5, Lvo6;->b:Lvo6$a;

    if-eqz v5, :cond_e

    goto :goto_7

    :cond_c
    instance-of v13, v5, Lxa;

    if-eqz v13, :cond_d

    check-cast v5, Lxa;

    iget-object v5, v5, Lxa;->j:Lxa$a;

    if-eqz v5, :cond_e

    goto :goto_7

    :cond_d
    instance-of v13, v5, Lws4;

    if-eqz v13, :cond_e

    check-cast v5, Lws4;

    iget-object v5, v5, Lws4;->h:Lws4$a;

    if-eqz v5, :cond_e

    :goto_7
    const-string v10, "top_choice"

    :cond_e
    move-object v13, v10

    :cond_f
    iget-object v15, v6, Lpw7;->d:Ljava/lang/Integer;

    iget-object v5, v6, Lpw7;->e:Ljava/lang/String;

    move-object v6, v11

    new-instance v11, Lpw7;

    move-object/from16 v16, v5

    invoke-direct/range {v11 .. v16}, Lpw7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    new-instance v10, Lb36;

    invoke-direct {v10, v6, v11}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    :goto_8
    if-eqz v10, :cond_7

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_11
    invoke-static {v2}, Ln05;->k(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->showcasePayloads:Ljava/util/Map;

    invoke-virtual {v0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardView;

    if-eqz v0, :cond_12

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardView;->showError(Z)V

    iget-object v3, v1, Lpp6;->a:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardView;->setToolbarTitle(Ljava/lang/String;)V

    iget-object v1, v1, Lpp6;->c:Lap6;

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardView;->showMotivationBanner(Lap6;)V

    invoke-interface {v0, v4}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardView;->showItems(Ljava/util/List;)V

    invoke-interface {v0, v2}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/view/WithdrawalView;->handleLoading(Z)V

    :cond_12
    return-void
.end method

.method private final showcaseListSize()I
    .locals 2

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->showcaseRows:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private final showcasePositionOf(Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 4

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->showcaseRows:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsw7;

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v2}, Lsw7;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lsw7;->a()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p2, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final getShowcaseRenderState()Lq41;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->showcaseRenderState:Lq41;

    return-object p0
.end method

.method public final getShowcaseRows()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lsw7;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->showcaseRows:Ljava/util/List;

    return-object p0
.end method

.method public onAddEmailClicked()V
    .locals 2

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->flowRouter:Luf3;

    new-instance v0, Lix;

    sget-object v1, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$AddEmail;->b:Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$AddEmail;

    invoke-direct {v0, v1}, Lix;-><init>(Lcom/warefly/checkscan/auth/presentation/flow/AuthReason;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public onAdvanceSelectCardClicked(ILjava/lang/String;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->sendShowcaseClick$default(Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardView;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrlInCustomTab(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->sendCardPreviewAction(ILjava/lang/String;)V

    return-void
.end method

.method public final onBackPressed()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 4

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->onboardingKey:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->loadShowcase$default(Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;ZLjava/lang/String;ILjava/lang/Object;)Lmb4;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->observeTransferShowcaseUpdates:Lks5;

    iget-object v1, v0, Lks5;->a:Lka7;

    invoke-interface {v1}, Lka7;->c()Lfy6;

    move-result-object v1

    new-instance v2, Ljs5;

    invoke-direct {v2, v0, v3}, Ljs5;-><init>(Lks5;Le02;)V

    new-instance v0, Lce3;

    invoke-direct {v0, v1, v2}, Lce3;-><init>(Lhd3;Lbm3;)V

    new-instance v1, Lhs5;

    invoke-direct {v1, v0}, Lhs5;-><init>(Lce3;)V

    new-instance v0, Lis5;

    invoke-direct {v0, v1}, Lis5;-><init>(Lhs5;)V

    new-instance v1, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter$d;

    invoke-direct {v1, p0, v3}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter$d;-><init>(Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public onFullTermsClicked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardView;->showFullTerms(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onLoanClicked(ILjava/lang/String;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->sendShowcaseClick$default(Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardView;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrlInCustomTab(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->sendCardPreviewAction(ILjava/lang/String;)V

    return-void
.end method

.method public onSelectCardClicked(ILjava/lang/String;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->sendShowcaseClick$default(Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/view/PromoSelectCardView;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrl(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->sendCardPreviewAction(ILjava/lang/String;)V

    return-void
.end method

.method public final onShowcaseItemShown(Llw7;)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Llw7;->b:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->showcasePayloads:Ljava/util/Map;

    iget-object v3, p1, Llw7;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v4, Lb36;

    invoke-direct {v4, v3, v0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpw7;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->showcaseAnalytics:Le41;

    iget v3, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->promoId:I

    if-eqz v0, :cond_1

    iget-object p0, v0, Lpw7;->c:Ljava/lang/String;

    move-object v5, p0

    goto :goto_1

    :cond_1
    move-object v5, v1

    :goto_1
    if-eqz v0, :cond_2

    iget-object p0, v0, Lpw7;->d:Ljava/lang/Integer;

    move-object v6, p0

    goto :goto_2

    :cond_2
    move-object v6, v1

    :goto_2
    if-eqz v0, :cond_3

    iget-object v1, v0, Lpw7;->e:Ljava/lang/String;

    :cond_3
    move-object v4, p1

    move-object v7, v1

    invoke-interface/range {v2 .. v7}, Le41;->a(ILlw7;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public final onShowcaseRenderStarted()V
    .locals 11

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->showcaseResponse:Lpp6;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->saveShowcaseContext:Lac7;

    iget v2, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->promoId:I

    new-instance v3, Lg41;

    iget-object v4, v0, Lpp6;->d:Ljava/lang/String;

    iget-object v5, v0, Lpp6;->e:Ljava/lang/String;

    iget-object v6, v0, Lpp6;->f:Ljava/lang/String;

    iget-object v7, v0, Lpp6;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->source:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "deeplink"

    :cond_1
    move-object v8, v0

    iget-object v9, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->sourceTaskId:Ljava/lang/Integer;

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Lg41;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lac7;->a:Lh41;

    invoke-interface {v0, v2, v3}, Lh41;->a(ILg41;)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->showcaseAnalytics:Le41;

    iget v1, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->promoId:I

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->showcaseListSize()I

    move-result p0

    invoke-interface {v0, v1, p0}, Le41;->c(II)V

    return-void
.end method

.method public onWithdrawClicked(Lwi9;Lpw7;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_1

    iget-object v0, p2, Lpw7;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object p2, p2, Lpw7;->a:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p2, "in_progress"

    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->sendShowcaseClick(ILjava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/base/presenter/WithdrawalPresenter;->onWithdrawEvent(Lwi9;)V

    return-void
.end method

.method public onWithdrawEventHandled(Lwi9;Le02;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwi9;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lwi9$i;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lwi9$j;

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 p1, 0x2

    invoke-static {p0, v1, v2, p1, v2}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->loadShowcase$default(Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;ZLjava/lang/String;ILjava/lang/Object;)Lmb4;

    move-result-object p0

    invoke-interface {p0, p2}, Lmb4;->e0(Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_2
    instance-of v0, p1, Lwi9$c;

    const/4 v1, 0x3

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    invoke-static {p0, v3, v2, v1, v2}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->loadShowcase$default(Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;ZLjava/lang/String;ILjava/lang/Object;)Lmb4;

    move-result-object p0

    invoke-interface {p0, p2}, Lmb4;->e0(Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_3

    return-object p0

    :cond_3
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_4
    instance-of p1, p1, Lwi9$a;

    if-eqz p1, :cond_6

    invoke-static {p0, v3, v2, v1, v2}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->loadShowcase$default(Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;ZLjava/lang/String;ILjava/lang/Object;)Lmb4;

    move-result-object p0

    invoke-interface {p0, p2}, Lmb4;->e0(Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_5

    return-object p0

    :cond_5
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_6
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final refreshContent()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1, v0}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->loadShowcase$default(Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;ZLjava/lang/String;ILjava/lang/Object;)Lmb4;

    return-void
.end method
