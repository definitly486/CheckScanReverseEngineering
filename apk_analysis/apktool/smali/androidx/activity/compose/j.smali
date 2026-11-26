.class public final synthetic Landroidx/activity/compose/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/activity/compose/ComposePredictiveBackHandler;

.field public final synthetic c:Z

.field public final synthetic d:Lbm3;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/compose/ComposePredictiveBackHandler;ZLbm3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/compose/j;->b:Landroidx/activity/compose/ComposePredictiveBackHandler;

    iput-boolean p2, p0, Landroidx/activity/compose/j;->c:Z

    iput-object p3, p0, Landroidx/activity/compose/j;->d:Lbm3;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Landroidx/activity/compose/j;->c:Z

    iget-object v1, p0, Landroidx/activity/compose/j;->d:Lbm3;

    iget-object p0, p0, Landroidx/activity/compose/j;->b:Landroidx/activity/compose/ComposePredictiveBackHandler;

    invoke-static {p0, v0, v1}, Landroidx/activity/compose/PredictiveBackHandlerKt;->e(Landroidx/activity/compose/ComposePredictiveBackHandler;ZLbm3;)Lj59;

    move-result-object p0

    return-object p0
.end method
