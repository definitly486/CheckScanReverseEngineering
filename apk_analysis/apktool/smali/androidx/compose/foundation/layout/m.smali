.class public final synthetic Landroidx/compose/foundation/layout/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Ljava/util/ArrayList;

.field public final synthetic e:Landroidx/compose/ui/layout/MeasureScope;

.field public final synthetic f:Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;

.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:I

.field public final synthetic j:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;IIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/m;->b:Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;

    iput-object p2, p0, Landroidx/compose/foundation/layout/m;->c:Ljava/util/ArrayList;

    iput-object p3, p0, Landroidx/compose/foundation/layout/m;->d:Ljava/util/ArrayList;

    iput-object p4, p0, Landroidx/compose/foundation/layout/m;->e:Landroidx/compose/ui/layout/MeasureScope;

    iput-object p5, p0, Landroidx/compose/foundation/layout/m;->f:Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;

    iput p6, p0, Landroidx/compose/foundation/layout/m;->g:I

    iput p7, p0, Landroidx/compose/foundation/layout/m;->h:I

    iput p8, p0, Landroidx/compose/foundation/layout/m;->i:I

    iput-boolean p9, p0, Landroidx/compose/foundation/layout/m;->j:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget-boolean v8, p0, Landroidx/compose/foundation/layout/m;->j:Z

    move-object v9, p1

    check-cast v9, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, p0, Landroidx/compose/foundation/layout/m;->b:Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;

    iget-object v1, p0, Landroidx/compose/foundation/layout/m;->c:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/compose/foundation/layout/m;->d:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/compose/foundation/layout/m;->e:Landroidx/compose/ui/layout/MeasureScope;

    iget-object v4, p0, Landroidx/compose/foundation/layout/m;->f:Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;

    iget v5, p0, Landroidx/compose/foundation/layout/m;->g:I

    iget v6, p0, Landroidx/compose/foundation/layout/m;->h:I

    iget v7, p0, Landroidx/compose/foundation/layout/m;->i:I

    invoke-static/range {v0 .. v9}, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->b(Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;IIIZLandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
