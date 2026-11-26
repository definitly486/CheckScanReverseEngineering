.class public final Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$a;,
        Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$a;

.field private static final LOADING:Z = true

.field private static final NOT_LOADING:Z = false

.field private static final POWER_CODE_TEXT_SIZE:I = 0x20


# instance fields
.field private final admitadId:J

.field private final admitadPartnerInteractor:Lx9;

.field private final blocksLoadingState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lck0;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final couponsInteractor:Lq42;

.field private floatingButtonEnabled:Z

.field private hotsPaginator:Ls26;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls26<",
            "Lyw3;",
            ">;"
        }
    .end annotation
.end field

.field private redirectType:Lsy8;

.field private final repository:Ljf6;

.field private final resString:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final resourceProvider:Ls47;

.field private final router:Luf3;

.field private final shopBlockType:Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->Companion:Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$a;

    return-void
.end method

.method public constructor <init>(JLx9;Lq42;Luf3;Ljf6;Ls47;)V
    .locals 7

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-wide p1, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->admitadId:J

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->admitadPartnerInteractor:Lx9;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->couponsInteractor:Lq42;

    iput-object p5, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->router:Luf3;

    iput-object p6, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->repository:Ljf6;

    iput-object p7, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->resourceProvider:Ls47;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->blocksLoadingState:Ljava/util/HashMap;

    sget-object p1, Lsy8;->App:Lsy8;

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->redirectType:Lsy8;

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$f;

    const-string v5, "getString(I)Ljava/lang/String;"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Ls47;

    const-string v4, "getString"

    move-object v2, p7

    invoke-direct/range {v0 .. v6}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->resString:Lnl3;

    new-instance p1, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$k;

    invoke-direct {p1, p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$k;-><init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->shopBlockType:Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$k;

    return-void
.end method

.method public static final synthetic access$disposeOnDestroy(Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;Lcp2;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy(Lcp2;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getAdmitadId$p(Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;)J
    .locals 2

    iget-wide v0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->admitadId:J

    return-wide v0
.end method

.method public static final synthetic access$getAdmitadPartnerInteractor$p(Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;)Lx9;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->admitadPartnerInteractor:Lx9;

    return-object p0
.end method

.method public static final synthetic access$getBlocksLoadingState$p(Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->blocksLoadingState:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$getHotsPaginator$p(Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;)Ls26;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->hotsPaginator:Ls26;

    return-object p0
.end method

.method public static final synthetic access$getRepository$p(Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;)Ljf6;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->repository:Ljf6;

    return-object p0
.end method

.method public static final synthetic access$getResString$p(Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;)Lnl3;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->resString:Lnl3;

    return-object p0
.end method

.method public static final synthetic access$getShopBlockType$p(Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;)Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$k;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->shopBlockType:Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$k;

    return-object p0
.end method

.method public static final synthetic access$setHotsPaginator$p(Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;Ls26;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->hotsPaginator:Ls26;

    return-void
.end method

.method public static final synthetic access$setRedirectType$p(Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;Lsy8;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->redirectType:Lsy8;

    return-void
.end method

.method public static final synthetic access$setUpCashback(Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;Ldn1$c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->setUpCashback(Ldn1$c;)V

    return-void
.end method

.method public static final synthetic access$setUpFixedCashback(Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;Lew3;Ldn1$c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->setUpFixedCashback(Lew3;Ldn1$c;)V

    return-void
.end method

.method public static synthetic e(Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$c;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->onFirstViewAttach$lambda$0(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method private static final onFirstViewAttach$lambda$0(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final setUpCashback(Ldn1$c;)V
    .locals 1

    iget-object v0, p1, Ldn1$c;->c:Ldn1$a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Ldn1$a;->b:Ldn1$b;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->setUpPowerCode(Ldn1$b;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->setUpPowerCodeCashback(Ldn1$c;)V

    return-void
.end method

.method private final setUpDefaultCashback(Ldn1$c;)V
    .locals 2

    iget-object v0, p1, Ldn1$c;->a:Ljava/lang/String;

    iget-object p1, p1, Ldn1$c;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;

    if-eqz p0, :cond_0

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {p0, v0, v1}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;->setCashbackTitle(Ljava/lang/String;Landroid/text/Spannable;)V

    :cond_0
    return-void
.end method

.method private final setUpFixedCashback(Lew3;Ldn1$c;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->setUpDefaultCashback(Ldn1$c;)V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p2

    check-cast p2, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;

    if-eqz p2, :cond_0

    iget-object v0, p1, Lew3;->a:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;->setFixedCashback(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p1, Lew3;->b:Ldn1$b;

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->setUpPowerCode(Ldn1$b;)V

    :cond_1
    return-void
.end method

.method private final setUpPowerCode(Ldn1$b;)V
    .locals 8

    iget-object v0, p1, Ldn1$b;->b:Ljava/lang/String;

    iget-object v1, p1, Ldn1$b;->c:Ljava/lang/Boolean;

    iget-object p1, p1, Ldn1$b;->e:Ljava/lang/String;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-static {v0}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;

    if-eqz p0, :cond_3

    sget-object v1, Lpb2;->a:Lpb2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lpb2;->f(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    sget-object v2, Lpb2;->i:Lfh8;

    invoke-virtual {v2}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/SimpleDateFormat;

    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    sget-object v3, Lpb2;->k:Lfh8;

    invoke-virtual {v3}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x5265c00

    div-long v4, v2, v0

    rem-long/2addr v2, v0

    const-wide/32 v0, 0x36ee80

    div-long v6, v2, v0

    rem-long/2addr v2, v0

    const-wide/32 v0, 0xea60

    div-long/2addr v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " \u0434. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " \u0447. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " \u043c\u0438\u043d."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;->setPowerCodeHotDescription(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;->setPowerCodeDescription(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private final setUpPowerCodeCashback(Ldn1$c;)V
    .locals 5

    iget-object v0, p1, Ldn1$c;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p1, Ldn1$c;->c:Ldn1$a;

    if-eqz v2, :cond_0

    iget-object v2, v2, Ldn1$a;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v3, p1, Ldn1$c;->b:Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v4

    check-cast v4, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;

    if-eqz v4, :cond_0

    const/16 v1, 0x11

    invoke-static {v1, v2, v3}, Lvp3;->c(ILjava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;->setCashbackTitle(Ljava/lang/String;Landroid/text/Spannable;)V

    sget-object v1, Lj59;->a:Lj59;

    :cond_0
    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->setUpDefaultCashback(Ldn1$c;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final loadNextHots()Lj59;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->hotsPaginator:Ls26;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ls26;->a()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final onAdultConfirmedClick()V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->repository:Ljf6;

    invoke-interface {v0}, Ljf6;->k()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->hotsPaginator:Ls26;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ls26;->c()V

    :cond_0
    return-void
.end method

.method public final onAffiliationCheckClicked(Lwh6;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->router:Luf3;

    new-instance v1, Lmf7;

    iget p1, p1, Lwh6;->a:I

    iget-wide v2, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->admitadId:J

    long-to-int p0, v2

    invoke-direct {v1, p1, p0}, Lmf7;-><init>(II)V

    invoke-virtual {v0, v1}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public final onBackClick()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->router:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public final onCouponClick(J)V
    .locals 5

    new-instance v0, Lkd$e$d$f$a;

    long-to-int v1, p1

    const-string v2, "Go To Promocode"

    invoke-static {v1, v2}, Lud;->c(ILjava/lang/String;)Ljava/util/Map;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-direct {v0, v3}, Lkd$e$d$f;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lkd;->a()V

    new-instance v0, Lkd$e$a$a$e$a;

    iget-wide v3, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->admitadId:J

    long-to-int v3, v3

    invoke-static {v1, v2}, Lud;->c(ILjava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lkd$e$a$a$e;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lkd;->a()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->router:Luf3;

    new-instance v0, Lgg7;

    invoke-direct {v0, p1, p2}, Lgg7;-><init>(J)V

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 4

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->admitadPartnerInteractor:Lx9;

    iget-wide v1, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->admitadId:J

    iget-object v0, v0, Lx9;->a:Laa;

    invoke-interface {v0, v1, v2}, Laa;->i(J)Lmz7;

    move-result-object v0

    new-instance v1, Lp9;

    const/4 v2, 0x0

    sget-object v3, Lu9;->f:Lu9;

    invoke-direct {v1, v3, v2}, Lp9;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lp08;

    invoke-direct {v2, v0, v1}, Lp08;-><init>(Lmz7;Lxl3;)V

    sget-object v0, Lne7;->c:Lhe7;

    invoke-virtual {v2, v0}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$c;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$c;-><init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;)V

    new-instance v2, Lvk0;

    invoke-direct {v2, v1}, Lvk0;-><init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$c;)V

    new-instance v1, Lxz7;

    invoke-direct {v1, v0, v2}, Lxz7;-><init>(Lmz7;Lqx1;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$e;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$e;-><init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;)V

    sget-object v2, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$d;->f:Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$d;

    invoke-static {v1, v2, v0}, Lyb8;->d(Lmz7;Lnl3;Lnl3;)Lrx1;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final onGoToAllOperationsClicked()V
    .locals 4

    new-instance v0, Lkd$e$d$e;

    const-string v1, "Operations"

    invoke-direct {v0, v1}, Lkd$e$d;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkd;->a()V

    new-instance v0, Lkd$e$a$a$d;

    iget-wide v2, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->admitadId:J

    long-to-int v2, v2

    invoke-direct {v0, v2, v1}, Lkd$e$a$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lkd;->a()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->router:Luf3;

    new-instance v0, Lnh7;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public final onGoToShopButtonClick(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkd$e$a$a$a;

    iget-wide v1, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->admitadId:J

    long-to-int v1, v1

    const-string v2, "Button"

    invoke-direct {v0, v1, v2}, Lkd$e$a$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lkd;->a()V

    new-instance v0, Lkd$e$d$a;

    iget-wide v3, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->admitadId:J

    long-to-int v1, v3

    invoke-static {v1, v2}, Lud;->c(ILjava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lkd$e$d;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkd;->a()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->redirectType:Lsy8;

    sget-object v1, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrl(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrl(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;->openGoToLinkInCustomTabs(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final onGoToShopClick(Lsy8;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;->showRedirectDialog(Lsy8;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onHotItemOrderClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkd$e$d$d$a;

    const-string v1, "Go to item"

    invoke-static {v1, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "Hot items"

    invoke-static {v3, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v2}, Lkd$e$d;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkd;->a()V

    new-instance v0, Lkd$e$a$a$c$a;

    iget-wide v2, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->admitadId:J

    long-to-int v2, v2

    invoke-static {v1, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Ljava/util/Map;

    invoke-direct {v0, v2, v1}, Lkd$e$a$a$c;-><init>(ILjava/util/Map;)V

    invoke-virtual {v0}, Lkd;->a()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2, p1}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;->openHotItemUrl(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onMoreCashbackInfoClick(Lr31;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkd$e$d$j;

    iget-wide v1, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->admitadId:J

    const-string v3, "Tap_card_button"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v3, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lkd$e$d;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkd;->a()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->admitadId:J

    invoke-interface {v0, p1, v1, v2}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;->showMoreCashbackDialog(Lr31;J)V

    :cond_0
    return-void
.end method

.method public final onOrdClick(Lb06;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;->showOrdDialog(Lb06;)V

    :cond_0
    return-void
.end method

.method public final onSeeAllCouponsClick()V
    .locals 4

    new-instance v0, Lkd$e$d$f$b$a;

    const-string v1, "Promocode List"

    const-string v2, "Open"

    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Ljava/util/Map;

    invoke-direct {v0, v2}, Lkd$e$d$f;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lkd;->a()V

    new-instance v0, Lkd$e$a$a$e$b;

    iget-wide v2, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->admitadId:J

    long-to-int v2, v2

    invoke-direct {v0, v2, v1}, Lkd$e$a$a$e;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lkd;->a()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->router:Luf3;

    new-instance v1, Lhg7;

    iget-wide v2, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->admitadId:J

    invoke-direct {v1, v2, v3}, Lhg7;-><init>(J)V

    invoke-virtual {v0, v1}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public final onShareCardClicked(Lqx5;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkd$e$d$h;

    iget-wide v1, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->admitadId:J

    long-to-int v1, v1

    const-string v2, "Share"

    invoke-static {v1, v2}, Lud;->c(ILjava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lkd$e$d;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkd;->a()V

    new-instance v0, Lkd$e$a$a$g;

    iget-wide v3, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->admitadId:J

    long-to-int v1, v3

    invoke-direct {v0, v1, v2}, Lkd$e$a$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lkd;->a()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Admitad;

    iget-wide v2, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->admitadId:J

    invoke-direct {v1, v2, v3}, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Admitad;-><init>(J)V

    invoke-virtual {v1}, Lcom/warefly/checkscan/presentation/Deeplink;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lqx5;->c:Ljava/lang/String;

    iget-object v3, p1, Lqx5;->f:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, ""

    :cond_0
    const-string v4, " "

    invoke-static {v2, v4, v3}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->repository:Ljf6;

    invoke-interface {p0}, Ljf6;->d()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lqx5;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p0, p1}, Ljs7;->shareCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final setFavouriteCoupon(JZ)V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->couponsInteractor:Lq42;

    iget-object v0, v0, Lq42;->a:Lt42;

    new-instance v1, Lh63;

    invoke-direct {v1, p3, p1, p2}, Lh63;-><init>(ZJ)V

    invoke-interface {v0, v1}, Lt42;->f(Lh63;)Lqp1;

    move-result-object v0

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Lqp1;->i(Lhe7;)Lrq1;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqp1;->f(Lhe7;)Llq1;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$g;

    invoke-direct {v1, p0, p3}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$g;-><init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;Z)V

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$h;

    invoke-direct {v2, p1, p2, p0, p3}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$h;-><init>(JLcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;Z)V

    invoke-static {v0, v2, v1}, Lyb8;->e(Lqp1;Lll3;Lnl3;)Lcp2;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-static {p0, p1, p2, p3, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final setFavouriteShop(JZ)V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->admitadPartnerInteractor:Lx9;

    iget-object v1, v0, Lx9;->a:Laa;

    new-instance v2, Li63;

    invoke-direct {v2, p3, p1, p2}, Li63;-><init>(ZJ)V

    invoke-interface {v1, v2}, Laa;->l(Li63;)Lqp1;

    move-result-object v1

    new-instance v2, Lo9;

    invoke-direct {v2, v0, p1, p2, p3}, Lo9;-><init>(Lx9;JZ)V

    invoke-virtual {v1, v2}, Lqp1;->e(Lh6;)Loq1;

    move-result-object v0

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Lqp1;->i(Lhe7;)Lrq1;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqp1;->f(Lhe7;)Llq1;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$i;

    invoke-direct {v1, p0, p3}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$i;-><init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;Z)V

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$j;

    invoke-direct {v2, p1, p2, p0, p3}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$j;-><init>(JLcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;Z)V

    invoke-static {v0, v2, v1}, Lyb8;->e(Lqp1;Lll3;Lnl3;)Lcp2;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-static {p0, p1, p2, p3, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final setFloatingButtonVisibility(II)V
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->blocksLoadingState:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->floatingButtonEnabled:Z

    if-eqz v0, :cond_4

    if-le p2, p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;

    if-eqz p0, :cond_4

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;->setFloatingButtonVisibility(Z)V

    :cond_4
    return-void
.end method

.method public final showAllTerm(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lux5;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;->showAllTerms(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final showLoadingDialog(Z)V
    .locals 0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;->showLoadingDialog(Z)V

    :cond_0
    return-void
.end method
