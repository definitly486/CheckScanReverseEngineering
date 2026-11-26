.class public final Landroidx/activity/compose/internal/BackHandlerCompat$navigationEventHandler$1;
.super Landroidx/navigationevent/NavigationEventHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/compose/internal/BackHandlerCompat;-><init>(Landroidx/navigationevent/NavigationEventInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/navigationevent/NavigationEventHandler<",
        "Landroidx/navigationevent/NavigationEventInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/activity/compose/internal/BackHandlerCompat;


# direct methods
.method public constructor <init>(Landroidx/activity/compose/internal/BackHandlerCompat;Landroidx/navigationevent/NavigationEventInfo;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/compose/internal/BackHandlerCompat$navigationEventHandler$1;->this$0:Landroidx/activity/compose/internal/BackHandlerCompat;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Landroidx/navigationevent/NavigationEventHandler;-><init>(Landroidx/navigationevent/NavigationEventInfo;Z)V

    return-void
.end method


# virtual methods
.method public onBackCancelled()V
    .locals 0

    iget-object p0, p0, Landroidx/activity/compose/internal/BackHandlerCompat$navigationEventHandler$1;->this$0:Landroidx/activity/compose/internal/BackHandlerCompat;

    invoke-virtual {p0}, Landroidx/activity/compose/internal/BackHandlerCompat;->onBackCancelled()V

    return-void
.end method

.method public onBackCompleted()V
    .locals 0

    iget-object p0, p0, Landroidx/activity/compose/internal/BackHandlerCompat$navigationEventHandler$1;->this$0:Landroidx/activity/compose/internal/BackHandlerCompat;

    invoke-virtual {p0}, Landroidx/activity/compose/internal/BackHandlerCompat;->onBackCompleted()V

    return-void
.end method

.method public onBackProgressed(Landroidx/navigationevent/NavigationEvent;)V
    .locals 1

    iget-object p0, p0, Landroidx/activity/compose/internal/BackHandlerCompat$navigationEventHandler$1;->this$0:Landroidx/activity/compose/internal/BackHandlerCompat;

    new-instance v0, Landroidx/activity/BackEventCompat;

    invoke-direct {v0, p1}, Landroidx/activity/BackEventCompat;-><init>(Landroidx/navigationevent/NavigationEvent;)V

    invoke-virtual {p0, v0}, Landroidx/activity/compose/internal/BackHandlerCompat;->onBackProgressed(Landroidx/activity/BackEventCompat;)V

    return-void
.end method

.method public onBackStarted(Landroidx/navigationevent/NavigationEvent;)V
    .locals 1

    iget-object p0, p0, Landroidx/activity/compose/internal/BackHandlerCompat$navigationEventHandler$1;->this$0:Landroidx/activity/compose/internal/BackHandlerCompat;

    new-instance v0, Landroidx/activity/BackEventCompat;

    invoke-direct {v0, p1}, Landroidx/activity/BackEventCompat;-><init>(Landroidx/navigationevent/NavigationEvent;)V

    invoke-virtual {p0, v0}, Landroidx/activity/compose/internal/BackHandlerCompat;->onBackStarted(Landroidx/activity/BackEventCompat;)V

    return-void
.end method
