.class public final synthetic Ljo4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Z

.field public final synthetic d:J

.field public final synthetic e:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;ZJLandroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljo4;->b:Ljava/util/List;

    iput-boolean p2, p0, Ljo4;->c:Z

    iput-wide p3, p0, Ljo4;->d:J

    iput-object p5, p0, Ljo4;->e:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v4, p0, Ljo4;->e:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;

    move-object v5, p1

    check-cast v5, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, p0, Ljo4;->b:Ljava/util/List;

    iget-boolean v1, p0, Ljo4;->c:Z

    iget-wide v2, p0, Ljo4;->d:J

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->a(Ljava/util/List;ZJLandroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
