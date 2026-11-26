.class public final synthetic Lbm5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Landroidx/collection/MutableObjectIntMap;

.field public final synthetic e:Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap;


# direct methods
.method public synthetic constructor <init>(IILandroidx/collection/MutableObjectIntMap;Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lbm5;->b:I

    iput p2, p0, Lbm5;->c:I

    iput-object p3, p0, Lbm5;->d:Landroidx/collection/MutableObjectIntMap;

    iput-object p4, p0, Lbm5;->e:Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lbm5;->e:Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap;

    check-cast p1, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    iget v1, p0, Lbm5;->b:I

    iget v2, p0, Lbm5;->c:I

    iget-object p0, p0, Lbm5;->d:Landroidx/collection/MutableObjectIntMap;

    invoke-static {v1, v2, p0, v0, p1}, Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap;->a(IILandroidx/collection/MutableObjectIntMap;Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap;Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;)Lj59;

    move-result-object p0

    return-object p0
.end method
