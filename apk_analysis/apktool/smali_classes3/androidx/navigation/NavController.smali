.class public Landroidx/navigation/NavController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/NavController$Companion;,
        Landroidx/navigation/NavController$NavControllerNavigatorState;,
        Landroidx/navigation/NavController$OnDestinationChangedListener;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/navigation/NavController$Companion;

.field public static final KEY_DEEP_LINK_ARGS:Ljava/lang/String; = "android-support-nav:controller:deepLinkArgs"

.field public static final KEY_DEEP_LINK_EXTRAS:Ljava/lang/String; = "android-support-nav:controller:deepLinkExtras"

.field public static final KEY_DEEP_LINK_HANDLED:Ljava/lang/String; = "android-support-nav:controller:deepLinkHandled"

.field public static final KEY_DEEP_LINK_IDS:Ljava/lang/String; = "android-support-nav:controller:deepLinkIds"

.field public static final KEY_DEEP_LINK_INTENT:Ljava/lang/String; = "android-support-nav:controller:deepLinkIntent"

.field private static deepLinkSaveState:Z


# instance fields
.field private activity:Landroid/app/Activity;

.field private final context:Landroid/content/Context;

.field private deepLinkHandled:Z

.field private enableOnBackPressedCallback:Z

.field private final impl:Landroidx/navigation/internal/NavControllerImpl;

.field private inflater:Landroidx/navigation/NavInflater;

.field private final navContext:Landroidx/navigation/internal/NavContext;

.field private final navInflater$delegate:Lcl4;

.field private final onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

.field private onBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/navigation/NavController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/navigation/NavController$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/navigation/NavController;->Companion:Landroidx/navigation/NavController$Companion;

    const/4 v0, 0x1

    sput-boolean v0, Landroidx/navigation/NavController;->deepLinkSaveState:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    new-instance v0, Landroidx/navigation/internal/NavControllerImpl;

    new-instance v1, Lji5;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lji5;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, p0, v1}, Landroidx/navigation/internal/NavControllerImpl;-><init>(Landroidx/navigation/NavController;Lll3;)V

    iput-object v0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    new-instance v0, Landroidx/navigation/internal/NavContext;

    invoke-direct {v0, p1}, Landroidx/navigation/internal/NavContext;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/navigation/NavController;->navContext:Landroidx/navigation/internal/NavContext;

    new-instance v0, Lxy2;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lxy2;-><init>(I)V

    invoke-static {v0, p1}, Ldp7;->h(Lnl3;Ljava/lang/Object;)Lzo7;

    move-result-object p1

    invoke-interface {p1}, Lzo7;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Landroidx/navigation/NavController;->activity:Landroid/app/Activity;

    new-instance p1, Landroidx/navigation/NavController$onBackPressedCallback$1;

    invoke-direct {p1, p0}, Landroidx/navigation/NavController$onBackPressedCallback$1;-><init>(Landroidx/navigation/NavController;)V

    iput-object p1, p0, Landroidx/navigation/NavController;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/navigation/NavController;->enableOnBackPressedCallback:Z

    iget-object p1, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p1}, Landroidx/navigation/internal/NavControllerImpl;->get_navigatorProvider$navigation_runtime_release()Landroidx/navigation/NavigatorProvider;

    move-result-object p1

    new-instance v0, Landroidx/navigation/NavGraphNavigator;

    iget-object v2, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {v2}, Landroidx/navigation/internal/NavControllerImpl;->get_navigatorProvider$navigation_runtime_release()Landroidx/navigation/NavigatorProvider;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/navigation/NavGraphNavigator;-><init>(Landroidx/navigation/NavigatorProvider;)V

    invoke-virtual {p1, v0}, Landroidx/navigation/NavigatorProvider;->addNavigator(Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;

    iget-object p1, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p1}, Landroidx/navigation/internal/NavControllerImpl;->get_navigatorProvider$navigation_runtime_release()Landroidx/navigation/NavigatorProvider;

    move-result-object p1

    new-instance v0, Landroidx/navigation/ActivityNavigator;

    iget-object v2, p0, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroidx/navigation/ActivityNavigator;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/navigation/NavigatorProvider;->addNavigator(Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;

    new-instance p1, Le84;

    invoke-direct {p1, p0, v1}, Le84;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lfh8;

    invoke-direct {v0, p1}, Lfh8;-><init>(Lll3;)V

    iput-object v0, p0, Landroidx/navigation/NavController;->navInflater$delegate:Lcl4;

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    invoke-static {p0}, Landroidx/navigation/NavController;->activity$lambda$1(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getImpl$p(Landroidx/navigation/NavController;)Landroidx/navigation/internal/NavControllerImpl;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    return-object p0
.end method

.method public static final synthetic access$setDeepLinkSaveState$cp(Z)V
    .locals 0

    sput-boolean p0, Landroidx/navigation/NavController;->deepLinkSaveState:Z

    return-void
.end method

.method private static final activity$lambda$1(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic b(Landroidx/navigation/NavController;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/navigation/NavController;->impl$lambda$0(Landroidx/navigation/NavController;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroidx/navigation/NavDestination;Landroidx/navigation/NavController;Landroidx/navigation/NavOptionsBuilder;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/navigation/NavController;->handleDeepLink$lambda$21(Landroidx/navigation/NavDestination;Landroidx/navigation/NavController;Landroidx/navigation/NavOptionsBuilder;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroidx/navigation/PopUpToBuilder;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/navigation/NavController;->handleDeepLink$lambda$21$lambda$20(Landroidx/navigation/PopUpToBuilder;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Landroidx/navigation/NavController;)Landroidx/navigation/NavInflater;
    .locals 0

    invoke-static {p0}, Landroidx/navigation/NavController;->navInflater_delegate$lambda$10(Landroidx/navigation/NavController;)Landroidx/navigation/NavInflater;

    move-result-object p0

    return-object p0
.end method

.method public static final enableDeepLinkSaveState(Z)V
    .locals 1

    sget-object v0, Landroidx/navigation/NavController;->Companion:Landroidx/navigation/NavController$Companion;

    invoke-virtual {v0, p0}, Landroidx/navigation/NavController$Companion;->enableDeepLinkSaveState(Z)V

    return-void
.end method

.method public static synthetic f(Landroidx/navigation/AnimBuilder;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/navigation/NavController;->handleDeepLink$lambda$21$lambda$18(Landroidx/navigation/AnimBuilder;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic findDestination$default(Landroidx/navigation/NavController;ILandroidx/navigation/NavDestination;ILjava/lang/Object;)Landroidx/navigation/NavDestination;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/navigation/NavController;->findDestination(ILandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "Super calls with default arguments not supported in this target, function: findDestination"

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic findDestinationComprehensive$default(Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;IZLandroidx/navigation/NavDestination;ILjava/lang/Object;)Landroidx/navigation/NavDestination;
    .locals 0

    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/navigation/NavController;->findDestinationComprehensive(Landroidx/navigation/NavDestination;IZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "Super calls with default arguments not supported in this target, function: findDestinationComprehensive"

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private final findInvalidDestinationDisplayNameInDeepLink([I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0, p1}, Landroidx/navigation/internal/NavControllerImpl;->findInvalidDestinationDisplayNameInDeepLink$navigation_runtime_release([I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getDestinationCountOnBackStack()I
    .locals 2

    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->getBackQueue$navigation_runtime_release()Lfr;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v1

    instance-of v1, v1, Landroidx/navigation/NavGraph;

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    if-ltz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lu96;->n()V

    const/4 p0, 0x0

    throw p0

    :cond_3
    return v0
.end method

.method private final handleDeepLink([I[Landroid/os/Bundle;Z)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    .line 298
    iget-object v1, v0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    .line 299
    const-string v7, "Deep Linking failed: destination "

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz p3, :cond_3

    .line 300
    invoke-virtual {v1}, Landroidx/navigation/internal/NavControllerImpl;->getBackQueue$navigation_runtime_release()Lfr;

    move-result-object v1

    invoke-virtual {v1}, Lfr;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 301
    iget-object v1, v0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {v1}, Landroidx/navigation/internal/NavControllerImpl;->get_graph$navigation_runtime_release()Landroidx/navigation/NavGraph;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroidx/navigation/NavDestination;->getId()I

    move-result v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroidx/navigation/NavController;->popBackStackInternal$default(Landroidx/navigation/NavController;IZZILjava/lang/Object;)Z

    :cond_0
    move v1, v9

    .line 302
    :goto_0
    array-length v2, v6

    if-ge v1, v2, :cond_2

    .line 303
    aget v2, v6, v1

    add-int/lit8 v3, v1, 0x1

    .line 304
    aget-object v1, p2, v1

    const/4 v4, 0x2

    .line 305
    invoke-static {v0, v2, v8, v4, v8}, Landroidx/navigation/NavController;->findDestination$default(Landroidx/navigation/NavController;ILandroidx/navigation/NavDestination;ILjava/lang/Object;)Landroidx/navigation/NavDestination;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 306
    new-instance v2, Lzb5;

    invoke-direct {v2, v10, v4, v0}, Lzb5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Landroidx/navigation/NavOptionsBuilderKt;->navOptions(Lnl3;)Landroidx/navigation/NavOptions;

    move-result-object v2

    .line 307
    invoke-direct {v0, v4, v1, v2, v8}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    move v1, v3

    goto :goto_0

    .line 308
    :cond_1
    sget-object v1, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    iget-object v3, v0, Landroidx/navigation/NavController;->navContext:Landroidx/navigation/internal/NavContext;

    invoke-virtual {v1, v3, v2}, Landroidx/navigation/NavDestination$Companion;->getDisplayName(Landroidx/navigation/internal/NavContext;I)Ljava/lang/String;

    move-result-object v1

    .line 309
    const-string v2, " cannot be found from the current destination "

    .line 310
    invoke-static {v7, v1, v2}, Ln7;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 311
    invoke-virtual {v0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    .line 312
    invoke-static {v0, v1}, Leq;->e(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    return v9

    .line 313
    :cond_2
    iput-boolean v10, v0, Landroidx/navigation/NavController;->deepLinkHandled:Z

    return v10

    .line 314
    :cond_3
    invoke-virtual {v1}, Landroidx/navigation/internal/NavControllerImpl;->get_graph$navigation_runtime_release()Landroidx/navigation/NavGraph;

    move-result-object v1

    .line 315
    array-length v2, v6

    move v3, v9

    :goto_1
    if-ge v3, v2, :cond_9

    .line 316
    aget v4, v6, v3

    .line 317
    aget-object v5, p2, v3

    if-nez v3, :cond_4

    .line 318
    iget-object v11, v0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {v11}, Landroidx/navigation/internal/NavControllerImpl;->get_graph$navigation_runtime_release()Landroidx/navigation/NavGraph;

    move-result-object v11

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v4}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/NavDestination;

    move-result-object v11

    :goto_2
    if-eqz v11, :cond_8

    .line 319
    array-length v4, v6

    sub-int/2addr v4, v10

    if-eq v3, v4, :cond_6

    .line 320
    instance-of v4, v11, Landroidx/navigation/NavGraph;

    if-eqz v4, :cond_7

    .line 321
    check-cast v11, Landroidx/navigation/NavGraph;

    .line 322
    :goto_3
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Landroidx/navigation/NavGraph;->getStartDestinationId()I

    move-result v1

    invoke-virtual {v11, v1}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/NavDestination;

    move-result-object v1

    instance-of v1, v1, Landroidx/navigation/NavGraph;

    if-eqz v1, :cond_5

    .line 323
    invoke-virtual {v11}, Landroidx/navigation/NavGraph;->getStartDestinationId()I

    move-result v1

    invoke-virtual {v11, v1}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/NavDestination;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroidx/navigation/NavGraph;

    goto :goto_3

    :cond_5
    move-object v1, v11

    goto :goto_4

    .line 324
    :cond_6
    new-instance v12, Landroidx/navigation/NavOptions$Builder;

    invoke-direct {v12}, Landroidx/navigation/NavOptions$Builder;-><init>()V

    .line 325
    iget-object v4, v0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {v4}, Landroidx/navigation/internal/NavControllerImpl;->get_graph$navigation_runtime_release()Landroidx/navigation/NavGraph;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Landroidx/navigation/NavDestination;->getId()I

    move-result v13

    const/16 v16, 0x4

    const/16 v17, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Landroidx/navigation/NavOptions$Builder;->setPopUpTo$default(Landroidx/navigation/NavOptions$Builder;IZZILjava/lang/Object;)Landroidx/navigation/NavOptions$Builder;

    move-result-object v4

    .line 326
    invoke-virtual {v4, v9}, Landroidx/navigation/NavOptions$Builder;->setEnterAnim(I)Landroidx/navigation/NavOptions$Builder;

    move-result-object v4

    .line 327
    invoke-virtual {v4, v9}, Landroidx/navigation/NavOptions$Builder;->setExitAnim(I)Landroidx/navigation/NavOptions$Builder;

    move-result-object v4

    .line 328
    invoke-virtual {v4}, Landroidx/navigation/NavOptions$Builder;->build()Landroidx/navigation/NavOptions;

    move-result-object v4

    .line 329
    invoke-direct {v0, v11, v5, v4, v8}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 330
    :cond_8
    sget-object v2, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    iget-object v0, v0, Landroidx/navigation/NavController;->navContext:Landroidx/navigation/internal/NavContext;

    invoke-virtual {v2, v0, v4}, Landroidx/navigation/NavDestination$Companion;->getDisplayName(Landroidx/navigation/internal/NavContext;I)Ljava/lang/String;

    move-result-object v0

    .line 331
    const-string v2, " cannot be found in graph "

    .line 332
    invoke-static {v7, v0, v2, v1}, Llt0;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v9

    .line 333
    :cond_9
    iput-boolean v10, v0, Landroidx/navigation/NavController;->deepLinkHandled:Z

    return v10
.end method

.method private static final handleDeepLink$lambda$21(Landroidx/navigation/NavDestination;Landroidx/navigation/NavController;Landroidx/navigation/NavOptionsBuilder;)Lj59;
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lvy2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lvy2;-><init>(I)V

    invoke-virtual {p2, v0}, Landroidx/navigation/NavOptionsBuilder;->anim(Lnl3;)V

    instance-of v0, p0, Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_3

    sget-object v0, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    invoke-virtual {v0, p0}, Landroidx/navigation/NavDestination$Companion;->getHierarchy(Landroidx/navigation/NavDestination;)Lzo7;

    move-result-object p0

    invoke-interface {p0}, Lzo7;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavDestination;

    invoke-virtual {p1}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_2
    sget-boolean p0, Landroidx/navigation/NavController;->deepLinkSaveState:Z

    if-eqz p0, :cond_3

    sget-object p0, Landroidx/navigation/NavGraph;->Companion:Landroidx/navigation/NavGraph$Companion;

    invoke-virtual {p1}, Landroidx/navigation/NavController;->getGraph()Landroidx/navigation/NavGraph;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/navigation/NavGraph$Companion;->findStartDestination(Landroidx/navigation/NavGraph;)Landroidx/navigation/NavDestination;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/navigation/NavDestination;->getId()I

    move-result p0

    new-instance p1, Lii5;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lii5;-><init>(I)V

    invoke-virtual {p2, p0, p1}, Landroidx/navigation/NavOptionsBuilder;->popUpTo(ILnl3;)V

    :cond_3
    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final handleDeepLink$lambda$21$lambda$18(Landroidx/navigation/AnimBuilder;)Lj59;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/navigation/AnimBuilder;->setEnter(I)V

    invoke-virtual {p0, v0}, Landroidx/navigation/AnimBuilder;->setExit(I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final handleDeepLink$lambda$21$lambda$20(Landroidx/navigation/PopUpToBuilder;)Lj59;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/navigation/PopUpToBuilder;->setSaveState(Z)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final impl$lambda$0(Landroidx/navigation/NavController;)Lj59;
    .locals 0

    invoke-direct {p0}, Landroidx/navigation/NavController;->updateOnBackPressedCallbackEnabled()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final navInflater_delegate$lambda$10(Landroidx/navigation/NavController;)Landroidx/navigation/NavInflater;
    .locals 2

    iget-object v0, p0, Landroidx/navigation/NavController;->inflater:Landroidx/navigation/NavInflater;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/navigation/NavInflater;

    iget-object v1, p0, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->get_navigatorProvider$navigation_runtime_release()Landroidx/navigation/NavigatorProvider;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroidx/navigation/NavInflater;-><init>(Landroid/content/Context;Landroidx/navigation/NavigatorProvider;)V

    :cond_0
    return-object v0
.end method

.method private final navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V
    .locals 0

    .line 319
    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/navigation/internal/NavControllerImpl;->navigate$navigation_runtime_release(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    return-void
.end method

.method public static synthetic navigate$default(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;ILjava/lang/Object;)V
    .locals 1

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 23
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/navigation/NavController;->navigate(Ljava/lang/Object;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    return-void

    :cond_2
    const-string p0, "Super calls with default arguments not supported in this target, function: navigate"

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic navigate$default(Landroidx/navigation/NavController;Ljava/lang/String;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;ILjava/lang/Object;)V
    .locals 1

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/navigation/NavController;->navigate(Ljava/lang/String;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    return-void

    :cond_2
    const-string p0, "Super calls with default arguments not supported in this target, function: navigate"

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic popBackStack$default(Landroidx/navigation/NavController;Ljava/lang/Object;ZZILjava/lang/Object;)Z
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 22
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/navigation/NavController;->popBackStack(Ljava/lang/Object;ZZ)Z

    move-result p0

    return p0

    :cond_1
    const-string p0, "Super calls with default arguments not supported in this target, function: popBackStack"

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic popBackStack$default(Landroidx/navigation/NavController;Ljava/lang/String;ZZILjava/lang/Object;)Z
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/navigation/NavController;->popBackStack(Ljava/lang/String;ZZ)Z

    move-result p0

    return p0

    :cond_1
    const-string p0, "Super calls with default arguments not supported in this target, function: popBackStack"

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic popBackStack$default(Landroidx/navigation/NavController;Lne4;ZZILjava/lang/Object;)Z
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 21
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/navigation/NavController;->popBackStack(Lne4;ZZ)Z

    move-result p0

    return p0

    :cond_1
    const-string p0, "Super calls with default arguments not supported in this target, function: popBackStack"

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static popBackStack$default(Landroidx/navigation/NavController;ZZILjava/lang/Object;)Z
    .locals 0

    if-nez p4, :cond_0

    .line 19
    invoke-static {}, Laa4;->i()V

    const/4 p0, 0x0

    throw p0

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: popBackStack"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final popBackStackInternal(IZZ)Z
    .locals 0

    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/navigation/internal/NavControllerImpl;->popBackStackInternal$navigation_runtime_release(IZZ)Z

    move-result p0

    return p0
.end method

.method public static synthetic popBackStackInternal$default(Landroidx/navigation/NavController;IZZILjava/lang/Object;)Z
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/navigation/NavController;->popBackStackInternal(IZZ)Z

    move-result p0

    return p0

    :cond_1
    const-string p0, "Super calls with default arguments not supported in this target, function: popBackStackInternal"

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private final tryRelaunchUpToExplicitStack()Z
    .locals 13

    iget-boolean v0, p0, Landroidx/navigation/NavController;->deepLinkHandled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "android-support-nav:controller:deepLinkIds"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    array-length v5, v3

    move v6, v1

    :goto_0
    if-ge v6, v5, :cond_1

    aget v7, v3, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "android-support-nav:controller:deepLinkArgs"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-static {v4}, Lnn1;->E(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v8

    if-eqz v3, :cond_3

    invoke-static {v3}, Lnn1;->E(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    :cond_3
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getGraph()Landroidx/navigation/NavGraph;

    move-result-object v7

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, p0

    invoke-static/range {v6 .. v12}, Landroidx/navigation/NavController;->findDestinationComprehensive$default(Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;IZLandroidx/navigation/NavDestination;ILjava/lang/Object;)Landroidx/navigation/NavDestination;

    move-result-object p0

    instance-of v5, p0, Landroidx/navigation/NavGraph;

    if-eqz v5, :cond_4

    sget-object v5, Landroidx/navigation/NavGraph;->Companion:Landroidx/navigation/NavGraph$Companion;

    check-cast p0, Landroidx/navigation/NavGraph;

    invoke-virtual {v5, p0}, Landroidx/navigation/NavGraph$Companion;->findStartDestination(Landroidx/navigation/NavGraph;)Landroidx/navigation/NavDestination;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v8

    :cond_4
    invoke-virtual {v6}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroidx/navigation/NavDestination;->getId()I

    move-result p0

    if-ne v8, p0, :cond_a

    invoke-virtual {v6}, Landroidx/navigation/NavController;->createDeepLink()Landroidx/navigation/NavDeepLinkBuilder;

    move-result-object p0

    new-array v5, v1, [Lb36;

    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lb36;

    invoke-static {v5}, Landroidx/core/os/BundleKt;->bundleOf([Lb36;)Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v5}, Landroidx/savedstate/SavedStateWriter;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "android-support-nav:controller:deepLinkIntent"

    invoke-static {v7, v8, v0}, Landroidx/savedstate/SavedStateWriter;->putParcelable-impl(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "android-support-nav:controller:deepLinkExtras"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v7, v0}, Landroidx/savedstate/SavedStateWriter;->putAll-impl(Landroid/os/Bundle;Landroid/os/Bundle;)V

    :cond_5
    invoke-virtual {p0, v5}, Landroidx/navigation/NavDeepLinkBuilder;->setArguments(Landroid/os/Bundle;)Landroidx/navigation/NavDeepLinkBuilder;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v4, v1, 0x1

    const/4 v5, 0x0

    if-ltz v1, :cond_7

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-eqz v3, :cond_6

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/os/Bundle;

    :cond_6
    invoke-virtual {p0, v2, v5}, Landroidx/navigation/NavDeepLinkBuilder;->addDestination(ILandroid/os/Bundle;)Landroidx/navigation/NavDeepLinkBuilder;

    move v1, v4

    goto :goto_1

    :cond_7
    invoke-static {}, Lu96;->o()V

    throw v5

    :cond_8
    invoke-virtual {p0}, Landroidx/navigation/NavDeepLinkBuilder;->createTaskStackBuilder()Landroidx/core/app/TaskStackBuilder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/app/TaskStackBuilder;->startActivities()V

    iget-object p0, v6, Landroidx/navigation/NavController;->activity:Landroid/app/Activity;

    const/4 v0, 0x1

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_9
    return v0

    :cond_a
    :goto_2
    return v1
.end method

.method private final tryRelaunchUpToGeneratedStack()Z
    .locals 7

    invoke-virtual {p0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v1

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->getStartDestinationId()I

    move-result v3

    if-eq v3, v1, :cond_3

    new-array v1, v2, [Lb36;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lb36;

    invoke-static {v1}, Landroidx/core/os/BundleKt;->bundleOf([Lb36;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Landroidx/savedstate/SavedStateWriter;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Landroidx/navigation/NavController;->activity:Landroid/app/Activity;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroidx/navigation/NavController;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroidx/navigation/NavController;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "android-support-nav:controller:deepLinkIntent"

    invoke-static {v2, v6, v3}, Landroidx/savedstate/SavedStateWriter;->putParcelable-impl(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v3, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {v3}, Landroidx/navigation/internal/NavControllerImpl;->getTopGraph$navigation_runtime_release()Landroidx/navigation/NavGraph;

    move-result-object v3

    iget-object v6, p0, Landroidx/navigation/NavController;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Landroidx/navigation/NavControllerKt;->NavDeepLinkRequest(Landroid/content/Intent;)Landroidx/navigation/NavDeepLinkRequest;

    move-result-object v6

    invoke-virtual {v3, v6, v5, v5, v3}, Landroidx/navigation/NavGraph;->matchDeepLinkComprehensive(Landroidx/navigation/NavDeepLinkRequest;ZZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroidx/navigation/NavDestination$DeepLinkMatch;->getMatchingArgs()Landroid/os/Bundle;

    move-result-object v6

    goto :goto_1

    :cond_0
    move-object v6, v4

    :goto_1
    if-eqz v6, :cond_1

    invoke-virtual {v3}, Landroidx/navigation/NavDestination$DeepLinkMatch;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v6

    invoke-virtual {v3}, Landroidx/navigation/NavDestination$DeepLinkMatch;->getMatchingArgs()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroidx/navigation/NavDestination;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v2, v3}, Landroidx/savedstate/SavedStateWriter;->putAll-impl(Landroid/os/Bundle;Landroid/os/Bundle;)V

    :cond_1
    new-instance v2, Landroidx/navigation/NavDeepLinkBuilder;

    invoke-direct {v2, p0}, Landroidx/navigation/NavDeepLinkBuilder;-><init>(Landroidx/navigation/NavController;)V

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    const/4 v3, 0x2

    invoke-static {v2, v0, v4, v3, v4}, Landroidx/navigation/NavDeepLinkBuilder;->setDestination$default(Landroidx/navigation/NavDeepLinkBuilder;ILandroid/os/Bundle;ILjava/lang/Object;)Landroidx/navigation/NavDeepLinkBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/navigation/NavDeepLinkBuilder;->setArguments(Landroid/os/Bundle;)Landroidx/navigation/NavDeepLinkBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavDeepLinkBuilder;->createTaskStackBuilder()Landroidx/core/app/TaskStackBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/TaskStackBuilder;->startActivities()V

    iget-object p0, p0, Landroidx/navigation/NavController;->activity:Landroid/app/Activity;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    return v5

    :cond_3
    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v1

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    return v2
.end method

.method private final updateOnBackPressedCallbackEnabled()V
    .locals 2

    iget-object v0, p0, Landroidx/navigation/NavController;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    iget-boolean v1, p0, Landroidx/navigation/NavController;->enableOnBackPressedCallback:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroidx/navigation/NavController;->getDestinationCountOnBackStack()I

    move-result p0

    const/4 v1, 0x1

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public addOnDestinationChangedListener(Landroidx/navigation/NavController$OnDestinationChangedListener;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0, p1}, Landroidx/navigation/internal/NavControllerImpl;->addOnDestinationChangedListener$navigation_runtime_release(Landroidx/navigation/NavController$OnDestinationChangedListener;)V

    return-void
.end method

.method public final checkDeepLinkHandled$navigation_runtime_release()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/navigation/NavController;->deepLinkHandled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/navigation/NavController;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/navigation/NavController;->handleDeepLink(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final clearBackStack()Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()Z"
        }
    .end annotation

    .line 10
    invoke-static {}, Laa4;->i()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final clearBackStack(I)Z
    .locals 0

    .line 11
    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0, p1}, Landroidx/navigation/internal/NavControllerImpl;->clearBackStack$navigation_runtime_release(I)Z

    move-result p0

    return p0
.end method

.method public final clearBackStack(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0, p1}, Landroidx/navigation/internal/NavControllerImpl;->clearBackStack$navigation_runtime_release(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final clearBackStack(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0, p1}, Landroidx/navigation/internal/NavControllerImpl;->clearBackStack$navigation_runtime_release(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final clearBackStack(Lne4;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lne4<",
            "TT;>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0, p1}, Landroidx/navigation/internal/NavControllerImpl;->clearBackStack$navigation_runtime_release(Lne4;)Z

    move-result p0

    return p0
.end method

.method public createDeepLink()Landroidx/navigation/NavDeepLinkBuilder;
    .locals 1

    new-instance v0, Landroidx/navigation/NavDeepLinkBuilder;

    invoke-direct {v0, p0}, Landroidx/navigation/NavDeepLinkBuilder;-><init>(Landroidx/navigation/NavController;)V

    return-object v0
.end method

.method public final createNavControllerNavigatorState$navigation_runtime_release(Landroidx/navigation/Navigator;)Landroidx/navigation/NavController$NavControllerNavigatorState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/NavDestination;",
            ">;)",
            "Landroidx/navigation/NavController$NavControllerNavigatorState;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/navigation/NavController$NavControllerNavigatorState;

    invoke-direct {v0, p0, p1}, Landroidx/navigation/NavController$NavControllerNavigatorState;-><init>(Landroidx/navigation/NavController;Landroidx/navigation/Navigator;)V

    return-object v0
.end method

.method public enableOnBackPressed(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/navigation/NavController;->enableOnBackPressedCallback:Z

    invoke-direct {p0}, Landroidx/navigation/NavController;->updateOnBackPressedCallbackEnabled()V

    return-void
.end method

.method public final findDestination(ILandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;
    .locals 0

    .line 10
    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0, p1, p2}, Landroidx/navigation/internal/NavControllerImpl;->findDestination$navigation_runtime_release(ILandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;

    move-result-object p0

    return-object p0
.end method

.method public final findDestination(Ljava/lang/String;)Landroidx/navigation/NavDestination;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0, p1}, Landroidx/navigation/internal/NavControllerImpl;->findDestination$navigation_runtime_release(Ljava/lang/String;)Landroidx/navigation/NavDestination;

    move-result-object p0

    return-object p0
.end method

.method public final findDestinationComprehensive(Landroidx/navigation/NavDestination;IZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/navigation/internal/NavControllerImpl;->findDestinationComprehensive$navigation_runtime_release(Landroidx/navigation/NavDestination;IZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;

    move-result-object p0

    return-object p0
.end method

.method public final getBackStackEntry()Landroidx/navigation/NavBackStackEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/navigation/NavBackStackEntry;"
        }
    .end annotation

    .line 11
    invoke-static {}, Laa4;->i()V

    const/4 p0, 0x0

    throw p0
.end method

.method public getBackStackEntry(I)Landroidx/navigation/NavBackStackEntry;
    .locals 0

    .line 10
    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0, p1}, Landroidx/navigation/internal/NavControllerImpl;->getBackStackEntry$navigation_runtime_release(I)Landroidx/navigation/NavBackStackEntry;

    move-result-object p0

    return-object p0
.end method

.method public final getBackStackEntry(Ljava/lang/Object;)Landroidx/navigation/NavBackStackEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Landroidx/navigation/NavBackStackEntry;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0, p1}, Landroidx/navigation/internal/NavControllerImpl;->getBackStackEntry$navigation_runtime_release(Ljava/lang/Object;)Landroidx/navigation/NavBackStackEntry;

    move-result-object p0

    return-object p0
.end method

.method public final getBackStackEntry(Ljava/lang/String;)Landroidx/navigation/NavBackStackEntry;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0, p1}, Landroidx/navigation/internal/NavControllerImpl;->getBackStackEntry$navigation_runtime_release(Ljava/lang/String;)Landroidx/navigation/NavBackStackEntry;

    move-result-object p0

    return-object p0
.end method

.method public final getBackStackEntry(Lne4;)Landroidx/navigation/NavBackStackEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lne4<",
            "TT;>;)",
            "Landroidx/navigation/NavBackStackEntry;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0, p1}, Landroidx/navigation/internal/NavControllerImpl;->getBackStackEntry$navigation_runtime_release(Lne4;)Landroidx/navigation/NavBackStackEntry;

    move-result-object p0

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final getCurrentBackStack()Ly68;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ly68<",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->getCurrentBackStack$navigation_runtime_release()Ly68;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentBackStackEntry()Landroidx/navigation/NavBackStackEntry;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->getCurrentBackStackEntry$navigation_runtime_release()Landroidx/navigation/NavBackStackEntry;

    move-result-object p0

    return-object p0
.end method

.method public final getCurrentBackStackEntryFlow()Lhd3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhd3<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->get_currentBackStackEntryFlow$navigation_runtime_release()Lvg5;

    move-result-object p0

    invoke-static {p0}, Lbf3;->a(Lvg5;)Lfy6;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentDestination()Landroidx/navigation/NavDestination;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->getCurrentDestination$navigation_runtime_release()Landroidx/navigation/NavDestination;

    move-result-object p0

    return-object p0
.end method

.method public final getDeepLinkHandled$navigation_runtime_release()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/navigation/NavController;->deepLinkHandled:Z

    return p0
.end method

.method public getGraph()Landroidx/navigation/NavGraph;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->getGraph$navigation_runtime_release()Landroidx/navigation/NavGraph;

    move-result-object p0

    return-object p0
.end method

.method public final getNavContext$navigation_runtime_release()Landroidx/navigation/internal/NavContext;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/NavController;->navContext:Landroidx/navigation/internal/NavContext;

    return-object p0
.end method

.method public getNavInflater()Landroidx/navigation/NavInflater;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/NavController;->navInflater$delegate:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/navigation/NavInflater;

    return-object p0
.end method

.method public getNavigatorProvider()Landroidx/navigation/NavigatorProvider;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->getNavigatorProvider$navigation_runtime_release()Landroidx/navigation/NavigatorProvider;

    move-result-object p0

    return-object p0
.end method

.method public getPreviousBackStackEntry()Landroidx/navigation/NavBackStackEntry;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->getPreviousBackStackEntry$navigation_runtime_release()Landroidx/navigation/NavBackStackEntry;

    move-result-object p0

    return-object p0
.end method

.method public getViewModelStoreOwner(I)Landroidx/lifecycle/ViewModelStoreOwner;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0, p1}, Landroidx/navigation/internal/NavControllerImpl;->getViewModelStoreOwner$navigation_runtime_release(I)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object p0

    return-object p0
.end method

.method public final getVisibleEntries()Ly68;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ly68<",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->getVisibleEntries$navigation_runtime_release()Ly68;

    move-result-object p0

    return-object p0
.end method

.method public handleDeepLink(Landroid/content/Intent;)Z
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "NavController"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    :try_start_0
    const-string v4, "android-support-nav:controller:deepLinkIds"

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "handleDeepLink() could not extract deepLink from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move-object v4, v3

    :goto_0
    if-eqz v1, :cond_2

    const-string v5, "android-support-nav:controller:deepLinkArgs"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object v5, v3

    :goto_1
    new-array v6, v0, [Lb36;

    array-length v7, v6

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lb36;

    invoke-static {v6}, Landroidx/core/os/BundleKt;->bundleOf([Lb36;)Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v6}, Landroidx/savedstate/SavedStateWriter;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    if-eqz v1, :cond_3

    const-string v7, "android-support-nav:controller:deepLinkExtras"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v3

    :goto_2
    if-eqz v1, :cond_4

    invoke-static {v6}, Landroidx/savedstate/SavedStateWriter;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    invoke-static {v7, v1}, Landroidx/savedstate/SavedStateWriter;->putAll-impl(Landroid/os/Bundle;Landroid/os/Bundle;)V

    :cond_4
    const/4 v1, 0x1

    if-eqz v4, :cond_5

    array-length v7, v4

    if-nez v7, :cond_7

    :cond_5
    iget-object v7, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {v7}, Landroidx/navigation/internal/NavControllerImpl;->getTopGraph$navigation_runtime_release()Landroidx/navigation/NavGraph;

    move-result-object v7

    invoke-static {p1}, Landroidx/navigation/NavControllerKt;->NavDeepLinkRequest(Landroid/content/Intent;)Landroidx/navigation/NavDeepLinkRequest;

    move-result-object v8

    invoke-virtual {v7, v8, v1, v1, v7}, Landroidx/navigation/NavGraph;->matchDeepLinkComprehensive(Landroidx/navigation/NavDeepLinkRequest;ZZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Landroidx/navigation/NavDestination$DeepLinkMatch;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v4

    invoke-static {v4, v3, v1, v3}, Landroidx/navigation/NavDestination;->buildDeepLinkIds$default(Landroidx/navigation/NavDestination;Landroidx/navigation/NavDestination;ILjava/lang/Object;)[I

    move-result-object v5

    invoke-virtual {v7}, Landroidx/navigation/NavDestination$DeepLinkMatch;->getMatchingArgs()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroidx/navigation/NavDestination;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-static {v6}, Landroidx/savedstate/SavedStateWriter;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    invoke-static {v7, v4}, Landroidx/savedstate/SavedStateWriter;->putAll-impl(Landroid/os/Bundle;Landroid/os/Bundle;)V

    :cond_6
    move-object v4, v5

    goto :goto_3

    :cond_7
    move-object v3, v5

    :goto_3
    if-eqz v4, :cond_f

    array-length v5, v4

    if-nez v5, :cond_8

    goto/16 :goto_5

    :cond_8
    invoke-direct {p0, v4}, Landroidx/navigation/NavController;->findInvalidDestinationDisplayNameInDeepLink([I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    sget-object p0, Landroidx/navigation/internal/Log;->Companion:Landroidx/navigation/internal/Log$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Could not find destination "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in the navigation graph, ignoring the deep link from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroidx/navigation/internal/Log$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_9
    invoke-static {v6}, Landroidx/savedstate/SavedStateWriter;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "android-support-nav:controller:deepLinkIntent"

    invoke-static {v2, v5, p1}, Landroidx/savedstate/SavedStateWriter;->putParcelable-impl(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Parcelable;)V

    array-length v2, v4

    new-array v5, v2, [Landroid/os/Bundle;

    move v7, v0

    :goto_4
    if-ge v7, v2, :cond_b

    new-array v8, v0, [Lb36;

    array-length v9, v8

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lb36;

    invoke-static {v8}, Landroidx/core/os/BundleKt;->bundleOf([Lb36;)Landroid/os/Bundle;

    move-result-object v8

    invoke-static {v8}, Landroidx/savedstate/SavedStateWriter;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    invoke-static {v9, v6}, Landroidx/savedstate/SavedStateWriter;->putAll-impl(Landroid/os/Bundle;Landroid/os/Bundle;)V

    if-eqz v3, :cond_a

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    if-eqz v10, :cond_a

    invoke-static {v9, v10}, Landroidx/savedstate/SavedStateWriter;->putAll-impl(Landroid/os/Bundle;Landroid/os/Bundle;)V

    :cond_a
    aput-object v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_b
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x10000000

    and-int/2addr v3, v2

    if-eqz v3, :cond_d

    const v6, 0x8000

    and-int/2addr v2, v6

    if-nez v2, :cond_d

    invoke-virtual {p1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    invoke-static {v2}, Landroidx/core/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/core/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/core/app/TaskStackBuilder;->startActivities()V

    iget-object p0, p0, Landroidx/navigation/NavController;->activity:Landroid/app/Activity;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_c
    return v1

    :cond_d
    if-eqz v3, :cond_e

    move v0, v1

    :cond_e
    invoke-direct {p0, v4, v5, v0}, Landroidx/navigation/NavController;->handleDeepLink([I[Landroid/os/Bundle;Z)Z

    move-result p0

    return p0

    :cond_f
    :goto_5
    return v0
.end method

.method public final handleDeepLink(Landroidx/navigation/NavDeepLinkRequest;)Z
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 282
    iget-object v0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {v0}, Landroidx/navigation/internal/NavControllerImpl;->getTopGraph$navigation_runtime_release()Landroidx/navigation/NavGraph;

    move-result-object v0

    const/4 v1, 0x1

    .line 283
    invoke-virtual {v0, p1, v1, v1, v0}, Landroidx/navigation/NavGraph;->matchDeepLinkComprehensive(Landroidx/navigation/NavDeepLinkRequest;ZZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 284
    invoke-virtual {p1}, Landroidx/navigation/NavDestination$DeepLinkMatch;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v2

    const/4 v3, 0x0

    .line 285
    invoke-static {v2, v3, v1, v3}, Landroidx/navigation/NavDestination;->buildDeepLinkIds$default(Landroidx/navigation/NavDestination;Landroidx/navigation/NavDestination;ILjava/lang/Object;)[I

    move-result-object v3

    .line 286
    new-array v4, v0, [Lb36;

    .line 287
    array-length v5, v4

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lb36;

    invoke-static {v4}, Landroidx/core/os/BundleKt;->bundleOf([Lb36;)Landroid/os/Bundle;

    move-result-object v4

    .line 288
    invoke-static {v4}, Landroidx/savedstate/SavedStateWriter;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 289
    invoke-virtual {p1}, Landroidx/navigation/NavDestination$DeepLinkMatch;->getMatchingArgs()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/navigation/NavDestination;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 290
    invoke-static {v5, p1}, Landroidx/savedstate/SavedStateWriter;->putAll-impl(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 291
    :cond_0
    array-length p1, v3

    new-array v2, p1, [Landroid/os/Bundle;

    move v5, v0

    :goto_0
    if-ge v5, p1, :cond_1

    .line 292
    new-array v6, v0, [Lb36;

    .line 293
    array-length v7, v6

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lb36;

    invoke-static {v6}, Landroidx/core/os/BundleKt;->bundleOf([Lb36;)Landroid/os/Bundle;

    move-result-object v6

    .line 294
    invoke-static {v6}, Landroidx/savedstate/SavedStateWriter;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    .line 295
    invoke-static {v7, v4}, Landroidx/savedstate/SavedStateWriter;->putAll-impl(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 296
    aput-object v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 297
    :cond_1
    invoke-direct {p0, v3, v2, v1}, Landroidx/navigation/NavController;->handleDeepLink([I[Landroid/os/Bundle;Z)Z

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method public navigate(I)V
    .locals 1

    const/4 v0, 0x0

    .line 309
    invoke-virtual {p0, p1, v0}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;)V

    return-void
.end method

.method public navigate(ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 310
    invoke-virtual {p0, p1, p2, v0}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;)V

    return-void
.end method

.method public navigate(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;)V
    .locals 1

    const/4 v0, 0x0

    .line 311
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    return-void
.end method

.method public navigate(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V
    .locals 9

    iget-object v0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {v0}, Landroidx/navigation/internal/NavControllerImpl;->getBackQueue$navigation_runtime_release()Lfr;

    move-result-object v0

    invoke-virtual {v0}, Lfr;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroidx/navigation/internal/NavControllerImpl;->get_graph$navigation_runtime_release()Landroidx/navigation/NavGraph;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroidx/navigation/internal/NavControllerImpl;->getBackQueue$navigation_runtime_release()Lfr;

    move-result-object v0

    invoke-virtual {v0}, Lfr;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_e

    invoke-virtual {v0, p1}, Landroidx/navigation/NavDestination;->getAction(I)Landroidx/navigation/NavAction;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    if-nez p3, :cond_1

    invoke-virtual {v1}, Landroidx/navigation/NavAction;->getNavOptions()Landroidx/navigation/NavOptions;

    move-result-object p3

    :cond_1
    invoke-virtual {v1}, Landroidx/navigation/NavAction;->getDestinationId()I

    move-result v4

    invoke-virtual {v1}, Landroidx/navigation/NavAction;->getDefaultArguments()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_2

    new-array v6, v2, [Lb36;

    array-length v7, v6

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lb36;

    invoke-static {v6}, Landroidx/core/os/BundleKt;->bundleOf([Lb36;)Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v6}, Landroidx/savedstate/SavedStateWriter;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    invoke-static {v7, v5}, Landroidx/savedstate/SavedStateWriter;->putAll-impl(Landroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_2
    :goto_1
    move-object v6, v3

    goto :goto_2

    :cond_3
    move v4, p1

    goto :goto_1

    :goto_2
    if-eqz p2, :cond_5

    if-nez v6, :cond_4

    new-array v2, v2, [Lb36;

    array-length v5, v2

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lb36;

    invoke-static {v2}, Landroidx/core/os/BundleKt;->bundleOf([Lb36;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Landroidx/savedstate/SavedStateWriter;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-object v6, v2

    :cond_4
    invoke-static {v6}, Landroidx/savedstate/SavedStateWriter;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2, p2}, Landroidx/savedstate/SavedStateWriter;->putAll-impl(Landroid/os/Bundle;Landroid/os/Bundle;)V

    :cond_5
    if-nez v4, :cond_a

    if-eqz p3, :cond_a

    invoke-virtual {p3}, Landroidx/navigation/NavOptions;->getPopUpToId()I

    move-result p2

    const/4 v2, -0x1

    if-ne p2, v2, :cond_6

    invoke-virtual {p3}, Landroidx/navigation/NavOptions;->getPopUpToRoute()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_6

    invoke-virtual {p3}, Landroidx/navigation/NavOptions;->getPopUpToRouteClass()Lne4;

    move-result-object p2

    if-eqz p2, :cond_a

    :cond_6
    invoke-virtual {p3}, Landroidx/navigation/NavOptions;->getPopUpToRoute()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p3}, Landroidx/navigation/NavOptions;->getPopUpToRoute()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Landroidx/navigation/NavOptions;->isPopUpToInclusive()Z

    move-result v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Landroidx/navigation/NavController;->popBackStack$default(Landroidx/navigation/NavController;Ljava/lang/String;ZZILjava/lang/Object;)Z

    return-void

    :cond_7
    invoke-virtual {p3}, Landroidx/navigation/NavOptions;->getPopUpToRouteClass()Lne4;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p3}, Landroidx/navigation/NavOptions;->getPopUpToRouteClass()Lne4;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Liq7;->b(Lne4;)Ldf4;

    move-result-object p1

    invoke-static {p1}, Landroidx/navigation/serialization/RouteSerializerKt;->generateHashCode(Ldf4;)I

    move-result p1

    invoke-virtual {p3}, Landroidx/navigation/NavOptions;->isPopUpToInclusive()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/navigation/NavController;->popBackStack(IZ)Z

    return-void

    :cond_8
    invoke-virtual {p3}, Landroidx/navigation/NavOptions;->getPopUpToId()I

    move-result p1

    if-eq p1, v2, :cond_9

    invoke-virtual {p3}, Landroidx/navigation/NavOptions;->getPopUpToId()I

    move-result p1

    invoke-virtual {p3}, Landroidx/navigation/NavOptions;->isPopUpToInclusive()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/navigation/NavController;->popBackStack(IZ)Z

    :cond_9
    return-void

    :cond_a
    if-eqz v4, :cond_d

    const/4 p2, 0x2

    invoke-static {p0, v4, v3, p2, v3}, Landroidx/navigation/NavController;->findDestination$default(Landroidx/navigation/NavController;ILandroidx/navigation/NavDestination;ILjava/lang/Object;)Landroidx/navigation/NavDestination;

    move-result-object p2

    if-nez p2, :cond_c

    sget-object p2, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    iget-object p3, p0, Landroidx/navigation/NavController;->navContext:Landroidx/navigation/internal/NavContext;

    invoke-virtual {p2, p3, v4}, Landroidx/navigation/NavDestination$Companion;->getDisplayName(Landroidx/navigation/internal/NavContext;I)Ljava/lang/String;

    move-result-object p3

    const-string p4, " cannot be found from the current destination "

    if-nez v1, :cond_b

    const-string p0, "Navigation action/destination "

    invoke-static {p0, p3, p4, v0}, Lc9;->h(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_b
    const-string v1, "Navigation destination "

    const-string v2, " referenced from action "

    invoke-static {v1, p3, v2}, Ln7;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p0, p0, Landroidx/navigation/NavController;->navContext:Landroidx/navigation/internal/NavContext;

    invoke-virtual {p2, p0, p1}, Landroidx/navigation/NavDestination$Companion;->getDisplayName(Landroidx/navigation/internal/NavContext;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    invoke-direct {p0, p2, v6, p3, p4}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    return-void

    :cond_d
    const-string p0, "Destination id == 0 can only be used in conjunction with a valid navOptions.popUpTo"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "No current destination found. Ensure a navigation graph has been set for NavController "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2e

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public navigate(Landroid/net/Uri;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 313
    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    new-instance v0, Landroidx/navigation/NavDeepLinkRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Landroidx/navigation/NavDeepLinkRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/navigation/internal/NavControllerImpl;->navigate$navigation_runtime_release(Landroidx/navigation/NavDeepLinkRequest;)V

    return-void
.end method

.method public navigate(Landroid/net/Uri;Landroidx/navigation/NavOptions;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 314
    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    new-instance v0, Landroidx/navigation/NavDeepLinkRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Landroidx/navigation/NavDeepLinkRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Landroidx/navigation/internal/NavControllerImpl;->navigate$navigation_runtime_release(Landroidx/navigation/NavDeepLinkRequest;Landroidx/navigation/NavOptions;)V

    return-void
.end method

.method public navigate(Landroid/net/Uri;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 315
    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    new-instance v0, Landroidx/navigation/NavDeepLinkRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Landroidx/navigation/NavDeepLinkRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Landroidx/navigation/internal/NavControllerImpl;->navigate$navigation_runtime_release(Landroidx/navigation/NavDeepLinkRequest;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    return-void
.end method

.method public navigate(Landroidx/navigation/NavDeepLinkRequest;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 316
    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0, p1}, Landroidx/navigation/internal/NavControllerImpl;->navigate$navigation_runtime_release(Landroidx/navigation/NavDeepLinkRequest;)V

    return-void
.end method

.method public navigate(Landroidx/navigation/NavDeepLinkRequest;Landroidx/navigation/NavOptions;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 317
    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0, p1, p2}, Landroidx/navigation/internal/NavControllerImpl;->navigate$navigation_runtime_release(Landroidx/navigation/NavDeepLinkRequest;Landroidx/navigation/NavOptions;)V

    return-void
.end method

.method public navigate(Landroidx/navigation/NavDeepLinkRequest;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 318
    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/navigation/internal/NavControllerImpl;->navigate$navigation_runtime_release(Landroidx/navigation/NavDeepLinkRequest;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    return-void
.end method

.method public navigate(Landroidx/navigation/NavDirections;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 320
    invoke-interface {p1}, Landroidx/navigation/NavDirections;->getActionId()I

    move-result v0

    invoke-interface {p1}, Landroidx/navigation/NavDirections;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;)V

    return-void
.end method

.method public navigate(Landroidx/navigation/NavDirections;Landroidx/navigation/NavOptions;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 321
    invoke-interface {p1}, Landroidx/navigation/NavDirections;->getActionId()I

    move-result v0

    invoke-interface {p1}, Landroidx/navigation/NavDirections;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;)V

    return-void
.end method

.method public navigate(Landroidx/navigation/NavDirections;Landroidx/navigation/Navigator$Extras;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 322
    invoke-interface {p1}, Landroidx/navigation/NavDirections;->getActionId()I

    move-result v0

    invoke-interface {p1}, Landroidx/navigation/NavDirections;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    return-void
.end method

.method public final navigate(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .line 312
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Landroidx/navigation/NavController;->navigate$default(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;ILjava/lang/Object;)V

    return-void
.end method

.method public final navigate(Ljava/lang/Object;Landroidx/navigation/NavOptions;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroidx/navigation/NavOptions;",
            ")V"
        }
    .end annotation

    .line 306
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Landroidx/navigation/NavController;->navigate$default(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;ILjava/lang/Object;)V

    return-void
.end method

.method public final navigate(Ljava/lang/Object;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroidx/navigation/NavOptions;",
            "Landroidx/navigation/Navigator$Extras;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 326
    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/navigation/internal/NavControllerImpl;->navigate$navigation_runtime_release(Ljava/lang/Object;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    return-void
.end method

.method public final navigate(Ljava/lang/Object;Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lnl3<",
            "-",
            "Landroidx/navigation/NavOptionsBuilder;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 325
    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0, p1, p2}, Landroidx/navigation/internal/NavControllerImpl;->navigate$navigation_runtime_release(Ljava/lang/Object;Lnl3;)V

    return-void
.end method

.method public final navigate(Ljava/lang/String;)V
    .locals 6

    .line 307
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Landroidx/navigation/NavController;->navigate$default(Landroidx/navigation/NavController;Ljava/lang/String;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;ILjava/lang/Object;)V

    return-void
.end method

.method public final navigate(Ljava/lang/String;Landroidx/navigation/NavOptions;)V
    .locals 6

    .line 308
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Landroidx/navigation/NavController;->navigate$default(Landroidx/navigation/NavController;Ljava/lang/String;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;ILjava/lang/Object;)V

    return-void
.end method

.method public final navigate(Ljava/lang/String;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 324
    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/navigation/internal/NavControllerImpl;->navigate$navigation_runtime_release(Ljava/lang/String;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    return-void
.end method

.method public final navigate(Ljava/lang/String;Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnl3<",
            "-",
            "Landroidx/navigation/NavOptionsBuilder;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 323
    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0, p1, p2}, Landroidx/navigation/internal/NavControllerImpl;->navigate$navigation_runtime_release(Ljava/lang/String;Lnl3;)V

    return-void
.end method

.method public navigateUp()Z
    .locals 2

    invoke-direct {p0}, Landroidx/navigation/NavController;->getDestinationCountOnBackStack()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroidx/navigation/NavController;->activity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "android-support-nav:controller:deepLinkIds"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroidx/navigation/NavController;->tryRelaunchUpToExplicitStack()Z

    move-result p0

    return p0

    :cond_2
    invoke-direct {p0}, Landroidx/navigation/NavController;->tryRelaunchUpToGeneratedStack()Z

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p0}, Landroidx/navigation/NavController;->popBackStack()Z

    move-result p0

    return p0
.end method

.method public popBackStack()Z
    .locals 0

    .line 16
    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->popBackStack$navigation_runtime_release()Z

    move-result p0

    return p0
.end method

.method public popBackStack(IZ)Z
    .locals 0

    .line 17
    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0, p1, p2}, Landroidx/navigation/internal/NavControllerImpl;->popBackStack$navigation_runtime_release(IZ)Z

    move-result p0

    return p0
.end method

.method public popBackStack(IZZ)Z
    .locals 0

    .line 20
    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/navigation/internal/NavControllerImpl;->popBackStack$navigation_runtime_release(IZZ)Z

    move-result p0

    return p0
.end method

.method public final popBackStack(Ljava/lang/Object;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;Z)Z"
        }
    .end annotation

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Landroidx/navigation/NavController;->popBackStack$default(Landroidx/navigation/NavController;Ljava/lang/Object;ZZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final popBackStack(Ljava/lang/Object;ZZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;ZZ)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/navigation/internal/NavControllerImpl;->popBackStack$navigation_runtime_release(Ljava/lang/Object;ZZ)Z

    move-result p0

    return p0
.end method

.method public final popBackStack(Ljava/lang/String;Z)Z
    .locals 6

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Landroidx/navigation/NavController;->popBackStack$default(Landroidx/navigation/NavController;Ljava/lang/String;ZZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final popBackStack(Ljava/lang/String;ZZ)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/navigation/internal/NavControllerImpl;->popBackStack$navigation_runtime_release(Ljava/lang/String;ZZ)Z

    move-result p0

    return p0
.end method

.method public final popBackStack(Lne4;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lne4<",
            "TT;>;Z)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Landroidx/navigation/NavController;->popBackStack$default(Landroidx/navigation/NavController;Lne4;ZZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final popBackStack(Lne4;ZZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lne4<",
            "TT;>;ZZ)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/navigation/internal/NavControllerImpl;->popBackStack$navigation_runtime_release(Lne4;ZZ)Z

    move-result p0

    return p0
.end method

.method public final popBackStack(Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z)Z"
        }
    .end annotation

    .line 18
    invoke-static {}, Laa4;->i()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final popBackStack(ZZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ZZ)Z"
        }
    .end annotation

    .line 19
    invoke-static {}, Laa4;->i()V

    const/4 p0, 0x0

    throw p0
.end method

.method public removeOnDestinationChangedListener(Landroidx/navigation/NavController$OnDestinationChangedListener;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0, p1}, Landroidx/navigation/internal/NavControllerImpl;->removeOnDestinationChangedListener$navigation_runtime_release(Landroidx/navigation/NavController$OnDestinationChangedListener;)V

    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {v0, p1}, Landroidx/navigation/internal/NavControllerImpl;->restoreState$navigation_runtime_release(Landroid/os/Bundle;)V

    if-eqz p1, :cond_2

    invoke-static {p1}, Landroidx/savedstate/SavedStateReader;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "android-support-nav:controller:deepLinkHandled"

    invoke-static {p1, v0}, Landroidx/savedstate/SavedStateReader;->getBooleanOrNull-impl(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroidx/navigation/NavController;->deepLinkHandled:Z

    :cond_2
    return-void
.end method

.method public saveState()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {v0}, Landroidx/navigation/internal/NavControllerImpl;->saveState$navigation_runtime_release()Landroid/os/Bundle;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/navigation/NavController;->deepLinkHandled:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lb36;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb36;

    invoke-static {v0}, Landroidx/core/os/BundleKt;->bundleOf([Lb36;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroidx/savedstate/SavedStateWriter;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_0
    invoke-static {v0}, Landroidx/savedstate/SavedStateWriter;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android-support-nav:controller:deepLinkHandled"

    iget-boolean p0, p0, Landroidx/navigation/NavController;->deepLinkHandled:Z

    invoke-static {v1, v2, p0}, Landroidx/savedstate/SavedStateWriter;->putBoolean-impl(Landroid/os/Bundle;Ljava/lang/String;Z)V

    :cond_1
    return-object v0
.end method

.method public final setDeepLinkHandled$navigation_runtime_release(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/navigation/NavController;->deepLinkHandled:Z

    return-void
.end method

.method public setGraph(I)V
    .locals 1

    iget-object v0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0}, Landroidx/navigation/NavController;->getNavInflater()Landroidx/navigation/NavInflater;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/navigation/NavInflater;->inflate(I)Landroidx/navigation/NavGraph;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Landroidx/navigation/internal/NavControllerImpl;->setGraph$navigation_runtime_release(Landroidx/navigation/NavGraph;Landroid/os/Bundle;)V

    return-void
.end method

.method public setGraph(ILandroid/os/Bundle;)V
    .locals 1

    .line 16
    iget-object v0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0}, Landroidx/navigation/NavController;->getNavInflater()Landroidx/navigation/NavInflater;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/navigation/NavInflater;->inflate(I)Landroidx/navigation/NavGraph;

    move-result-object p0

    invoke-virtual {v0, p0, p2}, Landroidx/navigation/internal/NavControllerImpl;->setGraph$navigation_runtime_release(Landroidx/navigation/NavGraph;Landroid/os/Bundle;)V

    return-void
.end method

.method public setGraph(Landroidx/navigation/NavGraph;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0, p1}, Landroidx/navigation/internal/NavControllerImpl;->setGraph$navigation_runtime_release(Landroidx/navigation/NavGraph;)V

    return-void
.end method

.method public setGraph(Landroidx/navigation/NavGraph;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0, p1, p2}, Landroidx/navigation/internal/NavControllerImpl;->setGraph$navigation_runtime_release(Landroidx/navigation/NavGraph;Landroid/os/Bundle;)V

    return-void
.end method

.method public setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0, p1}, Landroidx/navigation/internal/NavControllerImpl;->setLifecycleOwner$navigation_runtime_release(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public setNavigatorProvider(Landroidx/navigation/NavigatorProvider;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0, p1}, Landroidx/navigation/internal/NavControllerImpl;->setNavigatorProvider$navigation_runtime_release(Landroidx/navigation/NavigatorProvider;)V

    return-void
.end method

.method public setOnBackPressedDispatcher(Landroidx/activity/OnBackPressedDispatcher;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/navigation/NavController;->onBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {v0}, Landroidx/navigation/internal/NavControllerImpl;->getLifecycleOwner$navigation_runtime_release()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/navigation/NavController;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v1}, Landroidx/activity/OnBackPressedCallback;->remove()V

    iput-object p1, p0, Landroidx/navigation/NavController;->onBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    iget-object v1, p0, Landroidx/navigation/NavController;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {p1, v0, v1}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {v0}, Landroidx/navigation/internal/NavControllerImpl;->getLifecycleObserver$navigation_runtime_release()Landroidx/lifecycle/LifecycleObserver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->getLifecycleObserver$navigation_runtime_release()Landroidx/lifecycle/LifecycleObserver;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void

    :cond_0
    const-string p0, "You must call setLifecycleOwner() before calling setOnBackPressedDispatcher()"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setViewModelStore(Landroidx/lifecycle/ViewModelStore;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/navigation/NavController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0, p1}, Landroidx/navigation/internal/NavControllerImpl;->setViewModelStore$navigation_runtime_release(Landroidx/lifecycle/ViewModelStore;)V

    return-void
.end method

.method public final writeIntent$navigation_runtime_release(Landroidx/navigation/NavDeepLinkRequest;Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Landroidx/navigation/NavDeepLinkRequest;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/navigation/NavDeepLinkRequest;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroidx/navigation/NavDeepLinkRequest;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p2}, Landroidx/savedstate/SavedStateWriter;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "android-support-nav:controller:deepLinkIntent"

    invoke-static {p1, p2, p0}, Landroidx/savedstate/SavedStateWriter;->putParcelable-impl(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
