.class public final synthetic Landroidx/compose/material3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Landroidx/compose/ui/layout/MeasureScope;

.field public final synthetic d:F

.field public final synthetic e:I

.field public final synthetic f:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Landroidx/compose/ui/layout/MeasureScope;FILjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/a;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Landroidx/compose/material3/a;->c:Landroidx/compose/ui/layout/MeasureScope;

    iput p3, p0, Landroidx/compose/material3/a;->d:F

    iput p4, p0, Landroidx/compose/material3/a;->e:I

    iput-object p5, p0, Landroidx/compose/material3/a;->f:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v4, p0, Landroidx/compose/material3/a;->f:Ljava/util/ArrayList;

    move-object v5, p1

    check-cast v5, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, p0, Landroidx/compose/material3/a;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/compose/material3/a;->c:Landroidx/compose/ui/layout/MeasureScope;

    iget v2, p0, Landroidx/compose/material3/a;->d:F

    iget v3, p0, Landroidx/compose/material3/a;->e:I

    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/AlertDialogKt$AlertDialogFlowRow$1$1;->a(Ljava/util/ArrayList;Landroidx/compose/ui/layout/MeasureScope;FILjava/util/ArrayList;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
