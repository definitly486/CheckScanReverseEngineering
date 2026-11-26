.class public final synthetic Landroidx/compose/material3/j4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

.field public final synthetic e:Lbm3;

.field public final synthetic f:Landroidx/compose/material3/ScrollableTabData;

.field public final synthetic g:I

.field public final synthetic h:Ljava/util/ArrayList;

.field public final synthetic i:Landroidx/compose/ui/unit/Constraints;

.field public final synthetic j:I

.field public final synthetic k:I

.field public final synthetic l:Ldm3;


# direct methods
.method public synthetic constructor <init>(ILjava/util/ArrayList;Landroidx/compose/ui/layout/SubcomposeMeasureScope;Lbm3;Landroidx/compose/material3/ScrollableTabData;ILjava/util/ArrayList;Landroidx/compose/ui/unit/Constraints;IILdm3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/material3/j4;->b:I

    iput-object p2, p0, Landroidx/compose/material3/j4;->c:Ljava/util/ArrayList;

    iput-object p3, p0, Landroidx/compose/material3/j4;->d:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    iput-object p4, p0, Landroidx/compose/material3/j4;->e:Lbm3;

    iput-object p5, p0, Landroidx/compose/material3/j4;->f:Landroidx/compose/material3/ScrollableTabData;

    iput p6, p0, Landroidx/compose/material3/j4;->g:I

    iput-object p7, p0, Landroidx/compose/material3/j4;->h:Ljava/util/ArrayList;

    iput-object p8, p0, Landroidx/compose/material3/j4;->i:Landroidx/compose/ui/unit/Constraints;

    iput p9, p0, Landroidx/compose/material3/j4;->j:I

    iput p10, p0, Landroidx/compose/material3/j4;->k:I

    iput-object p11, p0, Landroidx/compose/material3/j4;->l:Ldm3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget-object v10, p0, Landroidx/compose/material3/j4;->l:Ldm3;

    move-object v11, p1

    check-cast v11, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget v0, p0, Landroidx/compose/material3/j4;->b:I

    iget-object v1, p0, Landroidx/compose/material3/j4;->c:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/compose/material3/j4;->d:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    iget-object v3, p0, Landroidx/compose/material3/j4;->e:Lbm3;

    iget-object v4, p0, Landroidx/compose/material3/j4;->f:Landroidx/compose/material3/ScrollableTabData;

    iget v5, p0, Landroidx/compose/material3/j4;->g:I

    iget-object v6, p0, Landroidx/compose/material3/j4;->h:Ljava/util/ArrayList;

    iget-object v7, p0, Landroidx/compose/material3/j4;->i:Landroidx/compose/ui/unit/Constraints;

    iget v8, p0, Landroidx/compose/material3/j4;->j:I

    iget v9, p0, Landroidx/compose/material3/j4;->k:I

    invoke-static/range {v0 .. v11}, Landroidx/compose/material3/TabRowKt$ScrollableTabRowWithSubcomposeImpl$1;->a(ILjava/util/ArrayList;Landroidx/compose/ui/layout/SubcomposeMeasureScope;Lbm3;Landroidx/compose/material3/ScrollableTabData;ILjava/util/ArrayList;Landroidx/compose/ui/unit/Constraints;IILdm3;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
