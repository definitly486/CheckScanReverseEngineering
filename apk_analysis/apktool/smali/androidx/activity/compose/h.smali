.class public final synthetic Landroidx/activity/compose/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/activity/compose/ComposePredictiveBackHandler;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/compose/ComposePredictiveBackHandler;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/compose/h;->b:Landroidx/activity/compose/ComposePredictiveBackHandler;

    iput-boolean p2, p0, Landroidx/activity/compose/h;->c:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Landroidx/activity/compose/h;->c:Z

    check-cast p1, Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;

    iget-object p0, p0, Landroidx/activity/compose/h;->b:Landroidx/activity/compose/ComposePredictiveBackHandler;

    invoke-static {p0, v0, p1}, Landroidx/activity/compose/PredictiveBackHandlerKt;->c(Landroidx/activity/compose/ComposePredictiveBackHandler;ZLandroidx/lifecycle/compose/LifecycleStartStopEffectScope;)Landroidx/lifecycle/compose/LifecycleStopOrDisposeEffectResult;

    move-result-object p0

    return-object p0
.end method
