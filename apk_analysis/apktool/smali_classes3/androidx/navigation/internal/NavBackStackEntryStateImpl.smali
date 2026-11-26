.class public final Landroidx/navigation/internal/NavBackStackEntryStateImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/internal/NavBackStackEntryStateImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/navigation/internal/NavBackStackEntryStateImpl$Companion;

.field public static final KEY_ARGS:Ljava/lang/String; = "nav-entry-state:args"

.field public static final KEY_DESTINATION_ID:Ljava/lang/String; = "nav-entry-state:destination-id"

.field public static final KEY_ID:Ljava/lang/String; = "nav-entry-state:id"

.field public static final KEY_SAVED_STATE:Ljava/lang/String; = "nav-entry-state:saved-state"


# instance fields
.field private final args:Landroid/os/Bundle;

.field private final destinationId:I

.field private final id:Ljava/lang/String;

.field private final savedState:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/navigation/internal/NavBackStackEntryStateImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/navigation/internal/NavBackStackEntryStateImpl$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->Companion:Landroidx/navigation/internal/NavBackStackEntryStateImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/savedstate/SavedStateReader;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "nav-entry-state:id"

    invoke-static {v0, v1}, Landroidx/savedstate/SavedStateReader;->getString-impl(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->id:Ljava/lang/String;

    invoke-static {p1}, Landroidx/savedstate/SavedStateReader;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "nav-entry-state:destination-id"

    invoke-static {v0, v1}, Landroidx/savedstate/SavedStateReader;->getInt-impl(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->destinationId:I

    invoke-static {p1}, Landroidx/savedstate/SavedStateReader;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "nav-entry-state:args"

    invoke-static {v0, v1}, Landroidx/savedstate/SavedStateReader;->getSavedState-impl(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->args:Landroid/os/Bundle;

    invoke-static {p1}, Landroidx/savedstate/SavedStateReader;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "nav-entry-state:saved-state"

    invoke-static {p1, v0}, Landroidx/savedstate/SavedStateReader;->getSavedState-impl(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->savedState:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroidx/navigation/NavBackStackEntry;I)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->id:Ljava/lang/String;

    .line 57
    iput p2, p0, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->destinationId:I

    .line 58
    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    iput-object p2, p0, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->args:Landroid/os/Bundle;

    const/4 p2, 0x0

    .line 59
    new-array p2, p2, [Lb36;

    .line 60
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lb36;

    invoke-static {p2}, Landroidx/core/os/BundleKt;->bundleOf([Lb36;)Landroid/os/Bundle;

    move-result-object p2

    .line 61
    invoke-static {p2}, Landroidx/savedstate/SavedStateWriter;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 62
    iput-object p2, p0, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->savedState:Landroid/os/Bundle;

    .line 63
    invoke-virtual {p1, p2}, Landroidx/navigation/NavBackStackEntry;->saveState(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final getArgs$navigation_runtime_release()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->args:Landroid/os/Bundle;

    return-object p0
.end method

.method public final getDestinationId$navigation_runtime_release()I
    .locals 0

    iget p0, p0, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->destinationId:I

    return p0
.end method

.method public final getId$navigation_runtime_release()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getSavedState$navigation_runtime_release()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->savedState:Landroid/os/Bundle;

    return-object p0
.end method

.method public final instantiate(Landroidx/navigation/internal/NavContext;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavControllerViewModel;)Landroidx/navigation/NavBackStackEntry;
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/navigation/NavBackStackEntry;->Companion:Landroidx/navigation/NavBackStackEntry$Companion;

    iget-object v6, p0, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->id:Ljava/lang/String;

    iget-object v7, p0, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->savedState:Landroid/os/Bundle;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroidx/navigation/NavBackStackEntry$Companion;->create(Landroidx/navigation/internal/NavContext;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavViewModelStoreProvider;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/navigation/NavBackStackEntry;

    move-result-object p0

    return-object p0
.end method

.method public final writeToState$navigation_runtime_release()Landroid/os/Bundle;
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Lb36;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lb36;

    invoke-static {v1}, Landroidx/core/os/BundleKt;->bundleOf([Lb36;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Landroidx/savedstate/SavedStateWriter;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "nav-entry-state:id"

    iget-object v4, p0, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->id:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroidx/savedstate/SavedStateWriter;->putString-impl(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "nav-entry-state:destination-id"

    iget v4, p0, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->destinationId:I

    invoke-static {v2, v3, v4}, Landroidx/savedstate/SavedStateWriter;->putInt-impl(Landroid/os/Bundle;Ljava/lang/String;I)V

    iget-object v3, p0, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->args:Landroid/os/Bundle;

    if-nez v3, :cond_0

    new-array v0, v0, [Lb36;

    array-length v3, v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb36;

    invoke-static {v0}, Landroidx/core/os/BundleKt;->bundleOf([Lb36;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Landroidx/savedstate/SavedStateWriter;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_0
    const-string v0, "nav-entry-state:args"

    invoke-static {v2, v0, v3}, Landroidx/savedstate/SavedStateWriter;->putSavedState-impl(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "nav-entry-state:saved-state"

    iget-object p0, p0, Landroidx/navigation/internal/NavBackStackEntryStateImpl;->savedState:Landroid/os/Bundle;

    invoke-static {v2, v0, p0}, Landroidx/savedstate/SavedStateWriter;->putSavedState-impl(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v1
.end method
