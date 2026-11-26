.class public final synthetic Landroidx/compose/animation/core/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/runtime/MutableState;

.field public final synthetic c:Landroidx/compose/animation/core/InfiniteTransition;

.field public final synthetic d:Lo07;

.field public final synthetic e:Ly22;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/animation/core/InfiniteTransition;Lo07;Ly22;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/core/b;->b:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Landroidx/compose/animation/core/b;->c:Landroidx/compose/animation/core/InfiniteTransition;

    iput-object p3, p0, Landroidx/compose/animation/core/b;->d:Lo07;

    iput-object p4, p0, Landroidx/compose/animation/core/b;->e:Ly22;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, p0, Landroidx/compose/animation/core/b;->b:Landroidx/compose/runtime/MutableState;

    iget-object v1, p0, Landroidx/compose/animation/core/b;->c:Landroidx/compose/animation/core/InfiniteTransition;

    iget-object v2, p0, Landroidx/compose/animation/core/b;->d:Lo07;

    iget-object v3, p0, Landroidx/compose/animation/core/b;->e:Ly22;

    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->g(Landroidx/compose/runtime/MutableState;Landroidx/compose/animation/core/InfiniteTransition;Lo07;Ly22;J)Lj59;

    move-result-object p0

    return-object p0
.end method
