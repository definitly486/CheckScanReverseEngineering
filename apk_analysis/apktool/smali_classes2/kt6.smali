.class public final synthetic Lkt6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/internal/FloatProducer;

.field public final synthetic c:Landroidx/compose/runtime/State;

.field public final synthetic d:J

.field public final synthetic e:Landroidx/compose/ui/graphics/Path;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/internal/FloatProducer;Landroidx/compose/runtime/State;JLandroidx/compose/ui/graphics/Path;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkt6;->b:Landroidx/compose/material3/internal/FloatProducer;

    iput-object p2, p0, Lkt6;->c:Landroidx/compose/runtime/State;

    iput-wide p3, p0, Lkt6;->d:J

    iput-object p5, p0, Lkt6;->e:Landroidx/compose/ui/graphics/Path;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v4, p0, Lkt6;->e:Landroidx/compose/ui/graphics/Path;

    move-object v5, p1

    check-cast v5, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    iget-object v0, p0, Lkt6;->b:Landroidx/compose/material3/internal/FloatProducer;

    iget-object v1, p0, Lkt6;->c:Landroidx/compose/runtime/State;

    iget-wide v2, p0, Lkt6;->d:J

    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt;->f(Landroidx/compose/material3/internal/FloatProducer;Landroidx/compose/runtime/State;JLandroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
