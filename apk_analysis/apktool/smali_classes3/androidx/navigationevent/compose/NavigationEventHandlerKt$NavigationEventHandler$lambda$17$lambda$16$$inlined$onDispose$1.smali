.class public final Landroidx/navigationevent/compose/NavigationEventHandlerKt$NavigationEventHandler$lambda$17$lambda$16$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/navigationevent/compose/NavigationEventHandlerKt;->NavigationEventHandler(Landroidx/navigationevent/compose/NavigationEventState;ZLll3;Lll3;ZLll3;Lll3;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $sourceHandler$inlined:Landroidx/navigationevent/compose/ComposeNavigationEventHandler;

.field final synthetic $state$inlined:Landroidx/navigationevent/compose/NavigationEventState;


# direct methods
.method public constructor <init>(Landroidx/navigationevent/compose/ComposeNavigationEventHandler;Landroidx/navigationevent/compose/NavigationEventState;)V
    .locals 0

    iput-object p1, p0, Landroidx/navigationevent/compose/NavigationEventHandlerKt$NavigationEventHandler$lambda$17$lambda$16$$inlined$onDispose$1;->$sourceHandler$inlined:Landroidx/navigationevent/compose/ComposeNavigationEventHandler;

    iput-object p2, p0, Landroidx/navigationevent/compose/NavigationEventHandlerKt$NavigationEventHandler$lambda$17$lambda$16$$inlined$onDispose$1;->$state$inlined:Landroidx/navigationevent/compose/NavigationEventState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Landroidx/navigationevent/compose/NavigationEventHandlerKt$NavigationEventHandler$lambda$17$lambda$16$$inlined$onDispose$1;->$sourceHandler$inlined:Landroidx/navigationevent/compose/ComposeNavigationEventHandler;

    invoke-virtual {v0}, Landroidx/navigationevent/NavigationEventHandler;->remove()V

    iget-object p0, p0, Landroidx/navigationevent/compose/NavigationEventHandlerKt$NavigationEventHandler$lambda$17$lambda$16$$inlined$onDispose$1;->$state$inlined:Landroidx/navigationevent/compose/NavigationEventState;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/navigationevent/compose/NavigationEventState;->setSourceHandler$navigationevent_compose(Landroidx/navigationevent/NavigationEventHandler;)V

    return-void
.end method
