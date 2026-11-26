.class public final synthetic Lil5;
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

.field public final synthetic h:Ljava/lang/Number;

.field public final synthetic i:I

.field public final synthetic j:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic k:I

.field public final synthetic l:F


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;Ljava/lang/Number;ILandroidx/compose/ui/layout/Placeable;IF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lil5;->b:Landroidx/compose/ui/layout/Placeable;

    iput p2, p0, Lil5;->c:I

    iput-object p3, p0, Lil5;->d:Landroidx/compose/ui/layout/Placeable;

    iput p4, p0, Lil5;->e:I

    iput p5, p0, Lil5;->f:I

    iput-object p6, p0, Lil5;->g:Landroidx/compose/ui/layout/Placeable;

    iput-object p7, p0, Lil5;->h:Ljava/lang/Number;

    iput p8, p0, Lil5;->i:I

    iput-object p9, p0, Lil5;->j:Landroidx/compose/ui/layout/Placeable;

    iput p10, p0, Lil5;->k:I

    iput p11, p0, Lil5;->l:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget v10, p0, Lil5;->l:F

    move-object v11, p1

    check-cast v11, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, p0, Lil5;->b:Landroidx/compose/ui/layout/Placeable;

    iget v1, p0, Lil5;->c:I

    iget-object v2, p0, Lil5;->d:Landroidx/compose/ui/layout/Placeable;

    iget v3, p0, Lil5;->e:I

    iget v4, p0, Lil5;->f:I

    iget-object v5, p0, Lil5;->g:Landroidx/compose/ui/layout/Placeable;

    iget-object v6, p0, Lil5;->h:Ljava/lang/Number;

    iget v7, p0, Lil5;->i:I

    iget-object v8, p0, Lil5;->j:Landroidx/compose/ui/layout/Placeable;

    iget v9, p0, Lil5;->k:I

    invoke-static/range {v0 .. v11}, Landroidx/compose/material3/NavigationItemKt;->h(Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;Ljava/lang/Number;ILandroidx/compose/ui/layout/Placeable;IFLandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
