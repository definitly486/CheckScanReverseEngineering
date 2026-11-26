.class public final Landroidx/navigation/internal/NavControllerImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/internal/NavControllerImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/navigation/internal/NavControllerImpl$Companion;

.field private static final KEY_BACK_STACK:Ljava/lang/String; = "android-support-nav:controller:backStack"

.field private static final KEY_BACK_STACK_DEST_IDS:Ljava/lang/String; = "android-support-nav:controller:backStackDestIds"

.field private static final KEY_BACK_STACK_IDS:Ljava/lang/String; = "android-support-nav:controller:backStackIds"

.field private static final KEY_BACK_STACK_STATES_IDS:Ljava/lang/String; = "android-support-nav:controller:backStackStates"

.field private static final KEY_BACK_STACK_STATES_PREFIX:Ljava/lang/String; = "android-support-nav:controller:backStackStates:"

.field private static final KEY_NAVIGATOR_STATE:Ljava/lang/String; = "android-support-nav:controller:navigatorState"

.field private static final KEY_NAVIGATOR_STATE_NAMES:Ljava/lang/String; = "android-support-nav:controller:navigatorState:names"

.field public static final TAG:Ljava/lang/String; = "NavController"


# instance fields
.field private final _currentBackStack:Lxg5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxg5<",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _currentBackStackEntryFlow:Lvg5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvg5<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private _graph:Landroidx/navigation/NavGraph;

.field private _navigatorProvider:Landroidx/navigation/NavigatorProvider;

.field private final _visibleEntries:Lxg5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxg5<",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private addToBackStackHandler:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "-",
            "Landroidx/navigation/NavBackStackEntry;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final backQueue:Lfr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfr<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final backStackEntriesToDispatch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final backStackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final backStackStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lfr<",
            "Landroidx/navigation/NavBackStackEntryState;",
            ">;>;"
        }
    .end annotation
.end field

.field private backStackToRestore:[Landroid/os/Bundle;

.field private final childToParentEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/navigation/NavBackStackEntry;",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final currentBackStack:Ly68;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly68<",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private dispatchReentrantCount:I

.field private final entrySavedState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/navigation/NavBackStackEntry;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private hostLifecycleState:Landroidx/lifecycle/Lifecycle$State;

.field private final lifecycleObserver:Landroidx/lifecycle/LifecycleObserver;

.field private lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field private final navController:Landroidx/navigation/NavController;

.field private final navigatorState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/NavDestination;",
            ">;",
            "Landroidx/navigation/NavController$NavControllerNavigatorState;",
            ">;"
        }
    .end annotation
.end field

.field private navigatorStateToRestore:Landroid/os/Bundle;

.field private final onDestinationChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/navigation/NavController$OnDestinationChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final parentToChildCount:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/navigation/NavBackStackEntry;",
            "Landroidx/navigation/internal/AtomicInt;",
            ">;"
        }
    .end annotation
.end field

.field private popFromBackStackHandler:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "-",
            "Landroidx/navigation/NavBackStackEntry;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private updateOnBackPressedCallbackEnabledCallback:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private viewModel:Landroidx/navigation/NavControllerViewModel;

.field private final visibleEntries:Ly68;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly68<",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/navigation/internal/NavControllerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/navigation/internal/NavControllerImpl$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/navigation/internal/NavControllerImpl;->Companion:Landroidx/navigation/internal/NavControllerImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/navigation/NavController;Lll3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavController;",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->navController:Landroidx/navigation/NavController;

    iput-object p2, p0, Landroidx/navigation/internal/NavControllerImpl;->updateOnBackPressedCallbackEnabledCallback:Lll3;

    new-instance p1, Lfr;

    invoke-direct {p1}, Lfr;-><init>()V

    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    sget-object p1, Lkx2;->b:Lkx2;

    invoke-static {p1}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p2

    iput-object p2, p0, Landroidx/navigation/internal/NavControllerImpl;->_currentBackStack:Lxg5;

    invoke-static {p2}, Lbf3;->b(Lxg5;)Lgy6;

    move-result-object p2

    iput-object p2, p0, Landroidx/navigation/internal/NavControllerImpl;->currentBackStack:Ly68;

    invoke-static {p1}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->_visibleEntries:Lxg5;

    invoke-static {p1}, Lbf3;->b(Lxg5;)Lgy6;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->visibleEntries:Ly68;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->childToParentEntries:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->parentToChildCount:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->backStackMap:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->backStackStates:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->onDestinationChangedListeners:Ljava/util/List;

    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->hostLifecycleState:Landroidx/lifecycle/Lifecycle$State;

    new-instance p1, Lpi5;

    invoke-direct {p1, p0}, Lpi5;-><init>(Landroidx/navigation/internal/NavControllerImpl;)V

    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->lifecycleObserver:Landroidx/lifecycle/LifecycleObserver;

    new-instance p1, Landroidx/navigation/NavigatorProvider;

    invoke-direct {p1}, Landroidx/navigation/NavigatorProvider;-><init>()V

    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->navigatorState:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->entrySavedState:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->backStackEntriesToDispatch:Ljava/util/List;

    sget-object p1, Lcu0;->DROP_OLDEST:Lcu0;

    const/4 p2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2}, Lbt7;->b(IILcu0;I)Lzs7;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->_currentBackStackEntryFlow:Lvg5;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/navigation/internal/NavControllerImpl;->restoreStateInternal$lambda$53(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private final addEntryToBackStack(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavBackStackEntry;Ljava/util/List;)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavDestination;",
            "Landroid/os/Bundle;",
            "Landroidx/navigation/NavBackStackEntry;",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p4

    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v8

    instance-of v1, v8, Landroidx/navigation/FloatingWindow;

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, v0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-virtual {v1}, Lfr;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-virtual {v1}, Lfr;->last()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v1

    instance-of v1, v1, Landroidx/navigation/FloatingWindow;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-virtual {v1}, Lfr;->last()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/navigation/NavDestination;->getId()I

    move-result v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroidx/navigation/internal/NavControllerImpl;->popBackStackInternal$navigation_runtime_release$default(Landroidx/navigation/internal/NavControllerImpl;IZZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    new-instance v1, Lfr;

    invoke-direct {v1}, Lfr;-><init>()V

    instance-of v2, v6, Landroidx/navigation/NavGraph;

    const/16 v17, 0x0

    if-eqz v2, :cond_8

    move-object v2, v8

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v7, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v4}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v4

    invoke-static {v4, v9}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_3
    move-object/from16 v3, v17

    :goto_1
    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    if-nez v3, :cond_4

    sget-object v7, Landroidx/navigation/NavBackStackEntry;->Companion:Landroidx/navigation/NavBackStackEntry$Companion;

    move-object v2, v8

    invoke-virtual {v0}, Landroidx/navigation/internal/NavControllerImpl;->getNavContext()Landroidx/navigation/internal/NavContext;

    move-result-object v8

    invoke-virtual {v0}, Landroidx/navigation/internal/NavControllerImpl;->getHostLifecycleState$navigation_runtime_release()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v11

    iget-object v12, v0, Landroidx/navigation/internal/NavControllerImpl;->viewModel:Landroidx/navigation/NavControllerViewModel;

    const/16 v15, 0x60

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v10, p2

    move-object/from16 v18, v2

    invoke-static/range {v7 .. v16}, Landroidx/navigation/NavBackStackEntry$Companion;->create$default(Landroidx/navigation/NavBackStackEntry$Companion;Landroidx/navigation/internal/NavContext;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavViewModelStoreProvider;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object/from16 v10, p2

    move-object/from16 v18, v8

    :goto_2
    invoke-virtual {v1, v3}, Lfr;->addFirst(Ljava/lang/Object;)V

    iget-object v2, v0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-virtual {v2}, Lfr;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-virtual {v2}, Lfr;->last()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v2}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v2

    if-ne v2, v9, :cond_5

    iget-object v2, v0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-virtual {v2}, Lfr;->last()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v3, v1

    move-object v1, v2

    const/4 v2, 0x0

    move-object v7, v3

    const/4 v3, 0x0

    move-object/from16 v8, p4

    move-object v11, v7

    move-object/from16 v7, p3

    invoke-static/range {v0 .. v5}, Landroidx/navigation/internal/NavControllerImpl;->popEntryFromBackStack$navigation_runtime_release$default(Landroidx/navigation/internal/NavControllerImpl;Landroidx/navigation/NavBackStackEntry;ZLfr;ILjava/lang/Object;)V

    goto :goto_3

    :cond_5
    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object v11, v1

    goto :goto_3

    :cond_6
    move-object/from16 v10, p2

    move-object v11, v1

    move-object/from16 v18, v8

    move-object v8, v7

    move-object/from16 v7, p3

    :goto_3
    if-eqz v9, :cond_9

    if-ne v9, v6, :cond_7

    goto :goto_4

    :cond_7
    move-object v7, v8

    move-object v2, v9

    move-object v1, v11

    move-object/from16 v8, v18

    goto/16 :goto_0

    :cond_8
    move-object/from16 v10, p2

    move-object v11, v1

    move-object/from16 v18, v8

    move-object v8, v7

    move-object/from16 v7, p3

    :cond_9
    :goto_4
    invoke-virtual {v11}, Lfr;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    move-object/from16 v1, v18

    goto :goto_5

    :cond_a
    invoke-virtual {v11}, Lfr;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v1

    :goto_5
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroidx/navigation/NavDestination;->getId()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroidx/navigation/internal/NavControllerImpl;->findDestination$navigation_runtime_release(ILandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;

    move-result-object v2

    if-eq v2, v1, :cond_10

    invoke-virtual {v1}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v1

    if-eqz v1, :cond_f

    if-eqz v10, :cond_b

    invoke-static {v10}, Landroidx/savedstate/SavedStateReader;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Landroidx/savedstate/SavedStateReader;->isEmpty-impl(Landroid/os/Bundle;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    move-object/from16 v2, v17

    goto :goto_6

    :cond_b
    move-object v2, v10

    :goto_6
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v8, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    :cond_c
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v5

    invoke-static {v5, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_7

    :cond_d
    move-object/from16 v4, v17

    :goto_7
    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    if-nez v4, :cond_e

    sget-object v19, Landroidx/navigation/NavBackStackEntry;->Companion:Landroidx/navigation/NavBackStackEntry$Companion;

    invoke-virtual {v0}, Landroidx/navigation/internal/NavControllerImpl;->getNavContext()Landroidx/navigation/internal/NavContext;

    move-result-object v20

    invoke-virtual {v1, v2}, Landroidx/navigation/NavDestination;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v22

    invoke-virtual {v0}, Landroidx/navigation/internal/NavControllerImpl;->getHostLifecycleState$navigation_runtime_release()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v23

    iget-object v2, v0, Landroidx/navigation/internal/NavControllerImpl;->viewModel:Landroidx/navigation/NavControllerViewModel;

    const/16 v27, 0x60

    const/16 v28, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v21, v1

    move-object/from16 v24, v2

    invoke-static/range {v19 .. v28}, Landroidx/navigation/NavBackStackEntry$Companion;->create$default(Landroidx/navigation/NavBackStackEntry$Companion;Landroidx/navigation/internal/NavContext;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavViewModelStoreProvider;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v4

    goto :goto_8

    :cond_e
    move-object/from16 v21, v1

    :goto_8
    invoke-virtual {v11, v4}, Lfr;->addFirst(Ljava/lang/Object;)V

    goto :goto_9

    :cond_f
    move-object/from16 v21, v1

    :goto_9
    move-object/from16 v1, v21

    goto :goto_5

    :cond_10
    invoke-virtual {v11}, Lfr;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_a

    :cond_11
    invoke-virtual {v11}, Lfr;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v1

    move-object/from16 v18, v1

    :goto_a
    iget-object v1, v0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-virtual {v1}, Lfr;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, v0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-virtual {v1}, Lfr;->last()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v1

    instance-of v1, v1, Landroidx/navigation/NavGraph;

    if-eqz v1, :cond_12

    iget-object v1, v0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-virtual {v1}, Lfr;->last()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Landroidx/navigation/NavGraph;

    invoke-virtual {v1}, Landroidx/navigation/NavGraph;->getNodes()Landroidx/collection/SparseArrayCompat;

    move-result-object v1

    invoke-virtual/range {v18 .. v18}, Landroidx/navigation/NavDestination;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_12

    iget-object v1, v0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-virtual {v1}, Lfr;->last()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroidx/navigation/internal/NavControllerImpl;->popEntryFromBackStack$navigation_runtime_release$default(Landroidx/navigation/internal/NavControllerImpl;Landroidx/navigation/NavBackStackEntry;ZLfr;ILjava/lang/Object;)V

    goto :goto_a

    :cond_12
    iget-object v1, v0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-virtual {v1}, Lfr;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    if-nez v1, :cond_13

    invoke-virtual {v11}, Lfr;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    :cond_13
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v1

    goto :goto_b

    :cond_14
    move-object/from16 v1, v17

    :goto_b
    iget-object v2, v0, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v8, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    :cond_15
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v3}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v3

    iget-object v4, v0, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    move-object/from16 v17, v2

    :cond_16
    check-cast v17, Landroidx/navigation/NavBackStackEntry;

    if-nez v17, :cond_17

    sget-object v18, Landroidx/navigation/NavBackStackEntry;->Companion:Landroidx/navigation/NavBackStackEntry$Companion;

    invoke-virtual {v0}, Landroidx/navigation/internal/NavControllerImpl;->getNavContext()Landroidx/navigation/internal/NavContext;

    move-result-object v19

    iget-object v1, v0, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v10}, Landroidx/navigation/NavDestination;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v21

    invoke-virtual {v0}, Landroidx/navigation/internal/NavControllerImpl;->getHostLifecycleState$navigation_runtime_release()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v22

    iget-object v2, v0, Landroidx/navigation/internal/NavControllerImpl;->viewModel:Landroidx/navigation/NavControllerViewModel;

    const/16 v26, 0x60

    const/16 v27, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v20, v1

    move-object/from16 v23, v2

    invoke-static/range {v18 .. v27}, Landroidx/navigation/NavBackStackEntry$Companion;->create$default(Landroidx/navigation/NavBackStackEntry$Companion;Landroidx/navigation/internal/NavContext;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavViewModelStoreProvider;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v17

    :cond_17
    move-object/from16 v1, v17

    invoke-virtual {v11, v1}, Lfr;->addFirst(Ljava/lang/Object;)V

    :cond_18
    invoke-virtual {v11}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    iget-object v3, v0, Landroidx/navigation/internal/NavControllerImpl;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    invoke-virtual {v2}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v3

    iget-object v4, v0, Landroidx/navigation/internal/NavControllerImpl;->navigatorState:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_19

    check-cast v3, Landroidx/navigation/NavController$NavControllerNavigatorState;

    invoke-virtual {v3, v2}, Landroidx/navigation/NavController$NavControllerNavigatorState;->addInternal(Landroidx/navigation/NavBackStackEntry;)V

    goto :goto_c

    :cond_19
    invoke-virtual {v6}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object v0

    const-string v1, " should already be created"

    const-string v2, "NavigatorBackStack for "

    invoke-static {v0, v2, v1}, Lwg;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1a
    iget-object v1, v0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-virtual {v1, v11}, Lfr;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-virtual {v1, v7}, Lfr;->addLast(Ljava/lang/Object;)V

    invoke-static {v7, v11}, Lqn1;->i0(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v2}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v3

    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Landroidx/navigation/NavDestination;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/navigation/internal/NavControllerImpl;->getBackStackEntry$navigation_runtime_release(I)Landroidx/navigation/NavBackStackEntry;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroidx/navigation/internal/NavControllerImpl;->linkChildToParent$navigation_runtime_release(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavBackStackEntry;)V

    goto :goto_d

    :cond_1c
    return-void
.end method

.method public static synthetic addEntryToBackStack$default(Landroidx/navigation/internal/NavControllerImpl;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavBackStackEntry;Ljava/util/List;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    sget-object p4, Lkx2;->b:Lkx2;

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/navigation/internal/NavControllerImpl;->addEntryToBackStack(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavBackStackEntry;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b(Ln07;Landroidx/navigation/internal/NavControllerImpl;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavBackStackEntry;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/navigation/internal/NavControllerImpl;->navigate$lambda$44(Ln07;Landroidx/navigation/internal/NavControllerImpl;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavBackStackEntry;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/navigation/internal/NavControllerImpl;->restoreStateInternal$lambda$51(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static final clearBackStackInternal$lambda$19(Landroidx/navigation/NavOptionsBuilder;)Lj59;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/navigation/NavOptionsBuilder;->setRestoreState(Z)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static synthetic d(Landroidx/navigation/NavBackStackEntry;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/navigation/internal/NavControllerImpl;->popBackStackInternal$lambda$4(Landroidx/navigation/NavBackStackEntry;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Landroidx/navigation/NavBackStackEntry;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/navigation/internal/NavControllerImpl;->navigateInternal$lambda$3(Landroidx/navigation/NavBackStackEntry;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final executePopOperations$lambda$10(Ln07;Ln07;Landroidx/navigation/internal/NavControllerImpl;ZLfr;Landroidx/navigation/NavBackStackEntry;)Lj59;
    .locals 1

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ln07;->b:Z

    iput-boolean v0, p1, Ln07;->b:Z

    invoke-virtual {p2, p5, p3, p4}, Landroidx/navigation/internal/NavControllerImpl;->popEntryFromBackStack$navigation_runtime_release(Landroidx/navigation/NavBackStackEntry;ZLfr;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final executePopOperations$lambda$11(Landroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->getStartDestinationId()I

    move-result v0

    invoke-virtual {p0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static final executePopOperations$lambda$12(Landroidx/navigation/internal/NavControllerImpl;Landroidx/navigation/NavDestination;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->backStackMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static final executePopOperations$lambda$14(Landroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->getStartDestinationId()I

    move-result v0

    invoke-virtual {p0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static final executePopOperations$lambda$15(Landroidx/navigation/internal/NavControllerImpl;Landroidx/navigation/NavDestination;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->backStackMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private final executeRestoreState(Ljava/util/List;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroidx/navigation/NavOptions;",
            "Landroidx/navigation/Navigator$Extras;",
            ")Z"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v4}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v4

    instance-of v4, v4, Landroidx/navigation/NavGraph;

    if-nez v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    invoke-static {v0}, Lqn1;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_2

    invoke-static {v3}, Lqn1;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v2}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    filled-new-array {v2}, [Landroidx/navigation/NavBackStackEntry;

    move-result-object v2

    invoke-static {v2}, Lu96;->k([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance v4, Ln07;

    invoke-direct {v4}, Ln07;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Landroidx/navigation/internal/NavControllerImpl;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    invoke-static {v1}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v3}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v2

    new-instance v6, Lp07;

    invoke-direct {v6}, Lp07;-><init>()V

    new-instance v3, Lqi5;

    move-object v7, p0

    move-object v5, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lqi5;-><init>(Ln07;Ljava/util/List;Lp07;Landroidx/navigation/internal/NavControllerImpl;Landroid/os/Bundle;)V

    move-object v9, p4

    move-object v6, v2

    move-object v10, v3

    move-object p0, v5

    move-object v5, v7

    move-object p1, v8

    move-object v8, p3

    move-object v7, v1

    invoke-virtual/range {v5 .. v10}, Landroidx/navigation/internal/NavControllerImpl;->navigateInternal$navigation_runtime_release(Landroidx/navigation/Navigator;Ljava/util/List;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;Lnl3;)V

    move-object p2, p1

    move-object p1, p0

    move-object p0, v5

    goto :goto_3

    :cond_5
    iget-boolean p0, v4, Ln07;->b:Z

    return p0
.end method

.method private static final executeRestoreState$lambda$57(Ln07;Ljava/util/List;Lp07;Landroidx/navigation/internal/NavControllerImpl;Landroid/os/Bundle;Landroidx/navigation/NavBackStackEntry;)Lj59;
    .locals 2

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ln07;->b:Z

    invoke-interface {p1, p5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    iget v1, p2, Lp07;->b:I

    add-int/2addr p0, v0

    invoke-interface {p1, v1, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iput p0, p2, Lp07;->b:I

    goto :goto_0

    :cond_0
    sget-object p1, Lkx2;->b:Lkx2;

    :goto_0
    invoke-virtual {p5}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object p0

    invoke-direct {p3, p0, p4, p5, p1}, Landroidx/navigation/internal/NavControllerImpl;->addEntryToBackStack(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavBackStackEntry;Ljava/util/List;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static synthetic f(Landroidx/navigation/internal/NavControllerImpl;Landroidx/navigation/NavDestination;)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/navigation/internal/NavControllerImpl;->executePopOperations$lambda$15(Landroidx/navigation/internal/NavControllerImpl;Landroidx/navigation/NavDestination;)Z

    move-result p0

    return p0
.end method

.method public static synthetic findDestination$navigation_runtime_release$default(Landroidx/navigation/internal/NavControllerImpl;ILandroidx/navigation/NavDestination;ILjava/lang/Object;)Landroidx/navigation/NavDestination;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/navigation/internal/NavControllerImpl;->findDestination$navigation_runtime_release(ILandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic findDestinationComprehensive$navigation_runtime_release$default(Landroidx/navigation/internal/NavControllerImpl;Landroidx/navigation/NavDestination;IZLandroidx/navigation/NavDestination;ILjava/lang/Object;)Landroidx/navigation/NavDestination;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/navigation/internal/NavControllerImpl;->findDestinationComprehensive$navigation_runtime_release(Landroidx/navigation/NavDestination;IZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Landroidx/navigation/internal/NavControllerImpl;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/navigation/internal/NavControllerImpl;->lifecycleObserver$lambda$1(Landroidx/navigation/internal/NavControllerImpl;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public static synthetic h(Lll3;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/navigation/internal/NavControllerImpl;->pop$lambda$6(Lll3;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Ln07;Ljava/util/List;Lp07;Landroidx/navigation/internal/NavControllerImpl;Landroid/os/Bundle;Landroidx/navigation/NavBackStackEntry;)Lj59;
    .locals 0

    invoke-static/range {p0 .. p5}, Landroidx/navigation/internal/NavControllerImpl;->executeRestoreState$lambda$57(Ln07;Ljava/util/List;Lp07;Landroidx/navigation/internal/NavControllerImpl;Landroid/os/Bundle;Landroidx/navigation/NavBackStackEntry;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private final instantiateBackStack(Lfr;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfr<",
            "Landroidx/navigation/NavBackStackEntryState;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-virtual {v1}, Lfr;->j()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->getGraph$navigation_runtime_release()Landroidx/navigation/NavGraph;

    move-result-object v1

    :cond_1
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v3, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntryState;

    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntryState;->getDestinationId()I

    move-result v4

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Landroidx/navigation/internal/NavControllerImpl;->findDestinationComprehensive$navigation_runtime_release$default(Landroidx/navigation/internal/NavControllerImpl;Landroidx/navigation/NavDestination;IZLandroidx/navigation/NavDestination;ILjava/lang/Object;)Landroidx/navigation/NavDestination;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {v2}, Landroidx/navigation/internal/NavControllerImpl;->getNavContext()Landroidx/navigation/internal/NavContext;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/navigation/internal/NavControllerImpl;->getHostLifecycleState$navigation_runtime_release()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v4

    iget-object v5, v2, Landroidx/navigation/internal/NavControllerImpl;->viewModel:Landroidx/navigation/NavControllerViewModel;

    invoke-virtual {v1, v3, p0, v4, v5}, Landroidx/navigation/NavBackStackEntryState;->instantiate(Landroidx/navigation/internal/NavContext;Landroidx/navigation/NavDestination;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavControllerViewModel;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v3, p0

    move-object p0, v2

    goto :goto_0

    :cond_2
    sget-object p0, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    invoke-virtual {v2}, Landroidx/navigation/internal/NavControllerImpl;->getNavContext()Landroidx/navigation/internal/NavContext;

    move-result-object p1

    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntryState;->getDestinationId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/navigation/NavDestination$Companion;->getDisplayName(Landroidx/navigation/internal/NavContext;I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Restore State failed: destination "

    const-string v0, " cannot be found from the current destination "

    invoke-static {p1, p0, v0, v3}, Lfg;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_3
    return-object v0
.end method

.method public static synthetic j(Landroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;
    .locals 0

    invoke-static {p0}, Landroidx/navigation/internal/NavControllerImpl;->executePopOperations$lambda$11(Landroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Landroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;
    .locals 0

    invoke-static {p0}, Landroidx/navigation/internal/NavControllerImpl;->executePopOperations$lambda$14(Landroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Landroidx/navigation/NavOptionsBuilder;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/navigation/internal/NavControllerImpl;->clearBackStackInternal$lambda$19(Landroidx/navigation/NavOptionsBuilder;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private final launchSingleTopInternal(Landroidx/navigation/NavDestination;Landroid/os/Bundle;)Z
    .locals 4

    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->getCurrentBackStackEntry$navigation_runtime_release()Landroidx/navigation/NavBackStackEntry;

    move-result-object v0

    iget-object v1, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v2}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v2

    if-ne v2, p1, :cond_0

    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    if-ne v1, v3, :cond_2

    goto/16 :goto_5

    :cond_2
    instance-of v2, p1, Landroidx/navigation/NavGraph;

    if-eqz v2, :cond_5

    sget-object v0, Landroidx/navigation/NavGraph;->Companion:Landroidx/navigation/NavGraph$Companion;

    check-cast p1, Landroidx/navigation/NavGraph;

    invoke-virtual {v0, p1}, Landroidx/navigation/NavGraph$Companion;->childHierarchy(Landroidx/navigation/NavGraph;)Lzo7;

    move-result-object p1

    new-instance v0, Lni;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Lni;-><init>(I)V

    invoke-static {p1, v0}, Ljp7;->n(Lzo7;Lnl3;)Lf29;

    move-result-object p1

    invoke-static {p1}, Ljp7;->q(Lzo7;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-virtual {v0}, Ld1;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_3

    goto/16 :goto_5

    :cond_3
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-virtual {v0}, Ld1;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v3}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/navigation/NavDestination;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_5

    :cond_5
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getId()I

    move-result p1

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    if-ne p1, v0, :cond_b

    :cond_6
    new-instance p1, Lfr;

    invoke-direct {p1}, Lfr;-><init>()V

    :goto_2
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-static {v0}, Lu96;->g(Ljava/util/List;)I

    move-result v0

    if-lt v0, v1, :cond_7

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-static {v0}, Lnn1;->E(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {p0, v0}, Landroidx/navigation/internal/NavControllerImpl;->unlinkChildFromParent$navigation_runtime_release(Landroidx/navigation/NavBackStackEntry;)Landroidx/navigation/NavBackStackEntry;

    new-instance v2, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroidx/navigation/NavDestination;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Landroidx/navigation/NavBackStackEntry;-><init>(Landroidx/navigation/NavBackStackEntry;Landroid/os/Bundle;)V

    invoke-virtual {p1, v2}, Lfr;->addFirst(Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroidx/navigation/NavDestination;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/navigation/internal/NavControllerImpl;->getBackStackEntry$navigation_runtime_release(I)Landroidx/navigation/NavBackStackEntry;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/navigation/internal/NavControllerImpl;->linkChildToParent$navigation_runtime_release(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavBackStackEntry;)V

    :cond_8
    iget-object v1, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-virtual {v1, v0}, Lfr;->addLast(Ljava/lang/Object;)V

    goto :goto_3

    :cond_9
    invoke-virtual {p1}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/navigation/NavBackStackEntry;

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    invoke-virtual {p2}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/navigation/Navigator;->onLaunchSingleTop(Landroidx/navigation/NavBackStackEntry;)V

    goto :goto_4

    :cond_a
    const/4 p0, 0x1

    return p0

    :cond_b
    :goto_5
    const/4 p0, 0x0

    return p0
.end method

.method private static final launchSingleTopInternal$lambda$47(Landroidx/navigation/NavDestination;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/navigation/NavDestination;->getId()I

    move-result p0

    return p0
.end method

.method private static final lifecycleObserver$lambda$1(Landroidx/navigation/internal/NavControllerImpl;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroidx/lifecycle/Lifecycle$Event;->getTargetState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->hostLifecycleState:Landroidx/lifecycle/Lifecycle$State;

    iget-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-static {p0}, Lqn1;->v0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {p1, p2}, Landroidx/navigation/NavBackStackEntry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic m(Landroidx/navigation/NavDestination;)I
    .locals 0

    invoke-static {p0}, Landroidx/navigation/internal/NavControllerImpl;->launchSingleTopInternal$lambda$47(Landroidx/navigation/NavDestination;)I

    move-result p0

    return p0
.end method

.method public static synthetic n(Landroidx/navigation/internal/NavControllerImpl;Landroidx/navigation/NavDestination;)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/navigation/internal/NavControllerImpl;->executePopOperations$lambda$12(Landroidx/navigation/internal/NavControllerImpl;Landroidx/navigation/NavDestination;)Z

    move-result p0

    return p0
.end method

.method private static final navigate$lambda$44(Ln07;Landroidx/navigation/internal/NavControllerImpl;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavBackStackEntry;)Lj59;
    .locals 8

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ln07;->b:Z

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v1 .. v7}, Landroidx/navigation/internal/NavControllerImpl;->addEntryToBackStack$default(Landroidx/navigation/internal/NavControllerImpl;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavBackStackEntry;Ljava/util/List;ILjava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static synthetic navigate$navigation_runtime_release$default(Landroidx/navigation/internal/NavControllerImpl;Ljava/lang/Object;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/navigation/internal/NavControllerImpl;->navigate$navigation_runtime_release(Ljava/lang/Object;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    return-void
.end method

.method public static synthetic navigate$navigation_runtime_release$default(Landroidx/navigation/internal/NavControllerImpl;Ljava/lang/String;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/navigation/internal/NavControllerImpl;->navigate$navigation_runtime_release(Ljava/lang/String;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    return-void
.end method

.method private static final navigateInternal$lambda$3(Landroidx/navigation/NavBackStackEntry;)Lj59;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static synthetic navigateInternal$navigation_runtime_release$default(Landroidx/navigation/internal/NavControllerImpl;Landroidx/navigation/Navigator;Ljava/util/List;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;Lnl3;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    new-instance p5, Loi5;

    const/4 p6, 0x0

    invoke-direct {p5, p6}, Loi5;-><init>(I)V

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/navigation/internal/NavControllerImpl;->navigateInternal$navigation_runtime_release(Landroidx/navigation/Navigator;Ljava/util/List;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;Lnl3;)V

    return-void
.end method

.method public static synthetic o(Ln07;Ln07;Landroidx/navigation/internal/NavControllerImpl;ZLfr;Landroidx/navigation/NavBackStackEntry;)Lj59;
    .locals 0

    invoke-static/range {p0 .. p5}, Landroidx/navigation/internal/NavControllerImpl;->executePopOperations$lambda$10(Ln07;Ln07;Landroidx/navigation/internal/NavControllerImpl;ZLfr;Landroidx/navigation/NavBackStackEntry;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final pop$lambda$6(Lll3;)Lj59;
    .locals 0

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final popBackStackInternal$lambda$4(Landroidx/navigation/NavBackStackEntry;)Lj59;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static synthetic popBackStackInternal$navigation_runtime_release$default(Landroidx/navigation/internal/NavControllerImpl;Landroidx/navigation/Navigator;Landroidx/navigation/NavBackStackEntry;ZLnl3;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    new-instance p4, Lmm;

    const/4 p5, 0x2

    invoke-direct {p4, p5}, Lmm;-><init>(I)V

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/navigation/internal/NavControllerImpl;->popBackStackInternal$navigation_runtime_release(Landroidx/navigation/Navigator;Landroidx/navigation/NavBackStackEntry;ZLnl3;)V

    return-void
.end method

.method public static synthetic popBackStackInternal$navigation_runtime_release$default(Landroidx/navigation/internal/NavControllerImpl;IZZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 14
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/navigation/internal/NavControllerImpl;->popBackStackInternal$navigation_runtime_release(IZZ)Z

    move-result p0

    return p0
.end method

.method public static synthetic popBackStackInternal$navigation_runtime_release$default(Landroidx/navigation/internal/NavControllerImpl;Ljava/lang/Object;ZZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 15
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/navigation/internal/NavControllerImpl;->popBackStackInternal$navigation_runtime_release(Ljava/lang/Object;ZZ)Z

    move-result p0

    return p0
.end method

.method public static synthetic popEntryFromBackStack$navigation_runtime_release$default(Landroidx/navigation/internal/NavControllerImpl;Landroidx/navigation/NavBackStackEntry;ZLfr;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    new-instance p3, Lfr;

    invoke-direct {p3}, Lfr;-><init>()V

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/navigation/internal/NavControllerImpl;->popEntryFromBackStack$navigation_runtime_release(Landroidx/navigation/NavBackStackEntry;ZLfr;)V

    return-void
.end method

.method private final restoreStateInternal(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Z
    .locals 3

    .line 148
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->backStackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 149
    :cond_0
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->backStackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 150
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->backStackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Lri5;

    invoke-direct {v2, p1, v1}, Lri5;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v2}, Lnn1;->z(Ljava/lang/Iterable;Lnl3;)V

    .line 151
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->backStackStates:Ljava/util/Map;

    invoke-static {v0}, Lv39;->b(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfr;

    .line 152
    invoke-direct {p0, p1}, Landroidx/navigation/internal/NavControllerImpl;->instantiateBackStack(Lfr;)Ljava/util/List;

    move-result-object p1

    .line 153
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/navigation/internal/NavControllerImpl;->executeRestoreState(Ljava/util/List;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Z

    move-result p0

    return p0
.end method

.method private final restoreStateInternal(Ljava/lang/String;)Z
    .locals 6

    sget-object v0, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    invoke-virtual {v0, p1}, Landroidx/navigation/NavDestination$Companion;->createRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroidx/navigation/internal/NavControllerImpl;->backStackMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, v2, v2, v2}, Landroidx/navigation/internal/NavControllerImpl;->restoreStateInternal(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/navigation/internal/NavControllerImpl;->findDestination$navigation_runtime_release(Ljava/lang/String;)Landroidx/navigation/NavDestination;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v1

    iget-object v3, p0, Landroidx/navigation/internal/NavControllerImpl;->backStackMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Landroidx/navigation/internal/NavControllerImpl;->backStackMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Lvr2;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v5}, Lvr2;-><init>(Ljava/lang/Object;I)V

    invoke-static {v3, v4}, Lnn1;->z(Ljava/lang/Iterable;Lnl3;)V

    iget-object v3, p0, Landroidx/navigation/internal/NavControllerImpl;->backStackStates:Ljava/util/Map;

    invoke-static {v3}, Lv39;->b(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfr;

    invoke-virtual {v0, p1}, Landroidx/navigation/NavDestination;->matchRoute(Ljava/lang/String;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lfr;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntryState;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntryState;->getArgs()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/navigation/NavDestination$DeepLinkMatch;->hasMatchingArgs(Landroid/os/Bundle;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-direct {p0, v1}, Landroidx/navigation/internal/NavControllerImpl;->instantiateBackStack(Lfr;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, v2, v2, v2}, Landroidx/navigation/internal/NavControllerImpl;->executeRestoreState(Ljava/util/List;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Z

    move-result p0

    return p0

    :cond_3
    const-string v0, "Restore State failed: route "

    const-string v1, " cannot be found from the current destination "

    invoke-static {v0, p1, v1}, Ln7;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->getCurrentDestination$navigation_runtime_release()Landroidx/navigation/NavDestination;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static final restoreStateInternal$lambda$51(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final restoreStateInternal$lambda$53(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final addOnDestinationChangedListener$navigation_runtime_release(Landroidx/navigation/NavController$OnDestinationChangedListener;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->onDestinationChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-virtual {v0}, Lfr;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->navController:Landroidx/navigation/NavController;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {p1, p0, v1, v0}, Landroidx/navigation/NavController$OnDestinationChangedListener;->onDestinationChanged(Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final clearBackStack$navigation_runtime_release(I)Z
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Landroidx/navigation/internal/NavControllerImpl;->clearBackStackInternal$navigation_runtime_release(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->dispatchOnDestinationChanged$navigation_runtime_release()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final clearBackStack$navigation_runtime_release(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Landroidx/navigation/internal/NavControllerImpl;->generateRouteFilled$navigation_runtime_release(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/navigation/internal/NavControllerImpl;->clearBackStackInternal$navigation_runtime_release(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->dispatchOnDestinationChanged$navigation_runtime_release()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final clearBackStack$navigation_runtime_release(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    invoke-virtual {p0, p1}, Landroidx/navigation/internal/NavControllerImpl;->clearBackStackInternal$navigation_runtime_release(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->dispatchOnDestinationChanged$navigation_runtime_release()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final clearBackStack$navigation_runtime_release(Lne4;)Z
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

    .line 27
    invoke-static {p1}, Liq7;->b(Lne4;)Ldf4;

    move-result-object p1

    .line 28
    invoke-static {p1}, Landroidx/navigation/serialization/RouteSerializerKt;->generateHashCode(Ldf4;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/navigation/internal/NavControllerImpl;->clearBackStack$navigation_runtime_release(I)Z

    move-result p0

    return p0
.end method

.method public final clearBackStackInternal$navigation_runtime_release(I)Z
    .locals 5

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->navigatorState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavController$NavControllerNavigatorState;

    invoke-virtual {v1, v2}, Landroidx/navigation/NavigatorState;->setNavigating(Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Lgg1;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lgg1;-><init>(I)V

    invoke-static {v0}, Landroidx/navigation/NavOptionsBuilderKt;->navOptions(Lnl3;)Landroidx/navigation/NavOptions;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v1}, Landroidx/navigation/internal/NavControllerImpl;->restoreStateInternal(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Z

    move-result v0

    iget-object v1, p0, Landroidx/navigation/internal/NavControllerImpl;->navigatorState:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavController$NavControllerNavigatorState;

    invoke-virtual {v3, v4}, Landroidx/navigation/NavigatorState;->setNavigating(Z)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, v2, v4}, Landroidx/navigation/internal/NavControllerImpl;->popBackStackInternal$navigation_runtime_release(IZZ)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v4
.end method

.method public final clearBackStackInternal$navigation_runtime_release(Ljava/lang/String;)Z
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->navigatorState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 84
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 85
    invoke-virtual {v1, v2}, Landroidx/navigation/NavigatorState;->setNavigating(Z)V

    goto :goto_0

    .line 86
    :cond_0
    invoke-direct {p0, p1}, Landroidx/navigation/internal/NavControllerImpl;->restoreStateInternal(Ljava/lang/String;)Z

    move-result v0

    .line 87
    iget-object v1, p0, Landroidx/navigation/internal/NavControllerImpl;->navigatorState:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 88
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 89
    invoke-virtual {v3, v4}, Landroidx/navigation/NavigatorState;->setNavigating(Z)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 90
    invoke-virtual {p0, p1, v2, v4}, Landroidx/navigation/internal/NavControllerImpl;->popBackStackInternal$navigation_runtime_release(Ljava/lang/String;ZZ)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v4
.end method

.method public final createBackStackEntry$navigation_runtime_release(Landroidx/navigation/NavDestination;Landroid/os/Bundle;)Landroidx/navigation/NavBackStackEntry;
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/navigation/NavBackStackEntry;->Companion:Landroidx/navigation/NavBackStackEntry$Companion;

    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->getNavContext()Landroidx/navigation/internal/NavContext;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->getHostLifecycleState$navigation_runtime_release()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v4

    iget-object v5, p0, Landroidx/navigation/internal/NavControllerImpl;->viewModel:Landroidx/navigation/NavControllerViewModel;

    const/16 v8, 0x60

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v9}, Landroidx/navigation/NavBackStackEntry$Companion;->create$default(Landroidx/navigation/NavBackStackEntry$Companion;Landroidx/navigation/internal/NavContext;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavViewModelStoreProvider;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Landroidx/navigation/NavBackStackEntry;

    move-result-object p0

    return-object p0
.end method

.method public final dispatchOnDestinationChanged$navigation_runtime_release()Z
    .locals 9

    :goto_0
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-virtual {v0}, Lfr;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-virtual {v0}, Lfr;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    instance-of v0, v0, Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-virtual {v0}, Lfr;->last()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Landroidx/navigation/internal/NavControllerImpl;->popEntryFromBackStack$navigation_runtime_release$default(Landroidx/navigation/internal/NavControllerImpl;Landroidx/navigation/NavBackStackEntry;ZLfr;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    iget-object p0, v1, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-virtual {p0}, Lfr;->j()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/navigation/NavBackStackEntry;

    if-eqz p0, :cond_1

    iget-object v0, v1, Landroidx/navigation/internal/NavControllerImpl;->backStackEntriesToDispatch:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v0, v1, Landroidx/navigation/internal/NavControllerImpl;->dispatchReentrantCount:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, v1, Landroidx/navigation/internal/NavControllerImpl;->dispatchReentrantCount:I

    invoke-virtual {v1}, Landroidx/navigation/internal/NavControllerImpl;->updateBackStackLifecycle$navigation_runtime_release()V

    iget v0, v1, Landroidx/navigation/internal/NavControllerImpl;->dispatchReentrantCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, Landroidx/navigation/internal/NavControllerImpl;->dispatchReentrantCount:I

    if-nez v0, :cond_4

    iget-object v0, v1, Landroidx/navigation/internal/NavControllerImpl;->backStackEntriesToDispatch:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lqn1;->v0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, v1, Landroidx/navigation/internal/NavControllerImpl;->backStackEntriesToDispatch:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    iget-object v4, v1, Landroidx/navigation/internal/NavControllerImpl;->onDestinationChangedListeners:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/navigation/NavController$OnDestinationChangedListener;

    iget-object v6, v1, Landroidx/navigation/internal/NavControllerImpl;->navController:Landroidx/navigation/NavController;

    invoke-virtual {v3}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v7

    invoke-virtual {v3}, Landroidx/navigation/NavBackStackEntry;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    invoke-interface {v5, v6, v7, v8}, Landroidx/navigation/NavController$OnDestinationChangedListener;->onDestinationChanged(Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_2
    iget-object v4, v1, Landroidx/navigation/internal/NavControllerImpl;->_currentBackStackEntryFlow:Lvg5;

    invoke-interface {v4, v3}, Lvg5;->e(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v0, v1, Landroidx/navigation/internal/NavControllerImpl;->_currentBackStack:Lxg5;

    iget-object v3, v1, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-static {v3}, Lqn1;->v0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v0, v3}, Lvg5;->e(Ljava/lang/Object;)Z

    iget-object v0, v1, Landroidx/navigation/internal/NavControllerImpl;->_visibleEntries:Lxg5;

    invoke-virtual {v1}, Landroidx/navigation/internal/NavControllerImpl;->populateVisibleEntries$navigation_runtime_release()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lvg5;->e(Ljava/lang/Object;)Z

    :cond_4
    if-eqz p0, :cond_5

    return v2

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public final executePopOperations$navigation_runtime_release(Ljava/util/List;Landroidx/navigation/NavDestination;ZZ)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/navigation/Navigator<",
            "*>;>;",
            "Landroidx/navigation/NavDestination;",
            "ZZ)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ln07;

    invoke-direct {v2}, Ln07;-><init>()V

    new-instance v5, Lfr;

    invoke-direct {v5}, Lfr;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/navigation/Navigator;

    new-instance v1, Ln07;

    invoke-direct {v1}, Ln07;-><init>()V

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-virtual {v0}, Lfr;->last()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroidx/navigation/NavBackStackEntry;

    new-instance v0, Lsi5;

    move-object v3, p0

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lsi5;-><init>(Ln07;Ln07;Landroidx/navigation/internal/NavControllerImpl;ZLfr;)V

    invoke-virtual {v3, v6, v7, v4, v0}, Landroidx/navigation/internal/NavControllerImpl;->popBackStackInternal$navigation_runtime_release(Landroidx/navigation/Navigator;Landroidx/navigation/NavBackStackEntry;ZLnl3;)V

    iget-boolean p0, v1, Ln07;->b:Z

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    move-object p0, v3

    move p4, v4

    goto :goto_0

    :cond_1
    move-object v3, p0

    move v4, p4

    :goto_1
    if-eqz v4, :cond_5

    const/4 p0, 0x1

    const/4 p1, 0x0

    if-nez p3, :cond_3

    new-instance p3, Lji;

    invoke-direct {p3, p0}, Lji;-><init>(I)V

    invoke-static {p3, p2}, Ldp7;->h(Lnl3;Ljava/lang/Object;)Lzo7;

    move-result-object p2

    new-instance p3, Lmi5;

    const/4 p4, 0x0

    invoke-direct {p3, v3, p4}, Lmi5;-><init>(Ljava/lang/Object;I)V

    new-instance p4, Lik8;

    invoke-direct {p4, p2, p3}, Lik8;-><init>(Lzo7;Lnl3;)V

    new-instance p2, Lik8$a;

    invoke-direct {p2, p4}, Lik8$a;-><init>(Lik8;)V

    :goto_2
    invoke-virtual {p2}, Lik8$a;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Lik8$a;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/navigation/NavDestination;

    iget-object p4, v3, Landroidx/navigation/internal/NavControllerImpl;->backStackMap:Ljava/util/Map;

    invoke-virtual {p3}, Landroidx/navigation/NavDestination;->getId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v5}, Lfr;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntryState;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntryState;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_2
    move-object v0, p1

    :goto_3
    invoke-interface {p4, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Lfr;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {v5}, Lfr;->first()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/navigation/NavBackStackEntryState;

    invoke-virtual {p2}, Landroidx/navigation/NavBackStackEntryState;->getDestinationId()I

    move-result p3

    const/4 p4, 0x2

    invoke-static {v3, p3, p1, p4, p1}, Landroidx/navigation/internal/NavControllerImpl;->findDestination$navigation_runtime_release$default(Landroidx/navigation/internal/NavControllerImpl;ILandroidx/navigation/NavDestination;ILjava/lang/Object;)Landroidx/navigation/NavDestination;

    move-result-object p1

    new-instance p3, Lau0;

    invoke-direct {p3, p0}, Lau0;-><init>(I)V

    invoke-static {p3, p1}, Ldp7;->h(Lnl3;Ljava/lang/Object;)Lzo7;

    move-result-object p0

    new-instance p1, Lyz1;

    invoke-direct {p1, v3, p4}, Lyz1;-><init>(Ljava/lang/Object;I)V

    new-instance p3, Lik8;

    invoke-direct {p3, p0, p1}, Lik8;-><init>(Lzo7;Lnl3;)V

    new-instance p0, Lik8$a;

    invoke-direct {p0, p3}, Lik8$a;-><init>(Lik8;)V

    :goto_4
    invoke-virtual {p0}, Lik8$a;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lik8$a;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/navigation/NavDestination;

    iget-object p3, v3, Landroidx/navigation/internal/NavControllerImpl;->backStackMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/navigation/NavBackStackEntryState;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    iget-object p0, v3, Landroidx/navigation/internal/NavControllerImpl;->backStackMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {p2}, Landroidx/navigation/NavBackStackEntryState;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    iget-object p0, v3, Landroidx/navigation/internal/NavControllerImpl;->backStackStates:Ljava/util/Map;

    invoke-virtual {p2}, Landroidx/navigation/NavBackStackEntryState;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object p0, v3, Landroidx/navigation/internal/NavControllerImpl;->updateOnBackPressedCallbackEnabledCallback:Lll3;

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    iget-boolean p0, v2, Ln07;->b:Z

    return p0
.end method

.method public final findDestination$navigation_runtime_release(ILandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;
    .locals 2

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    if-eqz p2, :cond_1

    invoke-static {v0, p2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    return-object p0

    :cond_1
    return-object v0

    :cond_2
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-virtual {v0}, Lfr;->j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Landroidx/navigation/internal/NavControllerImpl;->findDestinationComprehensive$navigation_runtime_release(Landroidx/navigation/NavDestination;IZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;

    move-result-object p0

    return-object p0
.end method

.method public final findDestination$navigation_runtime_release(Ljava/lang/String;)Landroidx/navigation/NavDestination;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 63
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getRoute()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, Landroidx/navigation/NavDestination;->matchRoute(Ljava/lang/String;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->getTopGraph$navigation_runtime_release()Landroidx/navigation/NavGraph;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/navigation/NavGraph;->findNode(Ljava/lang/String;)Landroidx/navigation/NavDestination;

    move-result-object p0

    return-object p0

    .line 65
    :cond_2
    :goto_0
    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    return-object p0
.end method

.method public final findDestinationComprehensive$navigation_runtime_release(Landroidx/navigation/NavDestination;IZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getId()I

    move-result p0

    if-ne p0, p2, :cond_1

    if-eqz p4, :cond_0

    invoke-virtual {p1, p4}, Landroidx/navigation/NavDestination;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object p0

    invoke-virtual {p4}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v0

    invoke-static {p0, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    return-object p1

    :cond_1
    instance-of p0, p1, Landroidx/navigation/NavGraph;

    if-eqz p0, :cond_2

    move-object p0, p1

    check-cast p0, Landroidx/navigation/NavGraph;

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_3

    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    invoke-virtual {p0, p2, p0, p3, p4}, Landroidx/navigation/NavGraph;->findNodeComprehensive(ILandroidx/navigation/NavDestination;ZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination;

    move-result-object p0

    return-object p0
.end method

.method public final findInvalidDestinationDisplayNameInDeepLink$navigation_runtime_release([I)Ljava/lang/String;
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_5

    aget v4, p1, v2

    if-nez v2, :cond_0

    iget-object v5, p0, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Landroidx/navigation/NavDestination;->getId()I

    move-result v5

    if-ne v5, v4, :cond_1

    iget-object v3, p0, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v4}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/NavDestination;

    move-result-object v3

    :cond_1
    :goto_1
    if-nez v3, :cond_2

    sget-object p1, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->getNavContext()Landroidx/navigation/internal/NavContext;

    move-result-object p0

    invoke-virtual {p1, p0, v4}, Landroidx/navigation/NavDestination$Companion;->getDisplayName(Landroidx/navigation/internal/NavContext;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    if-eq v2, v4, :cond_4

    instance-of v4, v3, Landroidx/navigation/NavGraph;

    if-eqz v4, :cond_4

    check-cast v3, Landroidx/navigation/NavGraph;

    :goto_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroidx/navigation/NavGraph;->getStartDestinationId()I

    move-result v0

    invoke-virtual {v3, v0}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/NavDestination;

    move-result-object v0

    instance-of v0, v0, Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Landroidx/navigation/NavGraph;->getStartDestinationId()I

    move-result v0

    invoke-virtual {v3, v0}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/NavDestination;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/navigation/NavGraph;

    goto :goto_2

    :cond_3
    move-object v0, v3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v3
.end method

.method public final generateRouteFilled$navigation_runtime_release(Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    invoke-static {v0}, Liq7;->b(Lne4;)Ldf4;

    move-result-object v0

    invoke-static {v0}, Landroidx/navigation/serialization/RouteSerializerKt;->generateHashCode(Ldf4;)I

    move-result v3

    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->getGraph$navigation_runtime_release()Landroidx/navigation/NavGraph;

    move-result-object v2

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Landroidx/navigation/internal/NavControllerImpl;->findDestinationComprehensive$navigation_runtime_release$default(Landroidx/navigation/internal/NavControllerImpl;Landroidx/navigation/NavDestination;IZLandroidx/navigation/NavDestination;ILjava/lang/Object;)Landroidx/navigation/NavDestination;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/navigation/NavDestination;->getArguments()Ljava/util/Map;

    move-result-object p0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Lm05;->b(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavArgument;

    invoke-virtual {v1}, Landroidx/navigation/NavArgument;->getType()Landroidx/navigation/NavType;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {p1, v0}, Landroidx/navigation/serialization/RouteSerializerKt;->generateRouteWithArgs(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object p0

    invoke-virtual {p0}, Lzk1;->f()Ljava/lang/String;

    move-result-object p0

    const-string p1, " cannot be found in navigation graph "

    iget-object v0, v1, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    const-string v1, "Destination with route "

    invoke-static {v1, p0, p1, v0}, Lkg;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getAddToBackStackHandler$navigation_runtime_release()Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnl3<",
            "Landroidx/navigation/NavBackStackEntry;",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->addToBackStackHandler:Lnl3;

    return-object p0
.end method

.method public final getBackQueue$navigation_runtime_release()Lfr;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfr<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    return-object p0
.end method

.method public final getBackStackEntry$navigation_runtime_release(I)Landroidx/navigation/NavBackStackEntry;
    .locals 4

    .line 106
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    .line 107
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 108
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 109
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    .line 110
    move-object v3, v1

    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    .line 111
    invoke-virtual {v3}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/navigation/NavDestination;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    if-eqz v1, :cond_2

    return-object v1

    .line 112
    :cond_2
    const-string v0, "No destination with ID "

    const-string v1, " is on the NavController\'s back stack. The current destination is "

    .line 113
    invoke-static {p1, v0, v1}, Ln7;->c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 114
    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->getCurrentDestination$navigation_runtime_release()Landroidx/navigation/NavDestination;

    move-result-object p0

    .line 115
    invoke-static {p0, p1}, Lh2;->c(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    return-object v2
.end method

.method public final getBackStackEntry$navigation_runtime_release(Ljava/lang/Object;)Landroidx/navigation/NavBackStackEntry;
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

    .line 126
    invoke-virtual {p0, p1}, Landroidx/navigation/internal/NavControllerImpl;->generateRouteFilled$navigation_runtime_release(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-virtual {p0, p1}, Landroidx/navigation/internal/NavControllerImpl;->getBackStackEntry$navigation_runtime_release(Ljava/lang/String;)Landroidx/navigation/NavBackStackEntry;

    move-result-object p0

    return-object p0
.end method

.method public final getBackStackEntry$navigation_runtime_release(Ljava/lang/String;)Landroidx/navigation/NavBackStackEntry;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    .line 117
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 118
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 119
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    .line 120
    move-object v3, v1

    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    .line 121
    invoke-virtual {v3}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v4

    invoke-virtual {v3}, Landroidx/navigation/NavBackStackEntry;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v4, p1, v3}, Landroidx/navigation/NavDestination;->hasRoute(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    if-eqz v1, :cond_2

    return-object v1

    .line 122
    :cond_2
    const-string v0, "No destination with route "

    const-string v1, " is on the NavController\'s back stack. The current destination is "

    .line 123
    invoke-static {v0, p1, v1}, Ln7;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 124
    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->getCurrentDestination$navigation_runtime_release()Landroidx/navigation/NavDestination;

    move-result-object p0

    .line 125
    invoke-static {p0, p1}, Lh2;->c(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    return-object v2
.end method

.method public final getBackStackEntry$navigation_runtime_release(Lne4;)Landroidx/navigation/NavBackStackEntry;
    .locals 8
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

    invoke-static {p1}, Liq7;->b(Lne4;)Ldf4;

    move-result-object v0

    invoke-static {v0}, Landroidx/navigation/serialization/RouteSerializerKt;->generateHashCode(Ldf4;)I

    move-result v3

    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->getGraph$navigation_runtime_release()Landroidx/navigation/NavGraph;

    move-result-object v2

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Landroidx/navigation/internal/NavControllerImpl;->findDestinationComprehensive$navigation_runtime_release$default(Landroidx/navigation/internal/NavControllerImpl;Landroidx/navigation/NavDestination;IZLandroidx/navigation/NavDestination;ILjava/lang/Object;)Landroidx/navigation/NavDestination;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    iget-object p0, v1, Landroidx/navigation/internal/NavControllerImpl;->currentBackStack:Ly68;

    invoke-interface {p0}, Ly68;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p0, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v4}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/navigation/NavDestination;->getId()I

    move-result v4

    if-ne v4, v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    invoke-interface {p1}, Lne4;->f()Ljava/lang/String;

    move-result-object p0

    const-string p1, " is on the NavController\'s back stack. The current destination is "

    invoke-virtual {v1}, Landroidx/navigation/internal/NavControllerImpl;->getCurrentDestination$navigation_runtime_release()Landroidx/navigation/NavDestination;

    move-result-object v1

    const-string v2, "No destination with route "

    invoke-static {v2, p0, p1, v1}, Lkg;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_3
    invoke-interface {p1}, Lne4;->f()Ljava/lang/String;

    move-result-object p0

    const-string p1, " cannot be found in navigation graph "

    invoke-virtual {v1}, Landroidx/navigation/internal/NavControllerImpl;->getGraph$navigation_runtime_release()Landroidx/navigation/NavGraph;

    move-result-object v1

    const-string v2, "Destination with route "

    invoke-static {v2, p0, p1, v1}, Lkg;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getBackStackMap$navigation_runtime_release()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->backStackMap:Ljava/util/Map;

    return-object p0
.end method

.method public final getBackStackStates$navigation_runtime_release()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lfr<",
            "Landroidx/navigation/NavBackStackEntryState;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->backStackStates:Ljava/util/Map;

    return-object p0
.end method

.method public final getBackStackToRestore$navigation_runtime_release()[Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->backStackToRestore:[Landroid/os/Bundle;

    return-object p0
.end method

.method public final getChildToParentEntries$navigation_runtime_release()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroidx/navigation/NavBackStackEntry;",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->childToParentEntries:Ljava/util/Map;

    return-object p0
.end method

.method public final getCurrentBackStack$navigation_runtime_release()Ly68;
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

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->currentBackStack:Ly68;

    return-object p0
.end method

.method public final getCurrentBackStackEntry$navigation_runtime_release()Landroidx/navigation/NavBackStackEntry;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-virtual {p0}, Lfr;->j()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/navigation/NavBackStackEntry;

    return-object p0
.end method

.method public final getCurrentDestination$navigation_runtime_release()Landroidx/navigation/NavDestination;
    .locals 0

    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->getCurrentBackStackEntry$navigation_runtime_release()Landroidx/navigation/NavBackStackEntry;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getEntrySavedState$navigation_runtime_release()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroidx/navigation/NavBackStackEntry;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->entrySavedState:Ljava/util/Map;

    return-object p0
.end method

.method public final getGraph$navigation_runtime_release()Landroidx/navigation/NavGraph;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_0
    const-string p0, "You must call setGraph() before calling getGraph()"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getHostLifecycleState$navigation_runtime_release()Landroidx/lifecycle/Lifecycle$State;
    .locals 1

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-nez v0, :cond_0

    sget-object p0, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->hostLifecycleState:Landroidx/lifecycle/Lifecycle$State;

    return-object p0
.end method

.method public final getLifecycleObserver$navigation_runtime_release()Landroidx/lifecycle/LifecycleObserver;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->lifecycleObserver:Landroidx/lifecycle/LifecycleObserver;

    return-object p0
.end method

.method public final getLifecycleOwner$navigation_runtime_release()Landroidx/lifecycle/LifecycleOwner;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    return-object p0
.end method

.method public final getNavContext()Landroidx/navigation/internal/NavContext;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->navController:Landroidx/navigation/NavController;

    invoke-virtual {p0}, Landroidx/navigation/NavController;->getNavContext$navigation_runtime_release()Landroidx/navigation/internal/NavContext;

    move-result-object p0

    return-object p0
.end method

.method public final getNavController()Landroidx/navigation/NavController;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->navController:Landroidx/navigation/NavController;

    return-object p0
.end method

.method public final getNavigatorProvider$navigation_runtime_release()Landroidx/navigation/NavigatorProvider;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    return-object p0
.end method

.method public final getNavigatorState$navigation_runtime_release()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/NavDestination;",
            ">;",
            "Landroidx/navigation/NavController$NavControllerNavigatorState;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->navigatorState:Ljava/util/Map;

    return-object p0
.end method

.method public final getNavigatorStateToRestore$navigation_runtime_release()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->navigatorStateToRestore:Landroid/os/Bundle;

    return-object p0
.end method

.method public final getOnDestinationChangedListeners$navigation_runtime_release()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/navigation/NavController$OnDestinationChangedListener;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->onDestinationChangedListeners:Ljava/util/List;

    return-object p0
.end method

.method public final getParentToChildCount$navigation_runtime_release()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroidx/navigation/NavBackStackEntry;",
            "Landroidx/navigation/internal/AtomicInt;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->parentToChildCount:Ljava/util/Map;

    return-object p0
.end method

.method public final getPopFromBackStackHandler$navigation_runtime_release()Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnl3<",
            "Landroidx/navigation/NavBackStackEntry;",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->popFromBackStackHandler:Lnl3;

    return-object p0
.end method

.method public final getPreviousBackStackEntry$navigation_runtime_release()Landroidx/navigation/NavBackStackEntry;
    .locals 2

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-static {p0}, Lqn1;->j0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    :cond_0
    invoke-static {p0}, Ldp7;->f(Ljava/util/Iterator;)Lzo7;

    move-result-object p0

    check-cast p0, Llx1;

    invoke-virtual {p0}, Llx1;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v1

    instance-of v1, v1, Landroidx/navigation/NavGraph;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    return-object v0
.end method

.method public final getTopGraph$navigation_runtime_release()Landroidx/navigation/NavGraph;
    .locals 1

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-virtual {v0}, Lfr;->j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    instance-of p0, v0, Landroidx/navigation/NavGraph;

    if-eqz p0, :cond_2

    move-object p0, v0

    check-cast p0, Landroidx/navigation/NavGraph;

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_3

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    return-object p0
.end method

.method public final getUpdateOnBackPressedCallbackEnabledCallback()Lll3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->updateOnBackPressedCallbackEnabledCallback:Lll3;

    return-object p0
.end method

.method public final getViewModel$navigation_runtime_release()Landroidx/navigation/NavControllerViewModel;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->viewModel:Landroidx/navigation/NavControllerViewModel;

    return-object p0
.end method

.method public final getViewModelStoreOwner$navigation_runtime_release(I)Landroidx/lifecycle/ViewModelStoreOwner;
    .locals 2

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->viewModel:Landroidx/navigation/NavControllerViewModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/navigation/internal/NavControllerImpl;->getBackStackEntry$navigation_runtime_release(I)Landroidx/navigation/NavBackStackEntry;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    instance-of v0, v0, Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "No NavGraph with ID "

    const-string v0, " is on the NavController\'s back stack"

    invoke-static {p1, p0, v0}, Lkv2;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    return-object v1

    :cond_1
    const-string p0, "You must call setViewModelStore() before calling getViewModelStoreOwner()."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v1
.end method

.method public final getVisibleEntries$navigation_runtime_release()Ly68;
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

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->visibleEntries:Ly68;

    return-object p0
.end method

.method public final get_currentBackStack$navigation_runtime_release()Lxg5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lxg5<",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->_currentBackStack:Lxg5;

    return-object p0
.end method

.method public final get_currentBackStackEntryFlow$navigation_runtime_release()Lvg5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lvg5<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->_currentBackStackEntryFlow:Lvg5;

    return-object p0
.end method

.method public final get_graph$navigation_runtime_release()Landroidx/navigation/NavGraph;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    return-object p0
.end method

.method public final get_navigatorProvider$navigation_runtime_release()Landroidx/navigation/NavigatorProvider;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    return-object p0
.end method

.method public final get_visibleEntries$navigation_runtime_release()Lxg5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lxg5<",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->_visibleEntries:Lxg5;

    return-object p0
.end method

.method public final linkChildToParent$navigation_runtime_release(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavBackStackEntry;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->childToParentEntries:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->parentToChildCount:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->parentToChildCount:Ljava/util/Map;

    new-instance v0, Landroidx/navigation/internal/AtomicInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/navigation/internal/AtomicInt;-><init>(I)V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->parentToChildCount:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Landroidx/navigation/internal/AtomicInt;

    invoke-virtual {p0}, Landroidx/navigation/internal/AtomicInt;->incrementAndGet$navigation_runtime_release()I

    return-void
.end method

.method public final markTransitionComplete$navigation_runtime_release(Landroidx/navigation/NavController$NavControllerNavigatorState;Landroidx/navigation/NavBackStackEntry;Lll3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavController$NavControllerNavigatorState;",
            "Landroidx/navigation/NavBackStackEntry;",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->entrySavedState:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p3}, Lll3;->invoke()Ljava/lang/Object;

    iget-object p3, p0, Landroidx/navigation/internal/NavControllerImpl;->entrySavedState:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-virtual {p3, p2}, Lfr;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    invoke-virtual {p0, p2}, Landroidx/navigation/internal/NavControllerImpl;->unlinkChildFromParent$navigation_runtime_release(Landroidx/navigation/NavBackStackEntry;)Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {p2}, Landroidx/navigation/NavBackStackEntry;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p1

    sget-object p3, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, p3}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p2, p1}, Landroidx/navigation/NavBackStackEntry;->setMaxLifecycle(Landroidx/lifecycle/Lifecycle$State;)V

    :cond_0
    iget-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lfr;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {p3}, Landroidx/navigation/NavBackStackEntry;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Landroidx/navigation/NavBackStackEntry;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_3
    :goto_0
    if-nez v0, :cond_4

    iget-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->viewModel:Landroidx/navigation/NavControllerViewModel;

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Landroidx/navigation/NavBackStackEntry;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/navigation/NavControllerViewModel;->clear(Ljava/lang/String;)V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->updateBackStackLifecycle$navigation_runtime_release()V

    iget-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->_visibleEntries:Lxg5;

    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->populateVisibleEntries$navigation_runtime_release()Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Lvg5;->e(Ljava/lang/Object;)Z

    return-void

    :cond_5
    invoke-virtual {p1}, Landroidx/navigation/NavigatorState;->isNavigating()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->updateBackStackLifecycle$navigation_runtime_release()V

    iget-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->_currentBackStack:Lxg5;

    iget-object p2, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-static {p2}, Lqn1;->v0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {p1, p2}, Lvg5;->e(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->_visibleEntries:Lxg5;

    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->populateVisibleEntries$navigation_runtime_release()Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Lvg5;->e(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method public final navigate$navigation_runtime_release(Landroid/net/Uri;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 347
    new-instance v0, Landroidx/navigation/NavDeepLinkRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Landroidx/navigation/NavDeepLinkRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/navigation/internal/NavControllerImpl;->navigate$navigation_runtime_release(Landroidx/navigation/NavDeepLinkRequest;)V

    return-void
.end method

.method public final navigate$navigation_runtime_release(Landroid/net/Uri;Landroidx/navigation/NavOptions;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 325
    new-instance v0, Landroidx/navigation/NavDeepLinkRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Landroidx/navigation/NavDeepLinkRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, v1}, Landroidx/navigation/internal/NavControllerImpl;->navigate$navigation_runtime_release(Landroidx/navigation/NavDeepLinkRequest;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    return-void
.end method

.method public final navigate$navigation_runtime_release(Landroid/net/Uri;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 326
    new-instance v0, Landroidx/navigation/NavDeepLinkRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Landroidx/navigation/NavDeepLinkRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Landroidx/navigation/internal/NavControllerImpl;->navigate$navigation_runtime_release(Landroidx/navigation/NavDeepLinkRequest;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    return-void
.end method

.method public final navigate$navigation_runtime_release(Landroidx/navigation/NavDeepLinkRequest;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 327
    invoke-virtual {p0, p1, v0}, Landroidx/navigation/internal/NavControllerImpl;->navigate$navigation_runtime_release(Landroidx/navigation/NavDeepLinkRequest;Landroidx/navigation/NavOptions;)V

    return-void
.end method

.method public final navigate$navigation_runtime_release(Landroidx/navigation/NavDeepLinkRequest;Landroidx/navigation/NavOptions;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 328
    invoke-virtual {p0, p1, p2, v0}, Landroidx/navigation/internal/NavControllerImpl;->navigate$navigation_runtime_release(Landroidx/navigation/NavDeepLinkRequest;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    return-void
.end method

.method public final navigate$navigation_runtime_release(Landroidx/navigation/NavDeepLinkRequest;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 329
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_2

    .line 330
    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->getTopGraph$navigation_runtime_release()Landroidx/navigation/NavGraph;

    move-result-object v0

    const/4 v1, 0x1

    .line 331
    invoke-virtual {v0, p1, v1, v1, v0}, Landroidx/navigation/NavGraph;->matchDeepLinkComprehensive(Landroidx/navigation/NavDeepLinkRequest;ZZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 332
    invoke-virtual {v0}, Landroidx/navigation/NavDestination$DeepLinkMatch;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v1

    .line 333
    invoke-virtual {v0}, Landroidx/navigation/NavDestination$DeepLinkMatch;->getMatchingArgs()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/navigation/NavDestination;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 334
    new-array v1, v1, [Lb36;

    .line 335
    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lb36;

    invoke-static {v1}, Landroidx/core/os/BundleKt;->bundleOf([Lb36;)Landroid/os/Bundle;

    move-result-object v1

    .line 336
    invoke-static {v1}, Landroidx/savedstate/SavedStateWriter;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 337
    :cond_0
    invoke-virtual {v0}, Landroidx/navigation/NavDestination$DeepLinkMatch;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    .line 338
    iget-object v2, p0, Landroidx/navigation/internal/NavControllerImpl;->navController:Landroidx/navigation/NavController;

    invoke-virtual {v2, p1, v1}, Landroidx/navigation/NavController;->writeIntent$navigation_runtime_release(Landroidx/navigation/NavDeepLinkRequest;Landroid/os/Bundle;)V

    .line 339
    invoke-virtual {p0, v0, v1, p2, p3}, Landroidx/navigation/internal/NavControllerImpl;->navigate$navigation_runtime_release(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    return-void

    .line 340
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Navigation destination that matches request "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " cannot be found in the navigation graph "

    .line 341
    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    .line 342
    invoke-static {p2, p1, p0}, Lcg;->g(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 343
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Cannot navigate to "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 344
    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->navController:Landroidx/navigation/NavController;

    .line 345
    const-string p1, ". Navigation graph has not been set for NavController "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2e

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 346
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final navigate$navigation_runtime_release(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Landroidx/navigation/internal/NavControllerImpl;->navigatorState:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavController$NavControllerNavigatorState;

    invoke-virtual {v2, v4}, Landroidx/navigation/NavigatorState;->setNavigating(Z)V

    goto :goto_0

    :cond_0
    new-instance v6, Ln07;

    invoke-direct {v6}, Ln07;-><init>()V

    const/4 v7, 0x0

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroidx/navigation/NavOptions;->getPopUpToRoute()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v3}, Landroidx/navigation/NavOptions;->getPopUpToRoute()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroidx/navigation/NavOptions;->isPopUpToInclusive()Z

    move-result v2

    invoke-virtual {v3}, Landroidx/navigation/NavOptions;->shouldPopUpToSaveState()Z

    move-result v5

    invoke-virtual {v0, v1, v2, v5}, Landroidx/navigation/internal/NavControllerImpl;->popBackStackInternal$navigation_runtime_release(Ljava/lang/String;ZZ)Z

    move-result v1

    :goto_1
    move v8, v1

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Landroidx/navigation/NavOptions;->getPopUpToRouteClass()Lne4;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v3}, Landroidx/navigation/NavOptions;->getPopUpToRouteClass()Lne4;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Liq7;->b(Lne4;)Ldf4;

    move-result-object v1

    invoke-static {v1}, Landroidx/navigation/serialization/RouteSerializerKt;->generateHashCode(Ldf4;)I

    move-result v1

    invoke-virtual {v3}, Landroidx/navigation/NavOptions;->isPopUpToInclusive()Z

    move-result v2

    invoke-virtual {v3}, Landroidx/navigation/NavOptions;->shouldPopUpToSaveState()Z

    move-result v5

    invoke-virtual {v0, v1, v2, v5}, Landroidx/navigation/internal/NavControllerImpl;->popBackStackInternal$navigation_runtime_release(IZZ)Z

    move-result v1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Landroidx/navigation/NavOptions;->getPopUpToRouteObject()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v3}, Landroidx/navigation/NavOptions;->getPopUpToRouteObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroidx/navigation/NavOptions;->isPopUpToInclusive()Z

    move-result v2

    invoke-virtual {v3}, Landroidx/navigation/NavOptions;->shouldPopUpToSaveState()Z

    move-result v5

    invoke-virtual {v0, v1, v2, v5}, Landroidx/navigation/internal/NavControllerImpl;->popBackStackInternal$navigation_runtime_release(Ljava/lang/Object;ZZ)Z

    move-result v1

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Landroidx/navigation/NavOptions;->getPopUpToId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    invoke-virtual {v3}, Landroidx/navigation/NavOptions;->getPopUpToId()I

    move-result v1

    invoke-virtual {v3}, Landroidx/navigation/NavOptions;->isPopUpToInclusive()Z

    move-result v2

    invoke-virtual {v3}, Landroidx/navigation/NavOptions;->shouldPopUpToSaveState()Z

    move-result v5

    invoke-virtual {v0, v1, v2, v5}, Landroidx/navigation/internal/NavControllerImpl;->popBackStackInternal$navigation_runtime_release(IZZ)Z

    move-result v1

    goto :goto_1

    :cond_4
    move v8, v7

    :goto_2
    invoke-virtual/range {p1 .. p2}, Landroidx/navigation/NavDestination;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v12

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroidx/navigation/NavOptions;->shouldRestoreState()Z

    move-result v1

    if-ne v1, v4, :cond_5

    iget-object v1, v0, Landroidx/navigation/internal/NavControllerImpl;->backStackMap:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Landroidx/navigation/NavDestination;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroidx/navigation/NavDestination;->getId()I

    move-result v1

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v12, v3, v2}, Landroidx/navigation/internal/NavControllerImpl;->restoreStateInternal(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Z

    move-result v1

    iput-boolean v1, v6, Ln07;->b:Z

    move/from16 v19, v7

    goto :goto_4

    :cond_5
    move-object/from16 v2, p4

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroidx/navigation/NavOptions;->shouldLaunchSingleTop()Z

    move-result v1

    if-ne v1, v4, :cond_6

    invoke-direct/range {p0 .. p2}, Landroidx/navigation/internal/NavControllerImpl;->launchSingleTopInternal(Landroidx/navigation/NavDestination;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_6

    move/from16 v19, v4

    goto :goto_3

    :cond_6
    move/from16 v19, v7

    :goto_3
    if-nez v19, :cond_7

    sget-object v9, Landroidx/navigation/NavBackStackEntry;->Companion:Landroidx/navigation/NavBackStackEntry$Companion;

    invoke-virtual {v0}, Landroidx/navigation/internal/NavControllerImpl;->getNavContext()Landroidx/navigation/internal/NavContext;

    move-result-object v10

    invoke-virtual {v0}, Landroidx/navigation/internal/NavControllerImpl;->getHostLifecycleState$navigation_runtime_release()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v13

    iget-object v14, v0, Landroidx/navigation/internal/NavControllerImpl;->viewModel:Landroidx/navigation/NavControllerViewModel;

    const/16 v17, 0x60

    const/16 v18, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, p1

    invoke-static/range {v9 .. v18}, Landroidx/navigation/NavBackStackEntry$Companion;->create$default(Landroidx/navigation/NavBackStackEntry$Companion;Landroidx/navigation/internal/NavContext;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavViewModelStoreProvider;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v1

    iget-object v4, v0, Landroidx/navigation/internal/NavControllerImpl;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    invoke-virtual/range {p1 .. p1}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v4

    invoke-static {v1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v5, Lni5;

    invoke-direct {v5, v6, v0, v11, v12}, Lni5;-><init>(Ln07;Landroidx/navigation/internal/NavControllerImpl;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V

    move-object/from16 v20, v2

    move-object v2, v1

    move-object v1, v4

    move-object/from16 v4, v20

    invoke-virtual/range {v0 .. v5}, Landroidx/navigation/internal/NavControllerImpl;->navigateInternal$navigation_runtime_release(Landroidx/navigation/Navigator;Ljava/util/List;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;Lnl3;)V

    :cond_7
    :goto_4
    iget-object v1, v0, Landroidx/navigation/internal/NavControllerImpl;->updateOnBackPressedCallbackEnabledCallback:Lll3;

    invoke-interface {v1}, Lll3;->invoke()Ljava/lang/Object;

    iget-object v1, v0, Landroidx/navigation/internal/NavControllerImpl;->navigatorState:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavController$NavControllerNavigatorState;

    invoke-virtual {v2, v7}, Landroidx/navigation/NavigatorState;->setNavigating(Z)V

    goto :goto_5

    :cond_8
    if-nez v8, :cond_a

    iget-boolean v1, v6, Ln07;->b:Z

    if-nez v1, :cond_a

    if-eqz v19, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v0}, Landroidx/navigation/internal/NavControllerImpl;->updateBackStackLifecycle$navigation_runtime_release()V

    return-void

    :cond_a
    :goto_6
    invoke-virtual {v0}, Landroidx/navigation/internal/NavControllerImpl;->dispatchOnDestinationChanged$navigation_runtime_release()Z

    return-void
.end method

.method public final navigate$navigation_runtime_release(Ljava/lang/Object;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V
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

    .line 368
    invoke-virtual {p0, p1}, Landroidx/navigation/internal/NavControllerImpl;->generateRouteFilled$navigation_runtime_release(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Landroidx/navigation/internal/NavControllerImpl;->navigate$navigation_runtime_release(Ljava/lang/String;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    return-void
.end method

.method public final navigate$navigation_runtime_release(Ljava/lang/Object;Lnl3;)V
    .locals 6
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

    .line 367
    invoke-static {p2}, Landroidx/navigation/NavOptionsBuilderKt;->navOptions(Lnl3;)Landroidx/navigation/NavOptions;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Landroidx/navigation/internal/NavControllerImpl;->navigate$navigation_runtime_release$default(Landroidx/navigation/internal/NavControllerImpl;Ljava/lang/Object;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;ILjava/lang/Object;)V

    return-void
.end method

.method public final navigate$navigation_runtime_release(Ljava/lang/String;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 349
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_2

    .line 350
    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->getTopGraph$navigation_runtime_release()Landroidx/navigation/NavGraph;

    move-result-object v0

    const/4 v1, 0x1

    .line 351
    invoke-virtual {v0, p1, v1, v1, v0}, Landroidx/navigation/NavGraph;->matchRouteComprehensive(Ljava/lang/String;ZZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 352
    invoke-virtual {v0}, Landroidx/navigation/NavDestination$DeepLinkMatch;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object p1

    .line 353
    invoke-virtual {v0}, Landroidx/navigation/NavDestination$DeepLinkMatch;->getMatchingArgs()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/navigation/NavDestination;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 354
    new-array v1, v1, [Lb36;

    .line 355
    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lb36;

    invoke-static {v1}, Landroidx/core/os/BundleKt;->bundleOf([Lb36;)Landroid/os/Bundle;

    move-result-object v1

    .line 356
    invoke-static {v1}, Landroidx/savedstate/SavedStateWriter;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 357
    :cond_0
    invoke-virtual {v0}, Landroidx/navigation/NavDestination$DeepLinkMatch;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    .line 358
    sget-object v2, Landroidx/navigation/NavDeepLinkRequest$Builder;->Companion:Landroidx/navigation/NavDeepLinkRequest$Builder$Companion;

    sget-object v3, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getRoute()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroidx/navigation/NavDestination$Companion;->createRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/navigation/NavUriKt;->NavUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/navigation/NavDeepLinkRequest$Builder$Companion;->fromUri(Landroid/net/Uri;)Landroidx/navigation/NavDeepLinkRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/navigation/NavDeepLinkRequest$Builder;->build()Landroidx/navigation/NavDeepLinkRequest;

    move-result-object p1

    .line 359
    iget-object v2, p0, Landroidx/navigation/internal/NavControllerImpl;->navController:Landroidx/navigation/NavController;

    invoke-virtual {v2, p1, v1}, Landroidx/navigation/NavController;->writeIntent$navigation_runtime_release(Landroidx/navigation/NavDeepLinkRequest;Landroid/os/Bundle;)V

    .line 360
    invoke-virtual {p0, v0, v1, p2, p3}, Landroidx/navigation/internal/NavControllerImpl;->navigate$navigation_runtime_release(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    return-void

    .line 361
    :cond_1
    const-string p2, "Navigation destination that matches route "

    const-string p3, " cannot be found in the navigation graph "

    .line 362
    invoke-static {p2, p1, p3}, Ln7;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 363
    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    .line 364
    invoke-static {p0, p1}, Lhm;->f(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    return-void

    .line 365
    :cond_2
    const-string p2, ". Navigation graph has not been set for NavController "

    const/16 p3, 0x2e

    .line 366
    const-string v0, "Cannot navigate to "

    invoke-static {p3, v0, p1, p2, p0}, Ldg;->d(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final navigate$navigation_runtime_release(Ljava/lang/String;Lnl3;)V
    .locals 6
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

    .line 348
    invoke-static {p2}, Landroidx/navigation/NavOptionsBuilderKt;->navOptions(Lnl3;)Landroidx/navigation/NavOptions;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Landroidx/navigation/internal/NavControllerImpl;->navigate$navigation_runtime_release$default(Landroidx/navigation/internal/NavControllerImpl;Ljava/lang/String;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;ILjava/lang/Object;)V

    return-void
.end method

.method public final navigateInternal$navigation_runtime_release(Landroidx/navigation/Navigator;Ljava/util/List;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/NavDestination;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/navigation/NavOptions;",
            "Landroidx/navigation/Navigator$Extras;",
            "Lnl3<",
            "-",
            "Landroidx/navigation/NavBackStackEntry;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p5, p0, Landroidx/navigation/internal/NavControllerImpl;->addToBackStackHandler:Lnl3;

    invoke-virtual {p1, p2, p3, p4}, Landroidx/navigation/Navigator;->navigate(Ljava/util/List;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->addToBackStackHandler:Lnl3;

    return-void
.end method

.method public final onGraphCreated$navigation_runtime_release(Landroid/os/Bundle;)V
    .locals 9

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->navigatorStateToRestore:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroidx/savedstate/SavedStateReader;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android-support-nav:controller:navigatorState:names"

    invoke-static {v0, v1}, Landroidx/savedstate/SavedStateReader;->contains-impl(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0, v1}, Landroidx/savedstate/SavedStateReader;->getStringList-impl(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Landroidx/navigation/internal/NavControllerImpl;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    invoke-virtual {v3, v2}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v3

    invoke-static {v0, v2}, Landroidx/savedstate/SavedStateReader;->contains-impl(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v0, v2}, Landroidx/savedstate/SavedStateReader;->getSavedState-impl(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/navigation/Navigator;->onRestoreState(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->backStackToRestore:[Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_5

    aget-object v4, v0, v3

    new-instance v5, Landroidx/navigation/NavBackStackEntryState;

    invoke-direct {v5, v4}, Landroidx/navigation/NavBackStackEntryState;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntryState;->getDestinationId()I

    move-result v4

    const/4 v6, 0x2

    invoke-static {p0, v4, v1, v6, v1}, Landroidx/navigation/internal/NavControllerImpl;->findDestination$navigation_runtime_release$default(Landroidx/navigation/internal/NavControllerImpl;ILandroidx/navigation/NavDestination;ILjava/lang/Object;)Landroidx/navigation/NavDestination;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->getNavContext()Landroidx/navigation/internal/NavContext;

    move-result-object v6

    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->getHostLifecycleState$navigation_runtime_release()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v7

    iget-object v8, p0, Landroidx/navigation/internal/NavControllerImpl;->viewModel:Landroidx/navigation/NavControllerViewModel;

    invoke-virtual {v5, v6, v4, v7, v8}, Landroidx/navigation/NavBackStackEntryState;->instantiate(Landroidx/navigation/internal/NavContext;Landroidx/navigation/NavDestination;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavControllerViewModel;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v5

    iget-object v6, p0, Landroidx/navigation/internal/NavControllerImpl;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    invoke-virtual {v4}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v4

    iget-object v6, p0, Landroidx/navigation/internal/NavControllerImpl;->navigatorState:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_2

    iget-object v7, p0, Landroidx/navigation/internal/NavControllerImpl;->navController:Landroidx/navigation/NavController;

    invoke-virtual {v7, v4}, Landroidx/navigation/NavController;->createNavControllerNavigatorState$navigation_runtime_release(Landroidx/navigation/Navigator;)Landroidx/navigation/NavController$NavControllerNavigatorState;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    check-cast v7, Landroidx/navigation/NavController$NavControllerNavigatorState;

    iget-object v4, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-virtual {v4, v5}, Lfr;->addLast(Ljava/lang/Object;)V

    invoke-virtual {v7, v5}, Landroidx/navigation/NavController$NavControllerNavigatorState;->addInternal(Landroidx/navigation/NavBackStackEntry;)V

    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroidx/navigation/NavDestination;->getId()I

    move-result v4

    invoke-virtual {p0, v4}, Landroidx/navigation/internal/NavControllerImpl;->getBackStackEntry$navigation_runtime_release(I)Landroidx/navigation/NavBackStackEntry;

    move-result-object v4

    invoke-virtual {p0, v5, v4}, Landroidx/navigation/internal/NavControllerImpl;->linkChildToParent$navigation_runtime_release(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavBackStackEntry;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    sget-object p1, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->getNavContext()Landroidx/navigation/internal/NavContext;

    move-result-object v0

    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntryState;->getDestinationId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroidx/navigation/NavDestination$Companion;->getDisplayName(Landroidx/navigation/internal/NavContext;I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Restoring the Navigation back stack failed: destination "

    const-string v1, " cannot be found from the current destination "

    invoke-static {v0, p1, v1}, Ln7;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->getCurrentDestination$navigation_runtime_release()Landroidx/navigation/NavDestination;

    move-result-object p0

    invoke-static {p0, p1}, Leq;->e(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    return-void

    :cond_5
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->updateOnBackPressedCallbackEnabledCallback:Lll3;

    invoke-interface {v0}, Lll3;->invoke()Ljava/lang/Object;

    iput-object v1, p0, Landroidx/navigation/internal/NavControllerImpl;->backStackToRestore:[Landroid/os/Bundle;

    :cond_6
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    invoke-virtual {v0}, Landroidx/navigation/NavigatorProvider;->getNavigators()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroidx/navigation/Navigator;

    invoke-virtual {v4}, Landroidx/navigation/Navigator;->isAttached()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/Navigator;

    iget-object v3, p0, Landroidx/navigation/internal/NavControllerImpl;->navigatorState:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_9

    iget-object v4, p0, Landroidx/navigation/internal/NavControllerImpl;->navController:Landroidx/navigation/NavController;

    invoke-virtual {v4, v2}, Landroidx/navigation/NavController;->createNavControllerNavigatorState$navigation_runtime_release(Landroidx/navigation/Navigator;)Landroidx/navigation/NavController$NavControllerNavigatorState;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    check-cast v4, Landroidx/navigation/NavController$NavControllerNavigatorState;

    invoke-virtual {v2, v4}, Landroidx/navigation/Navigator;->onAttach(Landroidx/navigation/NavigatorState;)V

    goto :goto_3

    :cond_a
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-virtual {v0}, Lfr;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->navController:Landroidx/navigation/NavController;

    invoke-virtual {v0}, Landroidx/navigation/NavController;->checkDeepLinkHandled$navigation_runtime_release()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0, p1, v1, v1}, Landroidx/navigation/internal/NavControllerImpl;->navigate$navigation_runtime_release(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    :cond_b
    return-void

    :cond_c
    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->dispatchOnDestinationChanged$navigation_runtime_release()Z

    return-void
.end method

.method public final pop$navigation_runtime_release(Landroidx/navigation/NavController$NavControllerNavigatorState;Landroidx/navigation/NavBackStackEntry;ZLll3;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavController$NavControllerNavigatorState;",
            "Landroidx/navigation/NavBackStackEntry;",
            "Z",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    invoke-virtual {p2}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Landroidx/navigation/internal/NavControllerImpl;->entrySavedState:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroidx/navigation/NavController$NavControllerNavigatorState;->getNavigator()Landroidx/navigation/Navigator;

    move-result-object p1

    invoke-static {v0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->popFromBackStackHandler:Lnl3;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p4}, Lll3;->invoke()Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Lq;

    const/4 p3, 0x3

    invoke-direct {p1, p4, p3}, Lq;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p2, p1}, Landroidx/navigation/internal/NavControllerImpl;->popBackStackFromNavigator$navigation_runtime_release(Landroidx/navigation/NavBackStackEntry;Lll3;)V

    return-void

    :cond_1
    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->navigatorState:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Landroidx/navigation/NavController$NavControllerNavigatorState;

    invoke-virtual {p0, p2, p3}, Landroidx/navigation/NavController$NavControllerNavigatorState;->pop(Landroidx/navigation/NavBackStackEntry;Z)V

    return-void
.end method

.method public final popBackStack$navigation_runtime_release()Z
    .locals 2

    .line 49
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-virtual {v0}, Lfr;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 50
    :cond_0
    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->getCurrentDestination$navigation_runtime_release()Landroidx/navigation/NavDestination;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/navigation/internal/NavControllerImpl;->popBackStack$navigation_runtime_release(IZ)Z

    move-result p0

    return p0
.end method

.method public final popBackStack$navigation_runtime_release(IZ)Z
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0, p1, p2, v0}, Landroidx/navigation/internal/NavControllerImpl;->popBackStack$navigation_runtime_release(IZZ)Z

    move-result p0

    return p0
.end method

.method public final popBackStack$navigation_runtime_release(IZZ)Z
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2, p3}, Landroidx/navigation/internal/NavControllerImpl;->popBackStackInternal$navigation_runtime_release(IZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->dispatchOnDestinationChanged$navigation_runtime_release()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final popBackStack$navigation_runtime_release(Ljava/lang/Object;ZZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;ZZ)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    invoke-virtual {p0, p1, p2, p3}, Landroidx/navigation/internal/NavControllerImpl;->popBackStackInternal$navigation_runtime_release(Ljava/lang/Object;ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->dispatchOnDestinationChanged$navigation_runtime_release()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final popBackStack$navigation_runtime_release(Ljava/lang/String;ZZ)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    invoke-virtual {p0, p1, p2, p3}, Landroidx/navigation/internal/NavControllerImpl;->popBackStackInternal$navigation_runtime_release(Ljava/lang/String;ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->dispatchOnDestinationChanged$navigation_runtime_release()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final popBackStack$navigation_runtime_release(Lne4;ZZ)Z
    .locals 8
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

    invoke-static {p1}, Liq7;->b(Lne4;)Ldf4;

    move-result-object v0

    invoke-static {v0}, Landroidx/navigation/serialization/RouteSerializerKt;->generateHashCode(Ldf4;)I

    move-result v3

    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->getGraph$navigation_runtime_release()Landroidx/navigation/NavGraph;

    move-result-object v2

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Landroidx/navigation/internal/NavControllerImpl;->findDestinationComprehensive$navigation_runtime_release$default(Landroidx/navigation/internal/NavControllerImpl;Landroidx/navigation/NavDestination;IZLandroidx/navigation/NavDestination;ILjava/lang/Object;)Landroidx/navigation/NavDestination;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v1, v3, p2, p3}, Landroidx/navigation/internal/NavControllerImpl;->popBackStack$navigation_runtime_release(IZZ)Z

    move-result p0

    return p0

    :cond_0
    invoke-interface {p1}, Lne4;->f()Ljava/lang/String;

    move-result-object p0

    const-string p1, " cannot be found in navigation graph "

    invoke-virtual {v1}, Landroidx/navigation/internal/NavControllerImpl;->getGraph$navigation_runtime_release()Landroidx/navigation/NavGraph;

    move-result-object p2

    const-string p3, "Destination with route "

    invoke-static {p3, p0, p1, p2}, Lkg;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final popBackStackFromNavigator$navigation_runtime_release(Landroidx/navigation/NavBackStackEntry;Lll3;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavBackStackEntry;",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-virtual {v0, p1}, Lfr;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    sget-object p0, Landroidx/navigation/internal/Log;->Companion:Landroidx/navigation/internal/Log$Companion;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Ignoring pop of "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " as it was not found on the current back stack"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NavController"

    invoke-virtual {p0, p2, p1}, Landroidx/navigation/internal/Log$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-virtual {v2}, Ld1;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-virtual {v2, v0}, Lfr;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroidx/navigation/internal/NavControllerImpl;->popBackStackInternal$navigation_runtime_release(IZZ)Z

    :cond_1
    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v3 .. v8}, Landroidx/navigation/internal/NavControllerImpl;->popEntryFromBackStack$navigation_runtime_release$default(Landroidx/navigation/internal/NavControllerImpl;Landroidx/navigation/NavBackStackEntry;ZLfr;ILjava/lang/Object;)V

    invoke-interface {p2}, Lll3;->invoke()Ljava/lang/Object;

    iget-object p0, v3, Landroidx/navigation/internal/NavControllerImpl;->updateOnBackPressedCallbackEnabledCallback:Lll3;

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    invoke-virtual {v3}, Landroidx/navigation/internal/NavControllerImpl;->dispatchOnDestinationChanged$navigation_runtime_release()Z

    return-void
.end method

.method public final popBackStackInternal$navigation_runtime_release(Landroidx/navigation/Navigator;Landroidx/navigation/NavBackStackEntry;ZLnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/NavDestination;",
            ">;",
            "Landroidx/navigation/NavBackStackEntry;",
            "Z",
            "Lnl3<",
            "-",
            "Landroidx/navigation/NavBackStackEntry;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    iput-object p4, p0, Landroidx/navigation/internal/NavControllerImpl;->popFromBackStackHandler:Lnl3;

    .line 138
    invoke-virtual {p1, p2, p3}, Landroidx/navigation/Navigator;->popBackStack(Landroidx/navigation/NavBackStackEntry;Z)V

    const/4 p1, 0x0

    .line 139
    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->popFromBackStackHandler:Lnl3;

    return-void
.end method

.method public final popBackStackInternal$navigation_runtime_release(IZZ)Z
    .locals 6

    .line 121
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-virtual {v0}, Lfr;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 122
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    iget-object v2, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-static {v2}, Lqn1;->j0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 124
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 125
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v3}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v3

    .line 126
    iget-object v4, p0, Landroidx/navigation/internal/NavControllerImpl;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    invoke-virtual {v3}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v4

    if-nez p2, :cond_2

    .line 127
    invoke-virtual {v3}, Landroidx/navigation/NavDestination;->getId()I

    move-result v5

    if-eq v5, p1, :cond_3

    .line 128
    :cond_2
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_3
    invoke-virtual {v3}, Landroidx/navigation/NavDestination;->getId()I

    move-result v4

    if-ne v4, p1, :cond_1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_5

    .line 130
    sget-object p2, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->getNavContext()Landroidx/navigation/internal/NavContext;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Landroidx/navigation/NavDestination$Companion;->getDisplayName(Landroidx/navigation/internal/NavContext;I)Ljava/lang/String;

    move-result-object p0

    .line 131
    sget-object p1, Landroidx/navigation/internal/Log;->Companion:Landroidx/navigation/internal/Log$Companion;

    .line 132
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Ignoring popBackStack to destination "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " as it was not found on the current back stack"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 133
    const-string p2, "NavController"

    invoke-virtual {p1, p2, p0}, Landroidx/navigation/internal/Log$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 134
    :cond_5
    invoke-virtual {p0, v0, v3, p2, p3}, Landroidx/navigation/internal/NavControllerImpl;->executePopOperations$navigation_runtime_release(Ljava/util/List;Landroidx/navigation/NavDestination;ZZ)Z

    move-result p0

    return p0
.end method

.method public final popBackStackInternal$navigation_runtime_release(Ljava/lang/Object;ZZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;ZZ)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    invoke-virtual {p0, p1}, Landroidx/navigation/internal/NavControllerImpl;->generateRouteFilled$navigation_runtime_release(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-virtual {p0, p1, p2, p3}, Landroidx/navigation/internal/NavControllerImpl;->popBackStackInternal$navigation_runtime_release(Ljava/lang/String;ZZ)Z

    move-result p0

    return p0
.end method

.method public final popBackStackInternal$navigation_runtime_release(Ljava/lang/String;ZZ)Z
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-virtual {v0}, Lfr;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v6

    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntry;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Landroidx/navigation/NavDestination;->hasRoute(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v6

    if-nez p2, :cond_2

    if-nez v6, :cond_3

    :cond_2
    iget-object v7, p0, Landroidx/navigation/internal/NavControllerImpl;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v6, :cond_1

    goto :goto_0

    :cond_4
    move-object v3, v4

    :goto_0
    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v4

    :cond_5
    if-nez v4, :cond_6

    sget-object p0, Landroidx/navigation/internal/Log;->Companion:Landroidx/navigation/internal/Log$Companion;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Ignoring popBackStack to route "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as it was not found on the current back stack"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NavController"

    invoke-virtual {p0, p2, p1}, Landroidx/navigation/internal/Log$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_6
    invoke-virtual {p0, v0, v4, p2, p3}, Landroidx/navigation/internal/NavControllerImpl;->executePopOperations$navigation_runtime_release(Ljava/util/List;Landroidx/navigation/NavDestination;ZZ)Z

    move-result p0

    return p0
.end method

.method public final popEntryFromBackStack$navigation_runtime_release(Landroidx/navigation/NavBackStackEntry;ZLfr;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavBackStackEntry;",
            "Z",
            "Lfr<",
            "Landroidx/navigation/NavBackStackEntryState;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-virtual {v0}, Lfr;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-static {v0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-static {p1}, Lnn1;->E(Ljava/util/List;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->getNavigatorProvider$navigation_runtime_release()Landroidx/navigation/NavigatorProvider;

    move-result-object p1

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object p1

    iget-object v1, p0, Landroidx/navigation/internal/NavControllerImpl;->navigatorState:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/navigation/NavController$NavControllerNavigatorState;

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/navigation/NavigatorState;->getTransitionsInProgress()Ly68;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ly68;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->parentToChildCount:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p1

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v2}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz p2, :cond_2

    invoke-virtual {v0, v2}, Landroidx/navigation/NavBackStackEntry;->setMaxLifecycle(Landroidx/lifecycle/Lifecycle$State;)V

    new-instance p1, Landroidx/navigation/NavBackStackEntryState;

    invoke-direct {p1, v0}, Landroidx/navigation/NavBackStackEntryState;-><init>(Landroidx/navigation/NavBackStackEntry;)V

    invoke-virtual {p3, p1}, Lfr;->addFirst(Ljava/lang/Object;)V

    :cond_2
    if-nez v1, :cond_3

    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, p1}, Landroidx/navigation/NavBackStackEntry;->setMaxLifecycle(Landroidx/lifecycle/Lifecycle$State;)V

    invoke-virtual {p0, v0}, Landroidx/navigation/internal/NavControllerImpl;->unlinkChildFromParent$navigation_runtime_release(Landroidx/navigation/NavBackStackEntry;)Landroidx/navigation/NavBackStackEntry;

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v2}, Landroidx/navigation/NavBackStackEntry;->setMaxLifecycle(Landroidx/lifecycle/Lifecycle$State;)V

    :cond_4
    :goto_1
    if-nez p2, :cond_5

    if-nez v1, :cond_5

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->viewModel:Landroidx/navigation/NavControllerViewModel;

    if-eqz p0, :cond_5

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/navigation/NavControllerViewModel;->clear(Ljava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Attempted to pop "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object p1

    const-string p2, ", which is not the top of the back stack ("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final populateVisibleEntries$navigation_runtime_release()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/navigation/internal/NavControllerImpl;->navigatorState:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavController$NavControllerNavigatorState;

    invoke-virtual {v2}, Landroidx/navigation/NavigatorState;->getTransitionsInProgress()Ly68;

    move-result-object v2

    invoke-interface {v2}, Ly68;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntry;->getMaxLifecycle()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v5

    sget-object v6, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v5, v6}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {v3, v0}, Lnn1;->s(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Landroidx/navigation/NavBackStackEntry;->getMaxLifecycle()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v3

    sget-object v4, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-static {v1, v0}, Lnn1;->s(Ljava/lang/Iterable;Ljava/util/Collection;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v2}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v2

    instance-of v2, v2, Landroidx/navigation/NavGraph;

    if-nez v2, :cond_5

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    return-object p0
.end method

.method public final prepareForTransition$navigation_runtime_release(Landroidx/navigation/NavBackStackEntry;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-virtual {p0, p1}, Lfr;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, p0}, Landroidx/navigation/NavBackStackEntry;->setMaxLifecycle(Landroidx/lifecycle/Lifecycle$State;)V

    return-void

    :cond_0
    const-string p0, "Cannot transition entry that is not in the back stack"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final push$navigation_runtime_release(Landroidx/navigation/NavController$NavControllerNavigatorState;Landroidx/navigation/NavBackStackEntry;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    invoke-virtual {p2}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/navigation/NavController$NavControllerNavigatorState;->getNavigator()Landroidx/navigation/Navigator;

    move-result-object v1

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->addToBackStackHandler:Lnl3;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p2}, Landroidx/navigation/NavController$NavControllerNavigatorState;->addInternal(Landroidx/navigation/NavBackStackEntry;)V

    return-void

    :cond_0
    sget-object p0, Landroidx/navigation/internal/Log;->Companion:Landroidx/navigation/internal/Log$Companion;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Ignoring add of destination "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " outside of the call to navigate(). "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NavController"

    invoke-virtual {p0, p2, p1}, Landroidx/navigation/internal/Log$Companion;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->navigatorState:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    check-cast p0, Landroidx/navigation/NavController$NavControllerNavigatorState;

    invoke-virtual {p0, p2}, Landroidx/navigation/NavController$NavControllerNavigatorState;->push(Landroidx/navigation/NavBackStackEntry;)V

    return-void

    :cond_2
    invoke-virtual {p2}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object p0

    const-string p1, " should already be created"

    const-string p2, "NavigatorBackStack for "

    invoke-static {p0, p2, p1}, Lwg;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final removeOnDestinationChangedListener$navigation_runtime_release(Landroidx/navigation/NavController$OnDestinationChangedListener;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->onDestinationChangedListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final restoreState$navigation_runtime_release(Landroid/os/Bundle;)V
    .locals 11

    if-nez p1, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-static {p1}, Landroidx/savedstate/SavedStateReader;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "android-support-nav:controller:navigatorState"

    invoke-static {p1, v0}, Landroidx/savedstate/SavedStateReader;->contains-impl(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {p1, v0}, Landroidx/savedstate/SavedStateReader;->getSavedState-impl(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    iput-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->navigatorStateToRestore:Landroid/os/Bundle;

    const-string v0, "android-support-nav:controller:backStack"

    invoke-static {p1, v0}, Landroidx/savedstate/SavedStateReader;->contains-impl(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-static {p1, v0}, Landroidx/savedstate/SavedStateReader;->getSavedStateList-impl(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    new-array v1, v3, [Landroid/os/Bundle;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Bundle;

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    iput-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->backStackToRestore:[Landroid/os/Bundle;

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->backStackStates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string v0, "android-support-nav:controller:backStackDestIds"

    invoke-static {p1, v0}, Landroidx/savedstate/SavedStateReader;->contains-impl(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "android-support-nav:controller:backStackIds"

    invoke-static {p1, v1}, Landroidx/savedstate/SavedStateReader;->contains-impl(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {p1, v0}, Landroidx/savedstate/SavedStateReader;->getIntArray-impl(Landroid/os/Bundle;Ljava/lang/String;)[I

    move-result-object v0

    invoke-static {p1, v1}, Landroidx/savedstate/SavedStateReader;->getStringList-impl(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    array-length v4, v0

    move v5, v3

    :goto_2
    if-ge v3, v4, :cond_4

    aget v6, v0, v3

    add-int/lit8 v7, v5, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v8, p0, Landroidx/navigation/internal/NavControllerImpl;->backStackMap:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    const-string v10, ""

    invoke-static {v9, v10}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, v2

    :goto_3
    invoke-interface {v8, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    move v5, v7

    goto :goto_2

    :cond_4
    const-string v0, "android-support-nav:controller:backStackStates"

    invoke-static {p1, v0}, Landroidx/savedstate/SavedStateReader;->contains-impl(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p1, v0}, Landroidx/savedstate/SavedStateReader;->getStringList-impl(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "android-support-nav:controller:backStackStates:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroidx/savedstate/SavedStateReader;->contains-impl(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroidx/savedstate/SavedStateReader;->getSavedStateList-impl(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Landroidx/navigation/internal/NavControllerImpl;->backStackStates:Ljava/util/Map;

    new-instance v4, Lfr;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Lfr;-><init>(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    new-instance v6, Landroidx/navigation/NavBackStackEntryState;

    invoke-direct {v6, v5}, Landroidx/navigation/NavBackStackEntryState;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v4, v6}, Lfr;->addLast(Ljava/lang/Object;)V

    goto :goto_5

    :cond_6
    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_7
    :goto_6
    return-void
.end method

.method public final saveState$navigation_runtime_release()Landroid/os/Bundle;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    new-array v2, v1, [Lb36;

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lb36;

    invoke-static {v2}, Landroidx/core/os/BundleKt;->bundleOf([Lb36;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Landroidx/savedstate/SavedStateWriter;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object v3, p0, Landroidx/navigation/internal/NavControllerImpl;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    invoke-virtual {v3}, Landroidx/navigation/NavigatorProvider;->getNavigators()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/navigation/Navigator;

    invoke-virtual {v4}, Landroidx/navigation/Navigator;->onSaveState()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Landroidx/savedstate/SavedStateWriter;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v6, v5, v4}, Landroidx/savedstate/SavedStateWriter;->putSavedState-impl(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    new-array v3, v1, [Lb36;

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lb36;

    invoke-static {v3}, Landroidx/core/os/BundleKt;->bundleOf([Lb36;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Landroidx/savedstate/SavedStateWriter;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v2}, Landroidx/savedstate/SavedStateWriter;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "android-support-nav:controller:navigatorState:names"

    invoke-static {v5, v6, v0}, Landroidx/savedstate/SavedStateWriter;->putStringList-impl(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    const-string v0, "android-support-nav:controller:navigatorState"

    invoke-static {v4, v0, v2}, Landroidx/savedstate/SavedStateWriter;->putSavedState-impl(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    if-nez v3, :cond_3

    new-array v0, v1, [Lb36;

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb36;

    invoke-static {v0}, Landroidx/core/os/BundleKt;->bundleOf([Lb36;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroidx/savedstate/SavedStateWriter;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-object v3, v0

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    new-instance v5, Landroidx/navigation/NavBackStackEntryState;

    invoke-direct {v5, v4}, Landroidx/navigation/NavBackStackEntryState;-><init>(Landroidx/navigation/NavBackStackEntry;)V

    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntryState;->writeToState()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-static {v3}, Landroidx/savedstate/SavedStateWriter;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "android-support-nav:controller:backStack"

    invoke-static {v2, v4, v0}, Landroidx/savedstate/SavedStateWriter;->putSavedStateList-impl(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    :cond_5
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->backStackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    if-nez v3, :cond_6

    new-array v0, v1, [Lb36;

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb36;

    invoke-static {v0}, Landroidx/core/os/BundleKt;->bundleOf([Lb36;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroidx/savedstate/SavedStateWriter;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-object v3, v0

    :cond_6
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->backStackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Landroidx/navigation/internal/NavControllerImpl;->backStackMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v1

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    add-int/lit8 v8, v5, 0x1

    aput v7, v0, v5

    if-nez v6, :cond_7

    const-string v6, ""

    :cond_7
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v8

    goto :goto_3

    :cond_8
    invoke-static {v3}, Landroidx/savedstate/SavedStateWriter;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "android-support-nav:controller:backStackDestIds"

    invoke-static {v4, v5, v0}, Landroidx/savedstate/SavedStateWriter;->putIntArray-impl(Landroid/os/Bundle;Ljava/lang/String;[I)V

    const-string v0, "android-support-nav:controller:backStackIds"

    invoke-static {v4, v0, v2}, Landroidx/savedstate/SavedStateWriter;->putStringList-impl(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    :cond_9
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->backStackStates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    if-nez v3, :cond_a

    new-array v0, v1, [Lb36;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb36;

    invoke-static {v0}, Landroidx/core/os/BundleKt;->bundleOf([Lb36;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Landroidx/savedstate/SavedStateWriter;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->backStackStates:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfr;

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/navigation/NavBackStackEntryState;

    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntryState;->writeToState()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    invoke-static {v3}, Landroidx/savedstate/SavedStateWriter;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "android-support-nav:controller:backStackStates:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroidx/savedstate/SavedStateWriter;->putSavedStateList-impl(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_4

    :cond_c
    invoke-static {v3}, Landroidx/savedstate/SavedStateWriter;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "android-support-nav:controller:backStackStates"

    invoke-static {p0, v1, v0}, Landroidx/savedstate/SavedStateWriter;->putStringList-impl(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    :cond_d
    return-object v3
.end method

.method public final setAddToBackStackHandler$navigation_runtime_release(Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/navigation/NavBackStackEntry;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->addToBackStackHandler:Lnl3;

    return-void
.end method

.method public final setBackStackToRestore$navigation_runtime_release([Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->backStackToRestore:[Landroid/os/Bundle;

    return-void
.end method

.method public final setGraph$navigation_runtime_release(Landroidx/navigation/NavGraph;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 244
    invoke-virtual {p0, p1, v0}, Landroidx/navigation/internal/NavControllerImpl;->setGraph$navigation_runtime_release(Landroidx/navigation/NavGraph;Landroid/os/Bundle;)V

    return-void
.end method

.method public final setGraph$navigation_runtime_release(Landroidx/navigation/NavGraph;Landroid/os/Bundle;)V
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-virtual {v0}, Lfr;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->getHostLifecycleState$navigation_runtime_release()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "You cannot set a new graph on a NavController with entries on the back stack after the NavController has been destroyed. Please ensure that your NavHost has the same lifetime as your NavController."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/navigation/internal/NavControllerImpl;->backStackMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/navigation/internal/NavControllerImpl;->clearBackStackInternal$navigation_runtime_release(I)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v4

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Landroidx/navigation/internal/NavControllerImpl;->popBackStackInternal$navigation_runtime_release$default(Landroidx/navigation/internal/NavControllerImpl;IZZILjava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move-object v3, p0

    :goto_2
    iput-object p1, v3, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    invoke-virtual {v3, p2}, Landroidx/navigation/internal/NavControllerImpl;->onGraphCreated$navigation_runtime_release(Landroid/os/Bundle;)V

    return-void

    :cond_4
    move-object v3, p0

    invoke-virtual {p1}, Landroidx/navigation/NavGraph;->getNodes()Landroidx/collection/SparseArrayCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result p0

    const/4 p2, 0x0

    :goto_3
    if-ge p2, p0, :cond_5

    invoke-virtual {p1}, Landroidx/navigation/NavGraph;->getNodes()Landroidx/collection/SparseArrayCompat;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavDestination;

    iget-object v1, v3, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroidx/navigation/NavGraph;->getNodes()Landroidx/collection/SparseArrayCompat;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v1

    iget-object v2, v3, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroidx/navigation/NavGraph;->getNodes()Landroidx/collection/SparseArrayCompat;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroidx/collection/SparseArrayCompat;->replace(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_5
    iget-object p0, v3, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/navigation/NavBackStackEntry;

    sget-object v0, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    invoke-virtual {p2}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/navigation/NavDestination$Companion;->getHierarchy(Landroidx/navigation/NavDestination;)Lzo7;

    move-result-object v0

    invoke-static {v0}, Ljp7;->q(Lzo7;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lz67;

    invoke-direct {v1, v0}, Lz67;-><init>(Ljava/util/List;)V

    iget-object v0, v3, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavDestination;

    iget-object v4, v3, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v2, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_5

    :cond_7
    instance-of v4, v0, Landroidx/navigation/NavGraph;

    if-eqz v4, :cond_6

    check-cast v0, Landroidx/navigation/NavGraph;

    invoke-virtual {v2}, Landroidx/navigation/NavDestination;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/NavDestination;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_5

    :cond_8
    invoke-virtual {p2, v0}, Landroidx/navigation/NavBackStackEntry;->setDestination(Landroidx/navigation/NavDestination;)V

    goto :goto_4

    :cond_9
    return-void
.end method

.method public final setHostLifecycleState$navigation_runtime_release(Landroidx/lifecycle/Lifecycle$State;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->hostLifecycleState:Landroidx/lifecycle/Lifecycle$State;

    return-void
.end method

.method public final setLifecycleOwner$navigation_runtime_release(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/navigation/internal/NavControllerImpl;->lifecycleObserver:Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_1
    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->lifecycleObserver:Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public final setNavigatorProvider$navigation_runtime_release(Landroidx/navigation/NavigatorProvider;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-virtual {v0}, Lfr;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    return-void

    :cond_0
    const-string p0, "NavigatorProvider must be set before setGraph call"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final setNavigatorStateToRestore$navigation_runtime_release(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->navigatorStateToRestore:Landroid/os/Bundle;

    return-void
.end method

.method public final setPopFromBackStackHandler$navigation_runtime_release(Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/navigation/NavBackStackEntry;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->popFromBackStackHandler:Lnl3;

    return-void
.end method

.method public final setUpdateOnBackPressedCallbackEnabledCallback(Lll3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->updateOnBackPressedCallbackEnabledCallback:Lll3;

    return-void
.end method

.method public final setViewModel$navigation_runtime_release(Landroidx/navigation/NavControllerViewModel;)V
    .locals 0

    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->viewModel:Landroidx/navigation/NavControllerViewModel;

    return-void
.end method

.method public final setViewModelStore$navigation_runtime_release(Landroidx/lifecycle/ViewModelStore;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->viewModel:Landroidx/navigation/NavControllerViewModel;

    sget-object v1, Landroidx/navigation/NavControllerViewModel;->Companion:Landroidx/navigation/NavControllerViewModel$Companion;

    invoke-virtual {v1, p1}, Landroidx/navigation/NavControllerViewModel$Companion;->getInstance(Landroidx/lifecycle/ViewModelStore;)Landroidx/navigation/NavControllerViewModel;

    move-result-object v2

    invoke-static {v0, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-virtual {v0}, Lfr;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, p1}, Landroidx/navigation/NavControllerViewModel$Companion;->getInstance(Landroidx/lifecycle/ViewModelStore;)Landroidx/navigation/NavControllerViewModel;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->viewModel:Landroidx/navigation/NavControllerViewModel;

    return-void

    :cond_1
    const-string p0, "ViewModelStore should be set before setGraph call"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final set_graph$navigation_runtime_release(Landroidx/navigation/NavGraph;)V
    .locals 0

    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->_graph:Landroidx/navigation/NavGraph;

    return-void
.end method

.method public final set_navigatorProvider$navigation_runtime_release(Landroidx/navigation/NavigatorProvider;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/navigation/internal/NavControllerImpl;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    return-void
.end method

.method public final unlinkChildFromParent$navigation_runtime_release(Landroidx/navigation/NavBackStackEntry;)Landroidx/navigation/NavBackStackEntry;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->childToParentEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/navigation/NavBackStackEntry;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroidx/navigation/internal/NavControllerImpl;->parentToChildCount:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/internal/AtomicInt;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/navigation/internal/AtomicInt;->decrementAndGet$navigation_runtime_release()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v0

    iget-object v1, p0, Landroidx/navigation/internal/NavControllerImpl;->navigatorState:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavController$NavControllerNavigatorState;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroidx/navigation/NavController$NavControllerNavigatorState;->markTransitionComplete(Landroidx/navigation/NavBackStackEntry;)V

    :cond_3
    iget-object p0, p0, Landroidx/navigation/internal/NavControllerImpl;->parentToChildCount:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_0
    return-object p1
.end method

.method public final updateBackStackLifecycle$navigation_runtime_release()V
    .locals 10

    iget-object v0, p0, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lfr;

    invoke-static {v0}, Lqn1;->v0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-static {v0}, Lqn1;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v1

    filled-new-array {v1}, [Landroidx/navigation/NavDestination;

    move-result-object v2

    invoke-static {v2}, Lu96;->k([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    instance-of v3, v1, Landroidx/navigation/SupportingPane;

    if-eqz v3, :cond_3

    instance-of v1, v1, Landroidx/navigation/FloatingWindow;

    invoke-static {v0}, Lqn1;->j0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lqn1;->O(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v4}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v4

    if-eqz v1, :cond_2

    instance-of v5, v4, Landroidx/navigation/FloatingWindow;

    if-nez v5, :cond_2

    instance-of v5, v4, Landroidx/navigation/NavGraph;

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v5, v4, Landroidx/navigation/SupportingPane;

    if-nez v5, :cond_1

    instance-of v4, v4, Landroidx/navigation/NavGraph;

    if-nez v4, :cond_1

    :cond_3
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Lqn1;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroidx/navigation/FloatingWindow;

    if-eqz v3, :cond_5

    invoke-static {v0}, Lqn1;->j0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v4}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v5, v4, Landroidx/navigation/FloatingWindow;

    if-nez v5, :cond_4

    instance-of v5, v4, Landroidx/navigation/SupportingPane;

    if-nez v5, :cond_4

    instance-of v4, v4, Landroidx/navigation/NavGraph;

    if-nez v4, :cond_4

    :cond_5
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Lqn1;->j0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntry;->getMaxLifecycle()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v6

    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v7

    invoke-static {v2}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/navigation/NavDestination;

    if-eqz v8, :cond_c

    invoke-virtual {v8}, Landroidx/navigation/NavDestination;->getId()I

    move-result v8

    invoke-virtual {v7}, Landroidx/navigation/NavDestination;->getId()I

    move-result v9

    if-ne v8, v9, :cond_c

    sget-object v8, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v6, v8, :cond_a

    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->getNavigatorProvider$navigation_runtime_release()Landroidx/navigation/NavigatorProvider;

    move-result-object v6

    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v6

    iget-object v9, p0, Landroidx/navigation/internal/NavControllerImpl;->navigatorState:Ljava/util/Map;

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/navigation/NavController$NavControllerNavigatorState;

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroidx/navigation/NavigatorState;->getTransitionsInProgress()Ly68;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-interface {v6}, Ly68;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    if-eqz v6, :cond_7

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_2

    :cond_7
    const/4 v6, 0x0

    :goto_2
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v6, v9}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Landroidx/navigation/internal/NavControllerImpl;->parentToChildCount:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/navigation/internal/AtomicInt;

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Landroidx/navigation/internal/AtomicInt;->get$navigation_runtime_release()I

    move-result v6

    if-nez v6, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v3, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_9
    :goto_3
    sget-object v6, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_4
    invoke-static {v1}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/navigation/NavDestination;

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Landroidx/navigation/NavDestination;->getId()I

    move-result v5

    invoke-virtual {v7}, Landroidx/navigation/NavDestination;->getId()I

    move-result v6

    if-ne v5, v6, :cond_b

    invoke-static {v1}, Lnn1;->D(Ljava/util/List;)Ljava/lang/Object;

    :cond_b
    invoke-static {v2}, Lnn1;->D(Ljava/util/List;)Ljava/lang/Object;

    invoke-virtual {v7}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_f

    invoke-virtual {v7}, Landroidx/navigation/NavDestination;->getId()I

    move-result v7

    invoke-static {v1}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/navigation/NavDestination;

    invoke-virtual {v8}, Landroidx/navigation/NavDestination;->getId()I

    move-result v8

    if-ne v7, v8, :cond_f

    invoke-static {v1}, Lnn1;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/navigation/NavDestination;

    sget-object v8, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v6, v8, :cond_d

    sget-object v6, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v5, v6}, Landroidx/navigation/NavBackStackEntry;->setMaxLifecycle(Landroidx/lifecycle/Lifecycle$State;)V

    goto :goto_5

    :cond_d
    sget-object v8, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v6, v8, :cond_e

    invoke-virtual {v3, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    :goto_5
    invoke-virtual {v7}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_f
    sget-object v6, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v5, v6}, Landroidx/navigation/NavBackStackEntry;->setMaxLifecycle(Landroidx/lifecycle/Lifecycle$State;)V

    goto/16 :goto_1

    :cond_10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/Lifecycle$State;

    if-eqz v1, :cond_11

    invoke-virtual {v0, v1}, Landroidx/navigation/NavBackStackEntry;->setMaxLifecycle(Landroidx/lifecycle/Lifecycle$State;)V

    goto :goto_6

    :cond_11
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->updateState()V

    goto :goto_6

    :cond_12
    :goto_7
    return-void
.end method
