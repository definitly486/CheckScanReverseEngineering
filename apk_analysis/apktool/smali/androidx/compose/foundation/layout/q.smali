.class public final synthetic Landroidx/compose/foundation/layout/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

.field public final synthetic c:Landroidx/compose/foundation/layout/FlowMeasureLazyPolicy;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/layout/FlowMeasureLazyPolicy;Landroidx/compose/ui/layout/SubcomposeMeasureScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/compose/foundation/layout/q;->b:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    iput-object p1, p0, Landroidx/compose/foundation/layout/q;->c:Landroidx/compose/foundation/layout/FlowMeasureLazyPolicy;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Landroidx/compose/foundation/layout/FlowLineInfo;

    iget-object v0, p0, Landroidx/compose/foundation/layout/q;->b:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    iget-object p0, p0, Landroidx/compose/foundation/layout/q;->c:Landroidx/compose/foundation/layout/FlowMeasureLazyPolicy;

    invoke-static {v0, p0, p1, p2}, Landroidx/compose/foundation/layout/FlowMeasureLazyPolicy;->c(Landroidx/compose/ui/layout/SubcomposeMeasureScope;Landroidx/compose/foundation/layout/FlowMeasureLazyPolicy;ILandroidx/compose/foundation/layout/FlowLineInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
