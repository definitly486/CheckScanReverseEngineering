.class public final synthetic Landroidx/activity/compose/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/activity/compose/ComposeBackHandler;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/compose/ComposeBackHandler;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/compose/b;->b:Landroidx/activity/compose/ComposeBackHandler;

    iput-boolean p2, p0, Landroidx/activity/compose/b;->c:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Landroidx/activity/compose/b;->c:Z

    check-cast p1, Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;

    iget-object p0, p0, Landroidx/activity/compose/b;->b:Landroidx/activity/compose/ComposeBackHandler;

    invoke-static {p0, v0, p1}, Landroidx/activity/compose/BackHandlerKt;->d(Landroidx/activity/compose/ComposeBackHandler;ZLandroidx/lifecycle/compose/LifecycleStartStopEffectScope;)Landroidx/lifecycle/compose/LifecycleStopOrDisposeEffectResult;

    move-result-object p0

    return-object p0
.end method
