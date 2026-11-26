.class public final synthetic Landroidx/compose/foundation/layout/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/layout/FlowMeasureLazyPolicy;

.field public final synthetic c:I

.field public final synthetic d:Landroidx/compose/foundation/layout/FlowLineInfo;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/layout/FlowMeasureLazyPolicy;ILandroidx/compose/foundation/layout/FlowLineInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/n;->b:Landroidx/compose/foundation/layout/FlowMeasureLazyPolicy;

    iput p2, p0, Landroidx/compose/foundation/layout/n;->c:I

    iput-object p3, p0, Landroidx/compose/foundation/layout/n;->d:Landroidx/compose/foundation/layout/FlowLineInfo;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Landroidx/compose/foundation/layout/n;->b:Landroidx/compose/foundation/layout/FlowMeasureLazyPolicy;

    iget v1, p0, Landroidx/compose/foundation/layout/n;->c:I

    iget-object p0, p0, Landroidx/compose/foundation/layout/n;->d:Landroidx/compose/foundation/layout/FlowLineInfo;

    invoke-static {v0, v1, p0, p1, p2}, Landroidx/compose/foundation/layout/FlowMeasureLazyPolicy;->f(Landroidx/compose/foundation/layout/FlowMeasureLazyPolicy;ILandroidx/compose/foundation/layout/FlowLineInfo;Landroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
