.class public final synthetic Landroidx/compose/material3/k4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:F

.field public final synthetic c:Lbm3;

.field public final synthetic d:Lbm3;

.field public final synthetic e:Landroidx/compose/material3/ScrollableTabData;

.field public final synthetic f:I

.field public final synthetic g:Ldm3;


# direct methods
.method public synthetic constructor <init>(FLbm3;Lbm3;Landroidx/compose/material3/ScrollableTabData;ILdm3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/material3/k4;->b:F

    iput-object p2, p0, Landroidx/compose/material3/k4;->c:Lbm3;

    iput-object p3, p0, Landroidx/compose/material3/k4;->d:Lbm3;

    iput-object p4, p0, Landroidx/compose/material3/k4;->e:Landroidx/compose/material3/ScrollableTabData;

    iput p5, p0, Landroidx/compose/material3/k4;->f:I

    iput-object p6, p0, Landroidx/compose/material3/k4;->g:Ldm3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v6, p1

    check-cast v6, Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    move-object v7, p2

    check-cast v7, Landroidx/compose/ui/unit/Constraints;

    iget v0, p0, Landroidx/compose/material3/k4;->b:F

    iget-object v1, p0, Landroidx/compose/material3/k4;->c:Lbm3;

    iget-object v2, p0, Landroidx/compose/material3/k4;->d:Lbm3;

    iget-object v3, p0, Landroidx/compose/material3/k4;->e:Landroidx/compose/material3/ScrollableTabData;

    iget v4, p0, Landroidx/compose/material3/k4;->f:I

    iget-object v5, p0, Landroidx/compose/material3/k4;->g:Ldm3;

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/TabRowKt$ScrollableTabRowWithSubcomposeImpl$1;->b(FLbm3;Lbm3;Landroidx/compose/material3/ScrollableTabData;ILdm3;Landroidx/compose/ui/layout/SubcomposeMeasureScope;Landroidx/compose/ui/unit/Constraints;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method
