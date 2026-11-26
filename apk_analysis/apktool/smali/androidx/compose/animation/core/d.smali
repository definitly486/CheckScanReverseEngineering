.class public final synthetic Landroidx/compose/animation/core/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/animation/core/Transition;

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/animation/core/Transition;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/core/d;->b:Landroidx/compose/animation/core/Transition;

    iput p2, p0, Landroidx/compose/animation/core/d;->c:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p1, p0, Landroidx/compose/animation/core/d;->b:Landroidx/compose/animation/core/Transition;

    iget p0, p0, Landroidx/compose/animation/core/d;->c:F

    invoke-static {p1, p0, v0, v1}, Landroidx/compose/animation/core/Transition$animateTo$1$1$1;->g(Landroidx/compose/animation/core/Transition;FJ)Lj59;

    move-result-object p0

    return-object p0
.end method
