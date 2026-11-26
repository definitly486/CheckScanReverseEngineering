.class public final synthetic Landroidx/compose/material3/w4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic e:J

.field public final synthetic f:F

.field public final synthetic g:F


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/layout/Placeable;Ljava/util/ArrayList;Landroidx/compose/ui/layout/Placeable;JFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/w4;->b:Landroidx/compose/ui/layout/Placeable;

    iput-object p2, p0, Landroidx/compose/material3/w4;->c:Ljava/util/ArrayList;

    iput-object p3, p0, Landroidx/compose/material3/w4;->d:Landroidx/compose/ui/layout/Placeable;

    iput-wide p4, p0, Landroidx/compose/material3/w4;->e:J

    iput p6, p0, Landroidx/compose/material3/w4;->f:F

    iput p7, p0, Landroidx/compose/material3/w4;->g:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v6, p0, Landroidx/compose/material3/w4;->g:F

    move-object v7, p1

    check-cast v7, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, p0, Landroidx/compose/material3/w4;->b:Landroidx/compose/ui/layout/Placeable;

    iget-object v1, p0, Landroidx/compose/material3/w4;->c:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/compose/material3/w4;->d:Landroidx/compose/ui/layout/Placeable;

    iget-wide v3, p0, Landroidx/compose/material3/w4;->e:J

    iget v5, p0, Landroidx/compose/material3/w4;->f:F

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/TimePickerKt$CircularLayout$1$1;->a(Landroidx/compose/ui/layout/Placeable;Ljava/util/ArrayList;Landroidx/compose/ui/layout/Placeable;JFFLandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
