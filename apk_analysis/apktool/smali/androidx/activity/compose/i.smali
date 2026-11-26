.class public final synthetic Landroidx/activity/compose/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;

.field public final synthetic c:Landroidx/activity/compose/ComposePredictiveBackHandler;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;Landroidx/activity/compose/ComposePredictiveBackHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/compose/i;->b:Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;

    iput-object p2, p0, Landroidx/activity/compose/i;->c:Landroidx/activity/compose/ComposePredictiveBackHandler;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/activity/compose/i;->c:Landroidx/activity/compose/ComposePredictiveBackHandler;

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    iget-object p0, p0, Landroidx/activity/compose/i;->b:Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;

    invoke-static {p0, v0, p1}, Landroidx/activity/compose/PredictiveBackHandlerKt;->d(Landroidx/activity/compose/internal/BackHandlerDispatcherCompat;Landroidx/activity/compose/ComposePredictiveBackHandler;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p0

    return-object p0
.end method
