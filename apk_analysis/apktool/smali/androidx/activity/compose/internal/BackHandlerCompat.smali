.class public abstract Landroidx/activity/compose/internal/BackHandlerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final info:Landroidx/navigationevent/NavigationEventInfo;

.field private final navigationEventHandler:Landroidx/navigationevent/NavigationEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigationevent/NavigationEventHandler<",
            "Landroidx/navigationevent/NavigationEventInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;


# direct methods
.method public constructor <init>(Landroidx/navigationevent/NavigationEventInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/compose/internal/BackHandlerCompat;->info:Landroidx/navigationevent/NavigationEventInfo;

    new-instance v0, Landroidx/activity/compose/internal/BackHandlerCompat$onBackPressedCallback$1;

    invoke-direct {v0, p0}, Landroidx/activity/compose/internal/BackHandlerCompat$onBackPressedCallback$1;-><init>(Landroidx/activity/compose/internal/BackHandlerCompat;)V

    iput-object v0, p0, Landroidx/activity/compose/internal/BackHandlerCompat;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    new-instance v0, Landroidx/activity/compose/internal/BackHandlerCompat$navigationEventHandler$1;

    invoke-direct {v0, p0, p1}, Landroidx/activity/compose/internal/BackHandlerCompat$navigationEventHandler$1;-><init>(Landroidx/activity/compose/internal/BackHandlerCompat;Landroidx/navigationevent/NavigationEventInfo;)V

    iput-object v0, p0, Landroidx/activity/compose/internal/BackHandlerCompat;->navigationEventHandler:Landroidx/navigationevent/NavigationEventHandler;

    return-void
.end method


# virtual methods
.method public final getInfo()Landroidx/navigationevent/NavigationEventInfo;
    .locals 0

    iget-object p0, p0, Landroidx/activity/compose/internal/BackHandlerCompat;->info:Landroidx/navigationevent/NavigationEventInfo;

    return-object p0
.end method

.method public final getNavigationEventHandler()Landroidx/navigationevent/NavigationEventHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/navigationevent/NavigationEventHandler<",
            "Landroidx/navigationevent/NavigationEventInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/activity/compose/internal/BackHandlerCompat;->navigationEventHandler:Landroidx/navigationevent/NavigationEventHandler;

    return-object p0
.end method

.method public final getOnBackPressedCallback()Landroidx/activity/OnBackPressedCallback;
    .locals 0

    iget-object p0, p0, Landroidx/activity/compose/internal/BackHandlerCompat;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    return-object p0
.end method

.method public isBackEnabled()Z
    .locals 1

    iget-object v0, p0, Landroidx/activity/compose/internal/BackHandlerCompat;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedCallback;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/activity/compose/internal/BackHandlerCompat;->navigationEventHandler:Landroidx/navigationevent/NavigationEventHandler;

    invoke-virtual {p0}, Landroidx/navigationevent/NavigationEventHandler;->isBackEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onBackCancelled()V
    .locals 0

    return-void
.end method

.method public abstract onBackCompleted()V
.end method

.method public onBackProgressed(Landroidx/activity/BackEventCompat;)V
    .locals 0

    return-void
.end method

.method public onBackStarted(Landroidx/activity/BackEventCompat;)V
    .locals 0

    return-void
.end method

.method public setBackEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/activity/compose/internal/BackHandlerCompat;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v0, p1}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    iget-object p0, p0, Landroidx/activity/compose/internal/BackHandlerCompat;->navigationEventHandler:Landroidx/navigationevent/NavigationEventHandler;

    invoke-virtual {p0, p1}, Landroidx/navigationevent/NavigationEventHandler;->setBackEnabled(Z)V

    return-void
.end method
