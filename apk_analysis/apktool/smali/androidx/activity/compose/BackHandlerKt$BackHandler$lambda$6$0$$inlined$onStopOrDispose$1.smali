.class public final Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$6$0$$inlined$onStopOrDispose$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/compose/LifecycleStopOrDisposeEffectResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/compose/BackHandlerKt;->BackHandler(ZLll3;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $dispatcher$inlined:Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;

.field final synthetic $handler$inlined:Landroidx/activity/compose/ComposeBackHandler;

.field final synthetic this$0:Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;Landroidx/activity/compose/ComposeBackHandler;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$6$0$$inlined$onStopOrDispose$1;->this$0:Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;

    iput-object p2, p0, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$6$0$$inlined$onStopOrDispose$1;->$dispatcher$inlined:Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;

    iput-object p3, p0, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$6$0$$inlined$onStopOrDispose$1;->$handler$inlined:Landroidx/activity/compose/ComposeBackHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runStopOrDisposeEffect()V
    .locals 1

    iget-object v0, p0, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$6$0$$inlined$onStopOrDispose$1;->$dispatcher$inlined:Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;

    iget-object p0, p0, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$6$0$$inlined$onStopOrDispose$1;->$handler$inlined:Landroidx/activity/compose/ComposeBackHandler;

    invoke-virtual {v0, p0}, Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;->removeHandler(Landroidx/activity/compose/internal/BackHandlerCompat;)V

    return-void
.end method
