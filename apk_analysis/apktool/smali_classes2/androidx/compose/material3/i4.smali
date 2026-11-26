.class public final synthetic Landroidx/compose/material3/i4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lo07;

.field public final synthetic c:F

.field public final synthetic d:Ljava/util/ArrayList;

.field public final synthetic e:Ljava/util/ArrayList;

.field public final synthetic f:Landroidx/compose/material3/ScrollableTabData;

.field public final synthetic g:Landroidx/compose/ui/layout/MeasureScope;

.field public final synthetic h:I

.field public final synthetic i:Ljava/util/ArrayList;

.field public final synthetic j:I

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(Lo07;FLjava/util/ArrayList;Ljava/util/ArrayList;Landroidx/compose/material3/ScrollableTabData;Landroidx/compose/ui/layout/MeasureScope;ILjava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/i4;->b:Lo07;

    iput p2, p0, Landroidx/compose/material3/i4;->c:F

    iput-object p3, p0, Landroidx/compose/material3/i4;->d:Ljava/util/ArrayList;

    iput-object p4, p0, Landroidx/compose/material3/i4;->e:Ljava/util/ArrayList;

    iput-object p5, p0, Landroidx/compose/material3/i4;->f:Landroidx/compose/material3/ScrollableTabData;

    iput-object p6, p0, Landroidx/compose/material3/i4;->g:Landroidx/compose/ui/layout/MeasureScope;

    iput p7, p0, Landroidx/compose/material3/i4;->h:I

    iput-object p8, p0, Landroidx/compose/material3/i4;->i:Ljava/util/ArrayList;

    iput p9, p0, Landroidx/compose/material3/i4;->j:I

    iput p10, p0, Landroidx/compose/material3/i4;->k:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget v9, p0, Landroidx/compose/material3/i4;->k:I

    move-object v10, p1

    check-cast v10, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, p0, Landroidx/compose/material3/i4;->b:Lo07;

    iget v1, p0, Landroidx/compose/material3/i4;->c:F

    iget-object v2, p0, Landroidx/compose/material3/i4;->d:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/compose/material3/i4;->e:Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/compose/material3/i4;->f:Landroidx/compose/material3/ScrollableTabData;

    iget-object v5, p0, Landroidx/compose/material3/i4;->g:Landroidx/compose/ui/layout/MeasureScope;

    iget v6, p0, Landroidx/compose/material3/i4;->h:I

    iget-object v7, p0, Landroidx/compose/material3/i4;->i:Ljava/util/ArrayList;

    iget v8, p0, Landroidx/compose/material3/i4;->j:I

    invoke-static/range {v0 .. v10}, Landroidx/compose/material3/TabRowKt$ScrollableTabRowImpl$1$1$2$1;->a(Lo07;FLjava/util/ArrayList;Ljava/util/ArrayList;Landroidx/compose/material3/ScrollableTabData;Landroidx/compose/ui/layout/MeasureScope;ILjava/util/ArrayList;IILandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
