.class final Landroidx/compose/runtime/retain/RetainManagedRetainedValuesStoreWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/retain/RetainObserver;


# instance fields
.field private final retainedValuesStore:Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;

    invoke-direct {v0}, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/retain/RetainManagedRetainedValuesStoreWrapper;->retainedValuesStore:Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;

    return-void
.end method


# virtual methods
.method public final getRetainedValuesStore()Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/retain/RetainManagedRetainedValuesStoreWrapper;->retainedValuesStore:Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;

    return-object p0
.end method

.method public onEnteredComposition()V
    .locals 0

    return-void
.end method

.method public onExitedComposition()V
    .locals 0

    return-void
.end method

.method public onRetained()V
    .locals 0

    return-void
.end method

.method public onRetired()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/retain/RetainManagedRetainedValuesStoreWrapper;->retainedValuesStore:Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;

    invoke-virtual {p0}, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->dispose()V

    return-void
.end method

.method public onUnused()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/retain/RetainManagedRetainedValuesStoreWrapper;->retainedValuesStore:Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;

    invoke-virtual {p0}, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->dispose()V

    return-void
.end method
