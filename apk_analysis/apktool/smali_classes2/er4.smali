.class public final synthetic Ler4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic c:I

.field public final synthetic d:Z

.field public final synthetic e:I

.field public final synthetic f:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic g:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic h:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic i:I

.field public final synthetic j:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic k:I

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/layout/Placeable;IZILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ler4;->b:Landroidx/compose/ui/layout/Placeable;

    iput p2, p0, Ler4;->c:I

    iput-boolean p3, p0, Ler4;->d:Z

    iput p4, p0, Ler4;->e:I

    iput-object p5, p0, Ler4;->f:Landroidx/compose/ui/layout/Placeable;

    iput-object p6, p0, Ler4;->g:Landroidx/compose/ui/layout/Placeable;

    iput-object p7, p0, Ler4;->h:Landroidx/compose/ui/layout/Placeable;

    iput p8, p0, Ler4;->i:I

    iput-object p9, p0, Ler4;->j:Landroidx/compose/ui/layout/Placeable;

    iput p10, p0, Ler4;->k:I

    iput p11, p0, Ler4;->l:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget v10, p0, Ler4;->l:I

    move-object v11, p1

    check-cast v11, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, p0, Ler4;->b:Landroidx/compose/ui/layout/Placeable;

    iget v1, p0, Ler4;->c:I

    iget-boolean v2, p0, Ler4;->d:Z

    iget v3, p0, Ler4;->e:I

    iget-object v4, p0, Ler4;->f:Landroidx/compose/ui/layout/Placeable;

    iget-object v5, p0, Ler4;->g:Landroidx/compose/ui/layout/Placeable;

    iget-object v6, p0, Ler4;->h:Landroidx/compose/ui/layout/Placeable;

    iget v7, p0, Ler4;->i:I

    iget-object v8, p0, Ler4;->j:Landroidx/compose/ui/layout/Placeable;

    iget v9, p0, Ler4;->k:I

    invoke-static/range {v0 .. v11}, Landroidx/compose/material3/ListItemKt;->d(Landroidx/compose/ui/layout/Placeable;IZILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
