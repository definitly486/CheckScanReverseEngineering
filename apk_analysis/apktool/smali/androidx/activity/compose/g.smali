.class public final synthetic Landroidx/activity/compose/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/activity/compose/ComposePredictiveBackHandler;

.field public final synthetic c:Lbm3;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/compose/ComposePredictiveBackHandler;Lbm3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/compose/g;->b:Landroidx/activity/compose/ComposePredictiveBackHandler;

    iput-object p2, p0, Landroidx/activity/compose/g;->c:Lbm3;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/activity/compose/g;->b:Landroidx/activity/compose/ComposePredictiveBackHandler;

    iget-object p0, p0, Landroidx/activity/compose/g;->c:Lbm3;

    invoke-static {v0, p0}, Landroidx/activity/compose/PredictiveBackHandlerKt;->a(Landroidx/activity/compose/ComposePredictiveBackHandler;Lbm3;)Lj59;

    move-result-object p0

    return-object p0
.end method
