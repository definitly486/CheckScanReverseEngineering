.class public final Landroidx/compose/ui/platform/LifecycleRetainedValuesStore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/retain/RetainedValuesStore;


# static fields
.field public static final $stable:I


# instance fields
.field private final delegate:Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->$stable:I

    sput v0, Landroidx/compose/ui/platform/LifecycleRetainedValuesStore;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 16
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Landroidx/compose/ui/platform/LifecycleRetainedValuesStore;-><init>(Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Landroidx/compose/ui/platform/LifecycleRetainedValuesStore;->delegate:Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;

    .line 15
    invoke-virtual {p1}, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->onContentEnteredComposition()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;ILjh2;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    new-instance p1, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;

    invoke-direct {p1}, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;-><init>()V

    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/LifecycleRetainedValuesStore;-><init>(Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;)V

    return-void
.end method


# virtual methods
.method public consumeExitedValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/LifecycleRetainedValuesStore;->delegate:Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->consumeExitedValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final dispose()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/LifecycleRetainedValuesStore;->delegate:Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;

    invoke-virtual {p0}, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->dispose()V

    return-void
.end method

.method public final endLifecycleTransition()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/LifecycleRetainedValuesStore;->delegate:Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;

    invoke-virtual {p0}, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->onContentEnteredComposition()V

    return-void
.end method

.method public final getDelegate()Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/LifecycleRetainedValuesStore;->delegate:Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;

    return-object p0
.end method

.method public final isRetainingExitedValues()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/LifecycleRetainedValuesStore;->delegate:Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;

    invoke-virtual {p0}, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->isRetainingExitedValues()Z

    move-result p0

    return p0
.end method

.method public onContentEnteredComposition()V
    .locals 0

    return-void
.end method

.method public onContentExitComposition()V
    .locals 0

    return-void
.end method

.method public saveExitingValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/LifecycleRetainedValuesStore;->delegate:Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->saveExitingValue(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final startLifecycleTransition()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/LifecycleRetainedValuesStore;->delegate:Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;

    invoke-virtual {p0}, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->onContentExitComposition()V

    return-void
.end method
