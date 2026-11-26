.class public final Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$a;,
        Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$b;,
        Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;",
        ">;"
    }
.end annotation


# static fields
.field private static final BY_DATE_OF:Ljava/lang/String; = "\u041f\u043e \u0434\u0430\u0442\u0435 \u043f\u043e\u043a\u0443\u043f\u043a\u0438"

.field private static final Companion:Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$b;

.field private static final PERIOD:Ljava/lang/String; = "\u041f\u0435\u0440\u0438\u043e\u0434"

.field private static final SEARCH:Ljava/lang/String; = "\u041f\u043e\u0438\u0441\u043a"

.field private static final SUM:Ljava/lang/String; = "\u0421\u0443\u043c\u043c\u0430"

.field private static final TRANSLATION_INTO_KOPECKS:I = 0x64

.field private static final UNSELECT_SORT:Z = false


# instance fields
.field private final authDisposables:Lfu1;

.field private final bannerShownTracker:Llc0;

.field private final categoriesFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final chequeInteractor:Lxd1;

.field private final chequeRequestQueueInteractor:Lyg1;

.field private final cheques:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lhd1;",
            ">;"
        }
    .end annotation
.end field

.field private chequesPaginator:Ltf3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltf3<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final desktopInteractor:Lzl2;

.field private final electrochequeInteractor:Luv2;

.field private filterChips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final flowRouter:Luf3;

.field private fromDateFilter:Ljava/util/Date;

.field private fromDateServer:Ljava/util/Date;

.field private haveIncorrectCheques:Z

.field private final infoElementsInteractor:Ld54;

.field private isDateRangeSelected:Z

.field private listSorts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lu48;",
            ">;"
        }
    .end annotation
.end field

.field private maxTotalSum:Ljava/lang/Integer;

.field private minTotalSum:Ljava/lang/Integer;

.field private miniBannerId:Ljava/lang/Integer;

.field private final preferencesRepository:Ljf6;

.field private final retailersFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final sendBannerWatchUseCase:Lmo7;

.field private sortDate:Ljava/lang/String;

.field private statistics:Lk78;

.field private final statisticsInteractor:Lq78;

.field private toDateFilter:Ljava/util/Date;

.field private toDateServer:Ljava/util/Date;

.field private final weekdaysFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->Companion:Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$b;

    return-void
.end method

.method public constructor <init>(Luf3;Lxd1;Lzl2;Lyg1;Lq78;Ld54;Luv2;Lfu1;Ljf6;Lmo7;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->flowRouter:Luf3;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->chequeInteractor:Lxd1;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->desktopInteractor:Lzl2;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->chequeRequestQueueInteractor:Lyg1;

    iput-object p5, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->statisticsInteractor:Lq78;

    iput-object p6, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->infoElementsInteractor:Ld54;

    iput-object p7, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->electrochequeInteractor:Luv2;

    iput-object p8, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->authDisposables:Lfu1;

    iput-object p9, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->preferencesRepository:Ljf6;

    iput-object p10, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->sendBannerWatchUseCase:Lmo7;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->cheques:Landroid/util/SparseArray;

    sget-object p1, Lkx2;->b:Lkx2;

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->filterChips:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->categoriesFilters:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->weekdaysFilters:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->retailersFilters:Ljava/util/ArrayList;

    new-instance p1, Llc0;

    invoke-direct {p1, p10}, Llc0;-><init>(Lmo7;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->bannerShownTracker:Llc0;

    return-void
.end method

.method public static final synthetic access$checkHaveIncorrectCheques(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->checkHaveIncorrectCheques()V

    return-void
.end method

.method public static final synthetic access$createSpannedAlfaProgressString(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->createSpannedAlfaProgressString(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCategoriesFilters$p(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->categoriesFilters:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getCheques$p(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->cheques:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static final synthetic access$getChequesListWithTitles(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->getChequesListWithTitles(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getChequesPaginator$p(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;)Ltf3;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->chequesPaginator:Ltf3;

    return-object p0
.end method

.method public static final synthetic access$getRetailersFilters$p(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->retailersFilters:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getWeekdaysFilters$p(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->weekdaysFilters:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$isActiveFilter(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;)Z
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->isActiveFilter()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$loadNextPage(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->loadNextPage(I)V

    return-void
.end method

.method public static final synthetic access$loadScreenContent(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->loadScreenContent()V

    return-void
.end method

.method public static final synthetic access$refreshChequesAndStatisticsFromScratch(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->refreshChequesAndStatisticsFromScratch()V

    return-void
.end method

.method public static final synthetic access$setHaveIncorrectCheques$p(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->haveIncorrectCheques:Z

    return-void
.end method

.method public static final synthetic access$setMiniBannerId$p(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->miniBannerId:Ljava/lang/Integer;

    return-void
.end method

.method public static final synthetic access$setStatistics$p(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;Lk78;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->statistics:Lk78;

    return-void
.end method

.method private final banners()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->chequeInteractor:Lxd1;

    iget-object v0, v0, Lxd1;->a:Lcf1;

    invoke-interface {v0}, Lcf1;->a()Lh08;

    move-result-object v0

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->chequeInteractor:Lxd1;

    iget-object v1, v1, Lxd1;->a:Lcf1;

    invoke-interface {v1}, Lcf1;->l()Loz7;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqp1;->d(Lmz7;)Lrz7;

    move-result-object v0

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$d;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$d;-><init>(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lyb8;->f(Lmz7;Lnl3;Lnl3;I)Lrx1;

    move-result-object v0

    const-string v1, "banners"

    invoke-virtual {p0, v0, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy(Lcp2;Ljava/lang/String;)V

    return-void
.end method

.method private final checkHaveIncorrectCheques()V
    .locals 2

    iget-boolean v0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->haveIncorrectCheques:Z

    sget-object v1, Lkx2;->b:Lkx2;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v1, v0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;->showCheques(Ljava/util/List;Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    invoke-interface {p0, v1, v0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;->showCheques(Ljava/util/List;Z)V

    :cond_1
    return-void
.end method

.method private final createSpannedAlfaProgressString(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 5

    new-instance p0, Landroid/text/SpannableString;

    invoke-direct {p0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/16 v0, 0x2f

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Lta8;->J(CIILjava/lang/CharSequence;)I

    move-result v0

    new-instance v1, Lx18;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 v4, 0x41900000    # 18.0f

    mul-float/2addr v4, v3

    invoke-direct {v1, v4}, Lx18;-><init>(F)V

    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int/2addr v0, v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v4

    if-le v0, p1, :cond_0

    return-object p0

    :cond_0
    const/16 p1, 0x12

    invoke-virtual {p0, v1, v2, v0, p1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0, v3, v2, v0, p1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object p0
.end method

.method public static synthetic e(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$i;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->ignoreBanner$lambda$20(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic f(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$h;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->ignoreBanner$lambda$19(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method private final getChequesListWithTitles(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lhd1;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhd1;

    new-instance v2, Llh1;

    invoke-direct {v2, v1}, Llh1;-><init>(Lhd1;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method private final getCurrentMonthDateRange()Lom1;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lom1<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-direct {v0, v2, v4, v1}, Ljava/util/GregorianCalendar;-><init>(III)V

    new-instance v5, Ljava/util/GregorianCalendar;

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 p0, 0x5

    invoke-virtual {v0, p0}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v8

    const/16 v9, 0x17

    const/16 v10, 0x3b

    invoke-direct/range {v5 .. v10}, Ljava/util/GregorianCalendar;-><init>(IIIII)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljp1;

    invoke-direct {v1, p0, v0}, Ljp1;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    return-object v1
.end method

.method private final getExpenses()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->statisticsInteractor:Lq78;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->getFilter$default(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;ZILjava/lang/Object;)Lha3;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lq78;->a:Lb88;

    invoke-interface {v0, v1}, Lb88;->a(Lha3;)Lmz7;

    move-result-object v0

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$e;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$e;-><init>(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;)V

    invoke-static {v0, v3, v1, v2}, Lyb8;->f(Lmz7;Lnl3;Lnl3;I)Lrx1;

    move-result-object v0

    invoke-static {p0, v0, v3, v2, v3}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private final getFilter(Z)Lha3;
    .locals 8

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->fromDateFilter:Ljava/util/Date;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    sget-object v2, Lpb2;->a:Lpb2;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lpb2;->h(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->toDateFilter:Ljava/util/Date;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_3

    sget-object p1, Lpb2;->a:Lpb2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lpb2;->h(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    move-object v4, p1

    goto :goto_3

    :cond_3
    move-object v4, v1

    :goto_3
    iget-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->categoriesFilters:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    move-object v5, p1

    goto :goto_4

    :cond_4
    move-object v5, v1

    :goto_4
    iget-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->retailersFilters:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    move-object v6, p1

    goto :goto_5

    :cond_5
    move-object v6, v1

    :goto_5
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->weekdaysFilters:Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    move-object v7, p0

    goto :goto_6

    :cond_6
    move-object v7, v1

    :goto_6
    new-instance v2, Lha3;

    invoke-direct/range {v2 .. v7}, Lha3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v2
.end method

.method public static synthetic getFilter$default(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;ZILjava/lang/Object;)Lha3;
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->getFilter(Z)Lha3;

    move-result-object p0

    return-object p0
.end method

.method private final getProcessed()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->electrochequeInteractor:Luv2;

    iget-object v0, v0, Luv2;->a:Lxv2;

    invoke-interface {v0}, Lxv2;->a()Lmz7;

    move-result-object v0

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$f;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$f;-><init>(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lyb8;->f(Lmz7;Lnl3;Lnl3;I)Lrx1;

    move-result-object v0

    invoke-static {p0, v0, v2, v3, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private final getStatistics()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->statisticsInteractor:Lq78;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->getFilter$default(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;ZILjava/lang/Object;)Lha3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lq78;->a(Lha3;)Lmz7;

    move-result-object v0

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$g;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$g;-><init>(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;)V

    invoke-static {v0, v3, v1, v2}, Lyb8;->f(Lmz7;Lnl3;Lnl3;I)Lrx1;

    move-result-object v0

    invoke-static {p0, v0, v3, v2, v3}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private final ignoreBanner(I)V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->chequeInteractor:Lxd1;

    iget-object v0, v0, Lxd1;->a:Lcf1;

    invoke-interface {v0, p1}, Lcf1;->c(I)Lp08;

    move-result-object p1

    sget-object v0, Lne7;->c:Lhe7;

    invoke-virtual {p1, v0}, Lmz7;->i(Lhe7;)Le18;

    move-result-object p1

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object p1

    new-instance v0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$h;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$h;-><init>(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;)V

    new-instance v1, Lpl0;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lpl0;-><init>(Lgh4;I)V

    new-instance v0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$i;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$i;-><init>(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;)V

    new-instance p0, Lql0;

    invoke-direct {p0, v0, v2}, Lql0;-><init>(Lgh4;I)V

    invoke-virtual {p1, v1, p0}, Lmz7;->g(Lqx1;Lqx1;)Lrx1;

    move-result-object p0

    invoke-static {p0}, Lip2;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method private static final ignoreBanner$lambda$19(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final ignoreBanner$lambda$20(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final isActiveFilter()Z
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->sortDate:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->fromDateServer:Ljava/util/Date;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->toDateServer:Ljava/util/Date;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->minTotalSum:Ljava/lang/Integer;

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->maxTotalSum:Ljava/lang/Integer;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private final loadMiniChequeBanner()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->chequeInteractor:Lxd1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lee1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lee1;-><init>(Lxd1;Le02;)V

    new-instance v0, Ltb7;

    invoke-direct {v0, v1}, Ltb7;-><init>(Lbm3;)V

    new-instance v1, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$j;

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$j;-><init>(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;Le02;)V

    new-instance v3, Ldf3;

    invoke-direct {v3, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    const-string v0, "chequeInteractor.getChequesBanner()"

    const/4 v1, 0x2

    invoke-static {v3, v0, v2, v1}, Lm13;->c(Lhd3;Ljava/lang/String;Lnl3;I)Lde3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method private final loadNextPage(I)V
    .locals 11

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->chequeInteractor:Lxd1;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->sortDate:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "PURCHASE_DATE"

    :cond_0
    move-object v9, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->toDateServer:Ljava/util/Date;

    const/4 v10, 0x0

    if-eqz v1, :cond_1

    sget-object v2, Lpb2;->a:Lpb2;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lpb2;->j:Lfh8;

    invoke-virtual {v2}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v5, v1

    goto :goto_0

    :cond_1
    move-object v5, v10

    :goto_0
    iget-object v1, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->fromDateServer:Ljava/util/Date;

    if-eqz v1, :cond_2

    sget-object v2, Lpb2;->a:Lpb2;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lpb2;->j:Lfh8;

    invoke-virtual {v2}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, v1

    goto :goto_1

    :cond_2
    move-object v4, v10

    :goto_1
    iget-object v7, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->minTotalSum:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->maxTotalSum:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lxd1;->a:Lcf1;

    iget-object v1, v0, Lxd1;->b:Ljf6;

    invoke-interface {v1}, Ljf6;->O0()I

    move-result v3

    move v8, p1

    invoke-interface/range {v2 .. v9}, Lcf1;->h(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/String;)Ltb7;

    move-result-object p1

    new-instance v1, Lzd1;

    invoke-direct {v1, v8, v0, v10}, Lzd1;-><init>(ILxd1;Le02;)V

    invoke-static {p1, v1}, Lse3;->a(Lhd3;Lbm3;)Lj91;

    move-result-object p1

    const-string v0, "fetchChequesByPage"

    const/4 v1, 0x2

    invoke-static {p1, v0, v10, v1}, Lm13;->c(Lhd3;Ljava/lang/String;Lnl3;I)Lde3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method private final loadScreenContent()V
    .locals 12

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->chequeInteractor:Lxd1;

    iget-object v1, v0, Lxd1;->d:Lhi0;

    new-instance v2, Lie1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lie1;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lud1;

    invoke-direct {v0, v2, v3}, Lud1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v0}, Ltq5;->d(Lxl3;)Ltq5;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Ltq5;->g(Lhe7;)Lxr5;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v2

    invoke-virtual {v0, v2}, Ltq5;->e(Lhe7;)Lqr5;

    move-result-object v0

    new-instance v2, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$l;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$l;-><init>(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;)V

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v0, v3, v2, v4}, Lyb8;->h(Lqr5;Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter$d;Lnl3;I)Lhh4;

    move-result-object v0

    const-string v2, "subscribeAlfaChequesInProgress"

    invoke-virtual {p0, v0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy(Lcp2;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->chequeRequestQueueInteractor:Lyg1;

    iget-object v0, v0, Lyg1;->a:Lzg1;

    invoke-interface {v0}, Lzg1;->g()Ldh3;

    move-result-object v0

    invoke-virtual {v0, v1}, Lgg3;->h(Lhe7;)Lqh3;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgg3;->c(Lhe7;)Leh3;

    move-result-object v0

    new-instance v2, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$m;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$m;-><init>(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;)V

    invoke-static {v0, v2, v4}, Lyb8;->i(Lgg3;Lnl3;I)Lih4;

    move-result-object v0

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->authDisposables:Lfu1;

    invoke-virtual {v2, v0}, Lfu1;->b(Lcp2;)Z

    const/4 v2, 0x1

    invoke-static {p0, v0, v3, v2, v3}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->observeChangeStateListCheques()V

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->showSorts()V

    new-instance v5, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$n;

    const-string v10, "loadNextPage(I)V"

    const/4 v11, 0x0

    const/4 v6, 0x1

    const-class v8, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;

    const-string v9, "loadNextPage"

    move-object v7, p0

    invoke-direct/range {v5 .. v11}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object p0

    iget-object v0, v7, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->chequeInteractor:Lxd1;

    iget-object v0, v0, Lxd1;->c:Lz68;

    new-instance v6, Lje1;

    const/4 v8, 0x2

    invoke-direct {v6, v8, v3}, Lpg8;-><init>(ILe02;)V

    invoke-static {v0, v6}, Lse3;->a(Lhd3;Lbm3;)Lj91;

    move-result-object v0

    new-instance v6, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$k;

    invoke-direct {v6, v0, v7}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$k;-><init>(Lj91;Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$a;

    new-instance v8, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$o;

    invoke-direct {v8, v7}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$o;-><init>(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;)V

    new-instance v9, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$p;

    invoke-direct {v9, v7}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$p;-><init>(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;)V

    invoke-direct {v0, v7, v8, v9}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$a;-><init>(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$o;Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$p;)V

    new-instance v8, Ltf3;

    invoke-direct {v8, v5, p0, v0, v6}, Ltf3;-><init>(Lnl3;Ly22;Ltf3$d;Lhd3;)V

    iput-object v8, v7, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->chequesPaginator:Ltf3;

    invoke-direct {v7}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->refreshChequesAndStatisticsFromScratch()V

    iget-object p0, v7, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->preferencesRepository:Ljf6;

    invoke-interface {p0}, Ljf6;->v()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-direct {v7}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->banners()V

    :cond_0
    invoke-direct {v7}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->loadMiniChequeBanner()V

    iget-object p0, v7, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->chequeInteractor:Lxd1;

    iget-object p0, p0, Lxd1;->a:Lcf1;

    invoke-static {}, Lxd1;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcf1;->s(Ljava/lang/String;)Lp08;

    move-result-object p0

    sget-object v0, Lba0;->h:Lba0;

    new-instance v5, Lhl0;

    invoke-direct {v5, v0, v2}, Lhl0;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lp08;

    invoke-direct {v0, p0, v5}, Lp08;-><init>(Lmz7;Lxl3;)V

    invoke-virtual {v0, v1}, Lmz7;->i(Lhe7;)Le18;

    move-result-object p0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object p0

    invoke-static {p0, v3, v3, v4}, Lyb8;->f(Lmz7;Lnl3;Lnl3;I)Lrx1;

    move-result-object p0

    const-string v0, "updateProductCategories"

    invoke-virtual {v7, p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy(Lcp2;Ljava/lang/String;)V

    return-void
.end method

.method private final observeChangeStateListCheques()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->chequeInteractor:Lxd1;

    invoke-virtual {v0}, Lxd1;->b()Lhi0;

    move-result-object v0

    sget-object v1, Lne7;->b:Lhe7;

    const-string v2, "unit is null"

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v2}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "scheduler is null"

    invoke-static {v1, v2}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lyq5;

    invoke-direct {v2, v0, v1}, Lyq5;-><init>(Lhi0;Lhe7;)V

    sget-object v0, Lne7;->c:Lhe7;

    invoke-virtual {v2, v0}, Ltq5;->g(Lhe7;)Lxr5;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltq5;->e(Lhe7;)Lqr5;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$q;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$q;-><init>(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lyb8;->h(Lqr5;Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter$d;Lnl3;I)Lhh4;

    move-result-object v0

    const-string v1, "observeChangeStateListCheques"

    invoke-virtual {p0, v0, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy(Lcp2;Ljava/lang/String;)V

    return-void
.end method

.method private final refreshChequesAndStatisticsFromScratch()V
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->categoriesFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->weekdaysFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->retailersFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->resetDateRange()V

    sget-object v0, Lkx2;->b:Lkx2;

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->filterChips:Ljava/util/List;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;->showDeselectDateButton(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->refreshData()V

    return-void
.end method

.method private final refreshData()V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->chequesPaginator:Ltf3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ltf3;->b()V

    :cond_0
    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->getStatistics()V

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->getExpenses()V

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->getProcessed()V

    return-void
.end method

.method private final replacePlaceholder(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->preferencesRepository:Ljf6;

    invoke-interface {v0}, Ljf6;->c0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->preferencesRepository:Ljf6;

    invoke-interface {v1}, Ljf6;->T0()J

    move-result-wide v1

    iget-object v3, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->preferencesRepository:Ljf6;

    invoke-interface {v3}, Ljf6;->c0()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->preferencesRepository:Ljf6;

    invoke-interface {p0}, Ljf6;->U0()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p1, v3, p0}, Lvp3;->b(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final resetDateRange()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->isDateRangeSelected:Z

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->getCurrentMonthDateRange()Lom1;

    move-result-object v0

    invoke-interface {v0}, Lom1;->getStart()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->fromDateFilter:Ljava/util/Date;

    invoke-interface {v0}, Lom1;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->toDateFilter:Ljava/util/Date;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;

    if-eqz p0, :cond_0

    invoke-interface {v0}, Lom1;->getStart()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p0, v0, v2, v1}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;->showDateRange(Ljava/util/Date;Ljava/util/Date;Z)V

    :cond_0
    return-void
.end method

.method private final showNoMoreBanners(Lxb0;Lz96;)V
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p1, Lxb0;->c:I

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->ignoreBanner(I)V

    :cond_0
    if-eqz p2, :cond_1

    iget p1, p2, Lz96;->b:I

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->ignoreBanner(I)V

    :cond_1
    return-void
.end method

.method public static synthetic showNoMoreBanners$default(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;Lxb0;Lz96;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->showNoMoreBanners(Lxb0;Lz96;)V

    return-void
.end method

.method private final showSorts()V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->chequeInteractor:Lxd1;

    iget-object v0, v0, Lxd1;->a:Lcf1;

    invoke-interface {v0}, Lcf1;->i()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->listSorts:Ljava/util/List;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->chequeInteractor:Lxd1;

    iget-object p0, p0, Lxd1;->a:Lcf1;

    invoke-interface {p0}, Lcf1;->i()Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;->showSorts(Ljava/util/List;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final disableSort(Lu48;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$c;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const-string v1, "listSorts"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_9

    const/4 v4, 0x2

    if-eq p1, v4, :cond_6

    const/4 v3, 0x3

    if-eq p1, v3, :cond_3

    const/4 v4, 0x4

    if-eq p1, v4, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->listSorts:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu48;

    invoke-virtual {p1, v0}, Lu48;->e(Z)V

    iput-object v2, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->minTotalSum:Ljava/lang/Integer;

    iput-object v2, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->maxTotalSum:Ljava/lang/Integer;

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->listSorts:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu48;

    const-string v0, "\u0421\u0443\u043c\u043c\u0430"

    invoke-virtual {p1, v0}, Lu48;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    invoke-static {v1}, Laa4;->j(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-static {v1}, Laa4;->j(Ljava/lang/String;)V

    throw v2

    :cond_3
    iget-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->listSorts:Ljava/util/List;

    if-eqz p1, :cond_5

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu48;

    invoke-virtual {p1, v0}, Lu48;->e(Z)V

    iput-object v2, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->fromDateServer:Ljava/util/Date;

    iput-object v2, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->toDateServer:Ljava/util/Date;

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->listSorts:Ljava/util/List;

    if-eqz p1, :cond_4

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu48;

    const-string v0, "\u041f\u0435\u0440\u0438\u043e\u0434"

    invoke-virtual {p1, v0}, Lu48;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {v1}, Laa4;->j(Ljava/lang/String;)V

    throw v2

    :cond_5
    invoke-static {v1}, Laa4;->j(Ljava/lang/String;)V

    throw v2

    :cond_6
    iget-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->listSorts:Ljava/util/List;

    if-eqz p1, :cond_8

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu48;

    invoke-virtual {p1, v0}, Lu48;->e(Z)V

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->listSorts:Ljava/util/List;

    if-eqz p1, :cond_7

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu48;

    const-string v0, "\u041f\u043e\u0438\u0441\u043a"

    invoke-virtual {p1, v0}, Lu48;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    invoke-static {v1}, Laa4;->j(Ljava/lang/String;)V

    throw v2

    :cond_8
    invoke-static {v1}, Laa4;->j(Ljava/lang/String;)V

    throw v2

    :cond_9
    iget-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->listSorts:Ljava/util/List;

    if-eqz p1, :cond_d

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu48;

    invoke-virtual {p1, v0}, Lu48;->e(Z)V

    iput-object v2, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->sortDate:Ljava/lang/String;

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->listSorts:Ljava/util/List;

    if-eqz p1, :cond_c

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu48;

    const-string v0, "\u041f\u043e \u0434\u0430\u0442\u0435 \u043f\u043e\u043a\u0443\u043f\u043a\u0438"

    invoke-virtual {p1, v0}, Lu48;->f(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->refreshData()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;

    if-eqz p1, :cond_b

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->listSorts:Ljava/util/List;

    if-eqz p0, :cond_a

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;->refreshSorts(Ljava/util/List;)V

    return-void

    :cond_a
    invoke-static {v1}, Laa4;->j(Ljava/lang/String;)V

    throw v2

    :cond_b
    return-void

    :cond_c
    invoke-static {v1}, Laa4;->j(Ljava/lang/String;)V

    throw v2

    :cond_d
    invoke-static {v1}, Laa4;->j(Ljava/lang/String;)V

    throw v2
.end method

.method public final exportCheques()V
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->flowRouter:Luf3;

    new-instance v0, Lbg7;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public final onBackPressed()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public final onChequeClicked(I)V
    .locals 1

    new-instance v0, Lkd$g$c$a;

    invoke-direct {v0}, Lkd$g$c$a;-><init>()V

    invoke-virtual {v0}, Lkd;->a()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->cheques:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhd1;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->flowRouter:Luf3;

    new-instance v0, Lyf7;

    invoke-direct {v0, p1}, Lyf7;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    :cond_0
    return-void
.end method

.method public final onDateRangeSelected(JJ)V
    .locals 2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->fromDateServer:Ljava/util/Date;

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1, p3, p4}, Ljava/util/Date;-><init>(J)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->toDateServer:Ljava/util/Date;

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->listSorts:Ljava/util/List;

    const/4 p2, 0x0

    const-string p3, "listSorts"

    if-eqz p1, :cond_6

    const/4 p4, 0x2

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu48;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lu48;->e(Z)V

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->fromDateServer:Ljava/util/Date;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->listSorts:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu48;

    sget-object v1, Lpb2;->a:Lpb2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lpb2;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lu48;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p3}, Laa4;->j(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->toDateServer:Ljava/util/Date;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->listSorts:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lu48;

    invoke-virtual {p4}, Lu48;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lpb2;->a:Lpb2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lpb2;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "- "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lu48;->f(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {p3}, Laa4;->j(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;

    if-eqz p1, :cond_5

    iget-object p4, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->listSorts:Ljava/util/List;

    if-eqz p4, :cond_4

    invoke-interface {p1, p4}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;->refreshSorts(Ljava/util/List;)V

    goto :goto_2

    :cond_4
    invoke-static {p3}, Laa4;->j(Ljava/lang/String;)V

    throw p2

    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->refreshData()V

    return-void

    :cond_6
    invoke-static {p3}, Laa4;->j(Ljava/lang/String;)V

    throw p2
.end method

.method public final onDateSort(Ls48;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ls48;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->sortDate:Ljava/lang/String;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->listSorts:Ljava/util/List;

    const/4 v1, 0x0

    const-string v2, "listSorts"

    if-eqz v0, :cond_3

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu48;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lu48;->e(Z)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->listSorts:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu48;

    invoke-virtual {p1}, Ls48;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lu48;->f(Ljava/lang/String;)V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->listSorts:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;->refreshSorts(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Laa4;->j(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->refreshData()V

    return-void

    :cond_2
    invoke-static {v2}, Laa4;->j(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v2}, Laa4;->j(Ljava/lang/String;)V

    throw v1
.end method

.method public final onDeleteCheque(I)V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->chequeInteractor:Lxd1;

    iget-object v1, v0, Lxd1;->a:Lcf1;

    invoke-interface {v1, p1}, Lcf1;->o(I)Lh08;

    move-result-object p1

    new-instance v1, Lvd1;

    invoke-direct {v1, v0}, Lvd1;-><init>(Lxd1;)V

    invoke-virtual {p1, v1}, Lqp1;->c(Lqq1;)Lrp1;

    move-result-object p1

    sget-object v0, Lne7;->c:Lhe7;

    invoke-virtual {p1, v0}, Lqp1;->i(Lhe7;)Lrq1;

    move-result-object p1

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lqp1;->f(Lhe7;)Llq1;

    move-result-object p1

    new-instance v0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$r;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$r;-><init>(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Lyb8;->g(Llq1;Lnl3;Lll3;I)Lcp2;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v2, v0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final onEditSuggestedAddress(I)V
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->flowRouter:Luf3;

    new-instance v0, Lyf7;

    invoke-direct {v0, p1}, Lyf7;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 4

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->chequeRequestQueueInteractor:Lyg1;

    invoke-virtual {v0}, Lyg1;->b()V

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->loadScreenContent()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->desktopInteractor:Lzl2;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object v1

    new-instance v2, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$s;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$s;-><init>(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;Le02;)V

    invoke-virtual {v0, v1, v2}, Lzl2;->c(Ly22;Lbm3;)V

    return-void
.end method

.method public final onGetMoreCheques()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->chequesPaginator:Ltf3;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ltf3;->a()V

    :cond_0
    return-void
.end method

.method public final onInformerClick(Lxb0;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkd$h$a$a;

    iget v1, p1, Lxb0;->c:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkd$h$a$a;-><init>(IZ)V

    invoke-virtual {v0}, Lkd;->a()V

    iget-object p1, p1, Lxb0;->a:Lxb0$a;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lxb0$a;->c:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string v0, "{user_id}"

    invoke-static {p1, v0, v2}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->replacePlaceholder(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;->openDeeplink(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onInformerClosed(Lxb0;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkd$h$a$a;

    iget v1, p1, Lxb0;->c:I

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkd$h$a$a;-><init>(IZ)V

    invoke-virtual {v0}, Lkd;->a()V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->showNoMoreBanners$default(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;Lxb0;Lz96;ILjava/lang/Object;)V

    return-void
.end method

.method public final onMiniBannerClick(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkd$q0$a$b$a;

    const-string v1, "Banner"

    invoke-static {v1, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lkd$q0$a$b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkd;->c()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onPollClosed(Lz96;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Lz96;->b:I

    iget-boolean v1, p1, Lz96;->e:Z

    if-eqz v1, :cond_0

    new-instance v1, Lkd$h$a$b$a;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "Close"

    invoke-static {v0, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/util/Map;

    invoke-direct {v1, v0}, Lkd$h$a$b;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lkd;->a()V

    goto :goto_0

    :cond_0
    new-instance v1, Lkd$h$a$b$b;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "Skip"

    invoke-static {v0, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/util/Map;

    invoke-direct {v1, v0}, Lkd$h$a$b;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lkd;->a()V

    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0, v1}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->showNoMoreBanners$default(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;Lxb0;Lz96;ILjava/lang/Object;)V

    return-void
.end method

.method public final onPollVariantComplete(Lz96$a;Lz96;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkd$h$a$b$c;

    iget v1, p2, Lz96;->b:I

    iget-object v2, p1, Lz96$a;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Ljava/util/Map;

    invoke-direct {v0, v2}, Lkd$h$a$b;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lkd;->a()V

    iget-object p2, p2, Lz96;->d:Ljava/util/List;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->infoElementsInteractor:Ld54;

    iget-object p1, p1, Ld54;->a:Lcf1;

    invoke-interface {p1, v1}, Lcf1;->p(I)Lcq1;

    move-result-object p1

    sget-object p2, Lne7;->c:Lhe7;

    invoke-virtual {p1, p2}, Lqp1;->i(Lhe7;)Lrq1;

    move-result-object p1

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object p2

    invoke-virtual {p1, p2}, Lqp1;->f(Lhe7;)Llq1;

    move-result-object p1

    const/4 p2, 0x3

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, p2}, Lyb8;->g(Llq1;Lnl3;Lll3;I)Lcp2;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p0, p1, v0, p2, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onQueueClicked()V
    .locals 7

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->flowRouter:Luf3;

    new-instance v0, Lwh7;

    const/4 v5, 0x0

    const/16 v6, 0x1d

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct/range {v0 .. v6}, Lwh7;-><init>(Ljava/lang/String;ZJLjava/lang/String;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public final onRefreshChequesAndStatisticsWithCurrentFilters()V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->refreshData()V

    return-void
.end method

.method public final onStatisticsClicked()V
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    sget-object v0, Lgi7;->a:Lgi7;

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public final onSumSort(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->minTotalSum:Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->maxTotalSum:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->listSorts:Ljava/util/List;

    const/4 v1, 0x0

    const-string v2, "listSorts"

    if-eqz v0, :cond_3

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu48;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lu48;->e(Z)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->listSorts:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu48;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " - "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lu48;->f(Ljava/lang/String;)V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->listSorts:Ljava/util/List;

    if-eqz p2, :cond_0

    invoke-interface {p1, p2}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;->refreshSorts(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Laa4;->j(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->refreshData()V

    return-void

    :cond_2
    invoke-static {v2}, Laa4;->j(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v2}, Laa4;->j(Ljava/lang/String;)V

    throw v1
.end method

.method public final openSearch()V
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->flowRouter:Luf3;

    sget-object v0, Ldh7;->a:Ldh7;

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public final removeReceiptFromQueue(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->chequeRequestQueueInteractor:Lyg1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lyg1;->a:Lzg1;

    invoke-interface {v0, p1}, Lzg1;->a(Ljava/lang/String;)Lrp1;

    move-result-object p1

    sget-object v0, Lne7;->c:Lhe7;

    invoke-virtual {p1, v0}, Lqp1;->i(Lhe7;)Lrq1;

    move-result-object p1

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lqp1;->f(Lhe7;)Llq1;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {p1, v0, v0, v1}, Lyb8;->g(Llq1;Lnl3;Lll3;I)Lcp2;

    move-result-object p1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->authDisposables:Lfu1;

    invoke-virtual {p0, p1}, Lfu1;->b(Lcp2;)Z

    return-void
.end method

.method public final resetMiniBannerWasShown()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->bannerShownTracker:Llc0;

    iget-object p0, p0, Llc0;->b:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public final sendMiniBannerWatched()V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->miniBannerId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->bannerShownTracker:Llc0;

    iget-object v1, p0, Llc0;->b:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object p0, p0, Llc0;->a:Lmo7;

    invoke-virtual {p0, v0}, Lmo7;->a(I)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final showOrdAdDialog(Lb06;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;->showOrdAdDialog(Lb06;)V

    :cond_0
    return-void
.end method
