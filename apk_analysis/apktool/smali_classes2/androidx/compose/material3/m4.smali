.class public final synthetic Landroidx/compose/material3/m4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

.field public final synthetic d:Lbm3;

.field public final synthetic e:Lp07;

.field public final synthetic f:Landroidx/compose/ui/unit/Constraints;

.field public final synthetic g:I

.field public final synthetic h:Ldm3;

.field public final synthetic i:Ljava/util/ArrayList;

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Landroidx/compose/ui/layout/SubcomposeMeasureScope;Lbm3;Lp07;Landroidx/compose/ui/unit/Constraints;ILdm3;Ljava/util/ArrayList;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/m4;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Landroidx/compose/material3/m4;->c:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    iput-object p3, p0, Landroidx/compose/material3/m4;->d:Lbm3;

    iput-object p4, p0, Landroidx/compose/material3/m4;->e:Lp07;

    iput-object p5, p0, Landroidx/compose/material3/m4;->f:Landroidx/compose/ui/unit/Constraints;

    iput p6, p0, Landroidx/compose/material3/m4;->g:I

    iput-object p7, p0, Landroidx/compose/material3/m4;->h:Ldm3;

    iput-object p8, p0, Landroidx/compose/material3/m4;->i:Ljava/util/ArrayList;

    iput p9, p0, Landroidx/compose/material3/m4;->j:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget v8, p0, Landroidx/compose/material3/m4;->j:I

    move-object v9, p1

    check-cast v9, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, p0, Landroidx/compose/material3/m4;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/compose/material3/m4;->c:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    iget-object v2, p0, Landroidx/compose/material3/m4;->d:Lbm3;

    iget-object v3, p0, Landroidx/compose/material3/m4;->e:Lp07;

    iget-object v4, p0, Landroidx/compose/material3/m4;->f:Landroidx/compose/ui/unit/Constraints;

    iget v5, p0, Landroidx/compose/material3/m4;->g:I

    iget-object v6, p0, Landroidx/compose/material3/m4;->h:Ldm3;

    iget-object v7, p0, Landroidx/compose/material3/m4;->i:Ljava/util/ArrayList;

    invoke-static/range {v0 .. v9}, Landroidx/compose/material3/TabRowKt$TabRowWithSubcomposeImpl$1;->a(Ljava/util/ArrayList;Landroidx/compose/ui/layout/SubcomposeMeasureScope;Lbm3;Lp07;Landroidx/compose/ui/unit/Constraints;ILdm3;Ljava/util/ArrayList;ILandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
