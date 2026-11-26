.class public final synthetic Landroidx/compose/material3/c4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic c:I

.field public final synthetic d:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic h:I

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/c4;->b:Landroidx/compose/ui/layout/Placeable;

    iput p2, p0, Landroidx/compose/material3/c4;->c:I

    iput-object p3, p0, Landroidx/compose/material3/c4;->d:Landroidx/compose/ui/layout/Placeable;

    iput p4, p0, Landroidx/compose/material3/c4;->e:I

    iput p5, p0, Landroidx/compose/material3/c4;->f:I

    iput-object p6, p0, Landroidx/compose/material3/c4;->g:Landroidx/compose/ui/layout/Placeable;

    iput p7, p0, Landroidx/compose/material3/c4;->h:I

    iput p8, p0, Landroidx/compose/material3/c4;->i:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v7, p0, Landroidx/compose/material3/c4;->i:I

    move-object v8, p1

    check-cast v8, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, p0, Landroidx/compose/material3/c4;->b:Landroidx/compose/ui/layout/Placeable;

    iget v1, p0, Landroidx/compose/material3/c4;->c:I

    iget-object v2, p0, Landroidx/compose/material3/c4;->d:Landroidx/compose/ui/layout/Placeable;

    iget v3, p0, Landroidx/compose/material3/c4;->e:I

    iget v4, p0, Landroidx/compose/material3/c4;->f:I

    iget-object v5, p0, Landroidx/compose/material3/c4;->g:Landroidx/compose/ui/layout/Placeable;

    iget v6, p0, Landroidx/compose/material3/c4;->h:I

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1;->a(Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
