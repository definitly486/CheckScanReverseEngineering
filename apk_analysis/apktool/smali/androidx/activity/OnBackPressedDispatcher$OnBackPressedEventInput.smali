.class final Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;
.super Landroidx/navigationevent/NavigationEventInput;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/OnBackPressedDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OnBackPressedEventInput"
.end annotation


# instance fields
.field private final dispatcher:Landroidx/navigationevent/NavigationEventDispatcher;

.field final synthetic this$0:Landroidx/activity/OnBackPressedDispatcher;


# direct methods
.method public constructor <init>(Landroidx/activity/OnBackPressedDispatcher;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;->this$0:Landroidx/activity/OnBackPressedDispatcher;

    invoke-direct {p0}, Landroidx/navigationevent/NavigationEventInput;-><init>()V

    new-instance v0, Landroidx/navigationevent/NavigationEventDispatcher;

    new-instance v1, Landroidx/activity/b;

    invoke-direct {v1, p1}, Landroidx/activity/b;-><init>(Landroidx/activity/OnBackPressedDispatcher;)V

    invoke-direct {v0, v1}, Landroidx/navigationevent/NavigationEventDispatcher;-><init>(Landroidx/navigationevent/OnBackCompletedFallback;)V

    invoke-virtual {v0, p0}, Landroidx/navigationevent/NavigationEventDispatcher;->addInput(Landroidx/navigationevent/NavigationEventInput;)V

    iput-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;->dispatcher:Landroidx/navigationevent/NavigationEventDispatcher;

    return-void
.end method

.method public static synthetic a(Landroidx/activity/OnBackPressedDispatcher;)V
    .locals 0

    invoke-static {p0}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;->dispatcher$lambda$0(Landroidx/activity/OnBackPressedDispatcher;)V

    return-void
.end method

.method private static final dispatcher$lambda$0(Landroidx/activity/OnBackPressedDispatcher;)V
    .locals 0

    invoke-static {p0}, Landroidx/activity/OnBackPressedDispatcher;->access$getFallbackOnBackPressed$p(Landroidx/activity/OnBackPressedDispatcher;)Ljava/lang/Runnable;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final backCancelled()V
    .locals 0

    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEventInput;->dispatchOnBackCancelled()V

    return-void
.end method

.method public final backCompleted()V
    .locals 0

    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEventInput;->dispatchOnBackCompleted()V

    return-void
.end method

.method public final backProgressed(Landroidx/navigationevent/NavigationEvent;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Landroidx/navigationevent/NavigationEventInput;->dispatchOnBackProgressed(Landroidx/navigationevent/NavigationEvent;)V

    return-void
.end method

.method public final backStarted(Landroidx/navigationevent/NavigationEvent;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Landroidx/navigationevent/NavigationEventInput;->dispatchOnBackStarted(Landroidx/navigationevent/NavigationEvent;)V

    return-void
.end method

.method public final getDispatcher()Landroidx/navigationevent/NavigationEventDispatcher;
    .locals 0

    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;->dispatcher:Landroidx/navigationevent/NavigationEventDispatcher;

    return-object p0
.end method

.method public onHasEnabledHandlersChanged(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;->this$0:Landroidx/activity/OnBackPressedDispatcher;

    invoke-static {v0, p1}, Landroidx/activity/OnBackPressedDispatcher;->access$setHasEnabledCallbacks$p(Landroidx/activity/OnBackPressedDispatcher;Z)V

    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;->this$0:Landroidx/activity/OnBackPressedDispatcher;

    invoke-static {p0}, Landroidx/activity/OnBackPressedDispatcher;->access$getOnHasEnabledCallbacksChanged$p(Landroidx/activity/OnBackPressedDispatcher;)Landroidx/core/util/Consumer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
