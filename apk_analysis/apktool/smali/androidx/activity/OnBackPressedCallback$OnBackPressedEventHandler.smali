.class public final Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;
.super Landroidx/navigationevent/NavigationEventHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/OnBackPressedCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OnBackPressedEventHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/navigationevent/NavigationEventHandler<",
        "Landroidx/navigationevent/NavigationEventInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private isLifecycleActive:Z

.field private final onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;


# direct methods
.method public constructor <init>(Landroidx/activity/OnBackPressedCallback;Landroidx/navigationevent/NavigationEventInfo;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/activity/OnBackPressedCallback;->isEnabled()Z

    move-result v0

    invoke-direct {p0, p2, v0}, Landroidx/navigationevent/NavigationEventHandler;-><init>(Landroidx/navigationevent/NavigationEventInfo;Z)V

    iput-object p1, p0, Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;->isLifecycleActive:Z

    return-void
.end method


# virtual methods
.method public final isLifecycleActive()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;->isLifecycleActive:Z

    return p0
.end method

.method public onBackCancelled()V
    .locals 0

    iget-object p0, p0, Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedCallback;->handleOnBackCancelled()V

    return-void
.end method

.method public onBackCompleted()V
    .locals 0

    iget-object p0, p0, Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedCallback;->handleOnBackPressed()V

    return-void
.end method

.method public onBackProgressed(Landroidx/navigationevent/NavigationEvent;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    new-instance v0, Landroidx/activity/BackEventCompat;

    invoke-direct {v0, p1}, Landroidx/activity/BackEventCompat;-><init>(Landroidx/navigationevent/NavigationEvent;)V

    invoke-virtual {p0, v0}, Landroidx/activity/OnBackPressedCallback;->handleOnBackProgressed(Landroidx/activity/BackEventCompat;)V

    return-void
.end method

.method public onBackStarted(Landroidx/navigationevent/NavigationEvent;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    new-instance v0, Landroidx/activity/BackEventCompat;

    invoke-direct {v0, p1}, Landroidx/activity/BackEventCompat;-><init>(Landroidx/navigationevent/NavigationEvent;)V

    invoke-virtual {p0, v0}, Landroidx/activity/OnBackPressedCallback;->handleOnBackStarted(Landroidx/activity/BackEventCompat;)V

    return-void
.end method

.method public final setLifecycleActive(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;->isLifecycleActive:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {p1}, Landroidx/activity/OnBackPressedCallback;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/navigationevent/NavigationEventHandler;->setBackEnabled(Z)V

    return-void
.end method
