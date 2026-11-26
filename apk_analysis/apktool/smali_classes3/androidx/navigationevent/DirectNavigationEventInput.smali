.class public final Landroidx/navigationevent/DirectNavigationEventInput;
.super Landroidx/navigationevent/NavigationEventInput;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/navigationevent/NavigationEventInput;-><init>()V

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

.method public final forwardCancelled()V
    .locals 0

    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEventInput;->dispatchOnForwardCancelled()V

    return-void
.end method

.method public final forwardCompleted()V
    .locals 0

    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEventInput;->dispatchOnForwardCompleted()V

    return-void
.end method

.method public final forwardProgressed(Landroidx/navigationevent/NavigationEvent;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Landroidx/navigationevent/NavigationEventInput;->dispatchOnForwardProgressed(Landroidx/navigationevent/NavigationEvent;)V

    return-void
.end method

.method public final forwardStarted(Landroidx/navigationevent/NavigationEvent;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Landroidx/navigationevent/NavigationEventInput;->dispatchOnForwardStarted(Landroidx/navigationevent/NavigationEvent;)V

    return-void
.end method
