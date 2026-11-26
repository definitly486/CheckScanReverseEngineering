.class public final synthetic Landroidx/compose/material3/z2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/DrawerState;

.field public final synthetic c:I

.field public final synthetic d:Ljava/util/ArrayList;

.field public final synthetic e:Landroidx/compose/runtime/MutableState;

.field public final synthetic f:Landroidx/compose/runtime/MutableFloatState;

.field public final synthetic g:F


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/DrawerState;ILjava/util/ArrayList;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableFloatState;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/z2;->b:Landroidx/compose/material3/DrawerState;

    iput p2, p0, Landroidx/compose/material3/z2;->c:I

    iput-object p3, p0, Landroidx/compose/material3/z2;->d:Ljava/util/ArrayList;

    iput-object p4, p0, Landroidx/compose/material3/z2;->e:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Landroidx/compose/material3/z2;->f:Landroidx/compose/runtime/MutableFloatState;

    iput p6, p0, Landroidx/compose/material3/z2;->g:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v5, p0, Landroidx/compose/material3/z2;->g:F

    move-object v6, p1

    check-cast v6, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, p0, Landroidx/compose/material3/z2;->b:Landroidx/compose/material3/DrawerState;

    iget v1, p0, Landroidx/compose/material3/z2;->c:I

    iget-object v2, p0, Landroidx/compose/material3/z2;->d:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/compose/material3/z2;->e:Landroidx/compose/runtime/MutableState;

    iget-object v4, p0, Landroidx/compose/material3/z2;->f:Landroidx/compose/runtime/MutableFloatState;

    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$6$1;->b(Landroidx/compose/material3/DrawerState;ILjava/util/ArrayList;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableFloatState;FLandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
