.class public final Landroidx/navigation/internal/NavBackStackEntryImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/internal/NavBackStackEntryImpl$SavedStateViewModel;
    }
.end annotation


# instance fields
.field private final context:Landroidx/navigation/internal/NavContext;

.field private final defaultFactory$delegate:Lcl4;

.field private final defaultViewModelProviderFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

.field private destination:Landroidx/navigation/NavDestination;

.field private final entry:Landroidx/navigation/NavBackStackEntry;

.field private hostLifecycleState:Landroidx/lifecycle/Lifecycle$State;

.field private final id:Ljava/lang/String;

.field private final immutableArgs:Landroid/os/Bundle;

.field private final lifecycle:Landroidx/lifecycle/LifecycleRegistry;

.field private maxLifecycle:Landroidx/lifecycle/Lifecycle$State;

.field private final navResultSavedStateFactory$delegate:Lcl4;

.field private final savedState:Landroid/os/Bundle;

.field private savedStateRegistryAttached:Z

.field private final savedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

.field private final viewModelStoreProvider:Landroidx/navigation/NavViewModelStoreProvider;


# direct methods
.method public constructor <init>(Landroidx/navigation/NavBackStackEntry;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->entry:Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getContext$navigation_common_release()Landroidx/navigation/internal/NavContext;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->context:Landroidx/navigation/internal/NavContext;

    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->destination:Landroidx/navigation/NavDestination;

    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getImmutableArgs$navigation_common_release()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->immutableArgs:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getHostLifecycleState$navigation_common_release()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->hostLifecycleState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getViewModelStoreProvider$navigation_common_release()Landroidx/navigation/NavViewModelStoreProvider;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->viewModelStoreProvider:Landroidx/navigation/NavViewModelStoreProvider;

    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->id:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getSavedState$navigation_common_release()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->savedState:Landroid/os/Bundle;

    sget-object v0, Landroidx/savedstate/SavedStateRegistryController;->Companion:Landroidx/savedstate/SavedStateRegistryController$Companion;

    invoke-virtual {v0, p1}, Landroidx/savedstate/SavedStateRegistryController$Companion;->create(Landroidx/savedstate/SavedStateRegistryOwner;)Landroidx/savedstate/SavedStateRegistryController;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->savedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    new-instance v0, Ltt4;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ltt4;-><init>(I)V

    new-instance v2, Lfh8;

    invoke-direct {v2, v0}, Lfh8;-><init>(Lll3;)V

    iput-object v2, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->defaultFactory$delegate:Lcl4;

    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p1}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    iput-object p1, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->maxLifecycle:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0}, Landroidx/navigation/internal/NavBackStackEntryImpl;->getDefaultFactory$navigation_common_release()Landroidx/lifecycle/SavedStateViewModelFactory;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->defaultViewModelProviderFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    new-instance p1, Ler2;

    invoke-direct {p1, v1}, Ler2;-><init>(I)V

    new-instance v0, Lfh8;

    invoke-direct {v0, p1}, Lfh8;-><init>(Lll3;)V

    iput-object v0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->navResultSavedStateFactory$delegate:Lcl4;

    return-void
.end method

.method public static synthetic a(Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/navigation/internal/NavBackStackEntryImpl$SavedStateViewModel;
    .locals 0

    invoke-static {p0}, Landroidx/navigation/internal/NavBackStackEntryImpl;->navResultSavedStateFactory_delegate$lambda$10$lambda$9$lambda$8(Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/navigation/internal/NavBackStackEntryImpl$SavedStateViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 1

    invoke-static {}, Landroidx/navigation/internal/NavBackStackEntryImpl;->navResultSavedStateFactory_delegate$lambda$10()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Landroidx/lifecycle/SavedStateViewModelFactory;
    .locals 1

    invoke-static {}, Landroidx/navigation/internal/NavBackStackEntryImpl;->defaultFactory_delegate$lambda$0()Landroidx/lifecycle/SavedStateViewModelFactory;

    move-result-object v0

    return-object v0
.end method

.method private static final defaultFactory_delegate$lambda$0()Landroidx/lifecycle/SavedStateViewModelFactory;
    .locals 1

    new-instance v0, Landroidx/lifecycle/SavedStateViewModelFactory;

    invoke-direct {v0}, Landroidx/lifecycle/SavedStateViewModelFactory;-><init>()V

    return-object v0
.end method

.method private final getNavResultSavedStateFactory()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->navResultSavedStateFactory$delegate:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/ViewModelProvider$Factory;

    return-object p0
.end method

.method private static final navResultSavedStateFactory_delegate$lambda$10()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 3

    new-instance v0, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;

    invoke-direct {v0}, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;-><init>()V

    new-instance v1, Let0;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Let0;-><init>(I)V

    const-class v2, Landroidx/navigation/internal/NavBackStackEntryImpl$SavedStateViewModel;

    invoke-static {v2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;->addInitializer(Lne4;Lnl3;)V

    invoke-virtual {v0}, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;->build()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    return-object v0
.end method

.method private static final navResultSavedStateFactory_delegate$lambda$10$lambda$9$lambda$8(Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/navigation/internal/NavBackStackEntryImpl$SavedStateViewModel;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/navigation/internal/NavBackStackEntryImpl$SavedStateViewModel;

    invoke-static {p0}, Landroidx/lifecycle/SavedStateHandleSupport;->createSavedStateHandle(Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/navigation/internal/NavBackStackEntryImpl$SavedStateViewModel;-><init>(Landroidx/lifecycle/SavedStateHandle;)V

    return-object v0
.end method


# virtual methods
.method public final getArguments$navigation_common_release()Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->immutableArgs:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lb36;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb36;

    invoke-static {v0}, Landroidx/core/os/BundleKt;->bundleOf([Lb36;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroidx/savedstate/SavedStateWriter;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    iget-object p0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->immutableArgs:Landroid/os/Bundle;

    invoke-static {v1, p0}, Landroidx/savedstate/SavedStateWriter;->putAll-impl(Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final getContext$navigation_common_release()Landroidx/navigation/internal/NavContext;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->context:Landroidx/navigation/internal/NavContext;

    return-object p0
.end method

.method public final getDefaultFactory$navigation_common_release()Landroidx/lifecycle/SavedStateViewModelFactory;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->defaultFactory$delegate:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/SavedStateViewModelFactory;

    return-object p0
.end method

.method public final getDefaultViewModelCreationExtras$navigation_common_release()Landroidx/lifecycle/viewmodel/MutableCreationExtras;
    .locals 3

    new-instance v0, Landroidx/lifecycle/viewmodel/MutableCreationExtras;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Landroidx/lifecycle/viewmodel/MutableCreationExtras;-><init>(Landroidx/lifecycle/viewmodel/CreationExtras;ILjh2;)V

    sget-object v1, Landroidx/lifecycle/SavedStateHandleSupport;->SAVED_STATE_REGISTRY_OWNER_KEY:Landroidx/lifecycle/viewmodel/CreationExtras$Key;

    iget-object v2, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->entry:Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/viewmodel/MutableCreationExtras;->set(Landroidx/lifecycle/viewmodel/CreationExtras$Key;Ljava/lang/Object;)V

    sget-object v1, Landroidx/lifecycle/SavedStateHandleSupport;->VIEW_MODEL_STORE_OWNER_KEY:Landroidx/lifecycle/viewmodel/CreationExtras$Key;

    iget-object v2, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->entry:Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/viewmodel/MutableCreationExtras;->set(Landroidx/lifecycle/viewmodel/CreationExtras$Key;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/navigation/internal/NavBackStackEntryImpl;->getArguments$navigation_common_release()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v1, Landroidx/lifecycle/SavedStateHandleSupport;->DEFAULT_ARGS_KEY:Landroidx/lifecycle/viewmodel/CreationExtras$Key;

    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/viewmodel/MutableCreationExtras;->set(Landroidx/lifecycle/viewmodel/CreationExtras$Key;Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public final getDefaultViewModelProviderFactory$navigation_common_release()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->defaultViewModelProviderFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    return-object p0
.end method

.method public final getDestination$navigation_common_release()Landroidx/navigation/NavDestination;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->destination:Landroidx/navigation/NavDestination;

    return-object p0
.end method

.method public final getEntry()Landroidx/navigation/NavBackStackEntry;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->entry:Landroidx/navigation/NavBackStackEntry;

    return-object p0
.end method

.method public final getHostLifecycleState$navigation_common_release()Landroidx/lifecycle/Lifecycle$State;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->hostLifecycleState:Landroidx/lifecycle/Lifecycle$State;

    return-object p0
.end method

.method public final getId$navigation_common_release()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getImmutableArgs$navigation_common_release()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->immutableArgs:Landroid/os/Bundle;

    return-object p0
.end method

.method public final getLifecycle$navigation_common_release()Landroidx/lifecycle/LifecycleRegistry;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    return-object p0
.end method

.method public final getMaxLifecycle$navigation_common_release()Landroidx/lifecycle/Lifecycle$State;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->maxLifecycle:Landroidx/lifecycle/Lifecycle$State;

    return-object p0
.end method

.method public final getSavedState$navigation_common_release()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->savedState:Landroid/os/Bundle;

    return-object p0
.end method

.method public final getSavedStateHandle$navigation_common_release()Landroidx/lifecycle/SavedStateHandle;
    .locals 9

    iget-boolean v0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->savedStateRegistryAttached:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {v0}, Landroidx/lifecycle/LifecycleRegistry;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v0, v2, :cond_0

    sget-object v3, Landroidx/lifecycle/ViewModelProvider;->Companion:Landroidx/lifecycle/ViewModelProvider$Companion;

    iget-object v4, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->entry:Landroidx/navigation/NavBackStackEntry;

    invoke-direct {p0}, Landroidx/navigation/internal/NavBackStackEntryImpl;->getNavResultSavedStateFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Landroidx/lifecycle/ViewModelProvider$Companion;->create$default(Landroidx/lifecycle/ViewModelProvider$Companion;Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;ILjava/lang/Object;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p0

    const-class v0, Landroidx/navigation/internal/NavBackStackEntryImpl$SavedStateViewModel;

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Lne4;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    check-cast p0, Landroidx/navigation/internal/NavBackStackEntryImpl$SavedStateViewModel;

    invoke-virtual {p0}, Landroidx/navigation/internal/NavBackStackEntryImpl$SavedStateViewModel;->getHandle()Landroidx/lifecycle/SavedStateHandle;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "You cannot access the NavBackStackEntry\'s SavedStateHandle after the NavBackStackEntry is destroyed."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v1

    :cond_1
    const-string p0, "You cannot access the NavBackStackEntry\'s SavedStateHandle until it is added to the NavController\'s back stack (i.e., the Lifecycle of the NavBackStackEntry reaches the CREATED state)."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v1
.end method

.method public final getSavedStateRegistry$navigation_common_release()Landroidx/savedstate/SavedStateRegistry;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->savedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    invoke-virtual {p0}, Landroidx/savedstate/SavedStateRegistryController;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    move-result-object p0

    return-object p0
.end method

.method public final getSavedStateRegistryAttached$navigation_common_release()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->savedStateRegistryAttached:Z

    return p0
.end method

.method public final getSavedStateRegistryController$navigation_common_release()Landroidx/savedstate/SavedStateRegistryController;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->savedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    return-object p0
.end method

.method public final getViewModelStore$navigation_common_release()Landroidx/lifecycle/ViewModelStore;
    .locals 2

    iget-boolean v0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->savedStateRegistryAttached:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {v0}, Landroidx/lifecycle/LifecycleRegistry;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->viewModelStoreProvider:Landroidx/navigation/NavViewModelStoreProvider;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->id:Ljava/lang/String;

    invoke-interface {v0, p0}, Landroidx/navigation/NavViewModelStoreProvider;->getViewModelStore(Ljava/lang/String;)Landroidx/lifecycle/ViewModelStore;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "You must call setViewModelStore() on your NavHostController before accessing the ViewModelStore of a navigation graph."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const-string p0, "You cannot access the NavBackStackEntry\'s ViewModels after the NavBackStackEntry is destroyed."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    const-string p0, "You cannot access the NavBackStackEntry\'s ViewModels until it is added to the NavController\'s back stack (i.e., the Lifecycle of the NavBackStackEntry reaches the CREATED state)."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getViewModelStoreProvider$navigation_common_release()Landroidx/navigation/NavViewModelStoreProvider;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->viewModelStoreProvider:Landroidx/navigation/NavViewModelStoreProvider;

    return-object p0
.end method

.method public final handleLifecycleEvent$navigation_common_release(Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->entry:Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle$Event;->getTargetState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/navigation/NavBackStackEntry;->setHostLifecycleState$navigation_common_release(Landroidx/lifecycle/Lifecycle$State;)V

    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle$Event;->getTargetState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->hostLifecycleState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0}, Landroidx/navigation/internal/NavBackStackEntryImpl;->updateState$navigation_common_release()V

    return-void
.end method

.method public final saveState$navigation_common_release(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->savedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    invoke-virtual {p0, p1}, Landroidx/savedstate/SavedStateRegistryController;->performSave(Landroid/os/Bundle;)V

    return-void
.end method

.method public final setDestination$navigation_common_release(Landroidx/navigation/NavDestination;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->destination:Landroidx/navigation/NavDestination;

    return-void
.end method

.method public final setHostLifecycleState$navigation_common_release(Landroidx/lifecycle/Lifecycle$State;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->hostLifecycleState:Landroidx/lifecycle/Lifecycle$State;

    return-void
.end method

.method public final setMaxLifecycle$navigation_common_release(Landroidx/lifecycle/Lifecycle$State;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->maxLifecycle:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0}, Landroidx/navigation/internal/NavBackStackEntryImpl;->updateState$navigation_common_release()V

    return-void
.end method

.method public final setSavedStateRegistryAttached$navigation_common_release(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->savedStateRegistryAttached:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->entry:Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    invoke-virtual {v1}, Lzk1;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " destination="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->destination:Landroidx/navigation/NavDestination;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateState$navigation_common_release()V
    .locals 3

    iget-boolean v0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->savedStateRegistryAttached:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->savedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    invoke-virtual {v0}, Landroidx/savedstate/SavedStateRegistryController;->performAttach()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->savedStateRegistryAttached:Z

    iget-object v0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->viewModelStoreProvider:Landroidx/navigation/NavViewModelStoreProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->entry:Landroidx/navigation/NavBackStackEntry;

    invoke-static {v0}, Landroidx/lifecycle/SavedStateHandleSupport;->enableSavedStateHandles(Landroidx/savedstate/SavedStateRegistryOwner;)V

    :cond_0
    iget-object v0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->savedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    iget-object v1, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->savedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/savedstate/SavedStateRegistryController;->performRestore(Landroid/os/Bundle;)V

    :cond_1
    iget-object v0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->hostLifecycleState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->maxLifecycle:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v2, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    if-ge v0, v1, :cond_2

    iget-object p0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->hostLifecycleState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v2, p0}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    return-void

    :cond_2
    iget-object p0, p0, Landroidx/navigation/internal/NavBackStackEntryImpl;->maxLifecycle:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v2, p0}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    return-void
.end method
