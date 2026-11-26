.class public final synthetic Landroidx/compose/material3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:I

.field public final synthetic d:Ljava/util/ArrayList;

.field public final synthetic e:Landroidx/compose/material3/SheetState;

.field public final synthetic f:Lll3;

.field public final synthetic g:I

.field public final synthetic h:Ljava/util/ArrayList;

.field public final synthetic i:Ljava/util/ArrayList;

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;ILjava/util/ArrayList;Landroidx/compose/material3/SheetState;Lll3;ILjava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/h;->b:Ljava/util/ArrayList;

    iput p2, p0, Landroidx/compose/material3/h;->c:I

    iput-object p3, p0, Landroidx/compose/material3/h;->d:Ljava/util/ArrayList;

    iput-object p4, p0, Landroidx/compose/material3/h;->e:Landroidx/compose/material3/SheetState;

    iput-object p5, p0, Landroidx/compose/material3/h;->f:Lll3;

    iput p6, p0, Landroidx/compose/material3/h;->g:I

    iput-object p7, p0, Landroidx/compose/material3/h;->h:Ljava/util/ArrayList;

    iput-object p8, p0, Landroidx/compose/material3/h;->i:Ljava/util/ArrayList;

    iput p9, p0, Landroidx/compose/material3/h;->j:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget v8, p0, Landroidx/compose/material3/h;->j:I

    move-object v9, p1

    check-cast v9, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, p0, Landroidx/compose/material3/h;->b:Ljava/util/ArrayList;

    iget v1, p0, Landroidx/compose/material3/h;->c:I

    iget-object v2, p0, Landroidx/compose/material3/h;->d:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/compose/material3/h;->e:Landroidx/compose/material3/SheetState;

    iget-object v4, p0, Landroidx/compose/material3/h;->f:Lll3;

    iget v5, p0, Landroidx/compose/material3/h;->g:I

    iget-object v6, p0, Landroidx/compose/material3/h;->h:Ljava/util/ArrayList;

    iget-object v7, p0, Landroidx/compose/material3/h;->i:Ljava/util/ArrayList;

    invoke-static/range {v0 .. v9}, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;->a(Ljava/util/ArrayList;ILjava/util/ArrayList;Landroidx/compose/material3/SheetState;Lll3;ILjava/util/ArrayList;Ljava/util/ArrayList;ILandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
