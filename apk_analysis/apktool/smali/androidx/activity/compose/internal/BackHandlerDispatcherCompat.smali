.class public final Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final navigationEventDispatcher:Landroidx/navigationevent/NavigationEventDispatcher;

.field private final onBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;


# direct methods
.method public constructor <init>(Landroidx/navigationevent/NavigationEventDispatcher;Landroidx/activity/OnBackPressedDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;->navigationEventDispatcher:Landroidx/navigationevent/NavigationEventDispatcher;

    iput-object p2, p0, Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;->onBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    if-nez p1, :cond_0

    move-object p1, p2

    :cond_0
    if-eqz p1, :cond_1

    return-void

    :cond_1
    const-string p0, "At least one dispatcher (NavigationEventDispatcher or OnBackPressedDispatcher) must be non-null."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final addHandler(Landroidx/activity/compose/internal/BackHandlerCompat;)V
    .locals 3

    iget-object v0, p0, Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;->navigationEventDispatcher:Landroidx/navigationevent/NavigationEventDispatcher;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/activity/compose/internal/BackHandlerCompat;->getNavigationEventHandler()Landroidx/navigationevent/NavigationEventHandler;

    move-result-object p0

    const/4 p1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, p1, v1}, Landroidx/navigationevent/NavigationEventDispatcher;->addHandler$default(Landroidx/navigationevent/NavigationEventDispatcher;Landroidx/navigationevent/NavigationEventHandler;IILjava/lang/Object;)V

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;->onBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroidx/activity/compose/internal/BackHandlerCompat;->getOnBackPressedCallback()Landroidx/activity/OnBackPressedCallback;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/activity/OnBackPressedCallback;)V

    return-void

    :cond_1
    const-string p0, "Unreachable"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final removeHandler(Landroidx/activity/compose/internal/BackHandlerCompat;)V
    .locals 1

    iget-object v0, p0, Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;->navigationEventDispatcher:Landroidx/navigationevent/NavigationEventDispatcher;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/activity/compose/internal/BackHandlerCompat;->getNavigationEventHandler()Landroidx/navigationevent/NavigationEventHandler;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEventHandler;->remove()V

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;->onBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroidx/activity/compose/internal/BackHandlerCompat;->getOnBackPressedCallback()Landroidx/activity/OnBackPressedCallback;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedCallback;->remove()V

    return-void

    :cond_1
    const-string p0, "Unreachable"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method
