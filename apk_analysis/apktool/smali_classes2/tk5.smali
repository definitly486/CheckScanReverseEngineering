.class public final synthetic Ltk5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic i:I

.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic l:I

.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltk5;->b:Landroidx/compose/ui/layout/Placeable;

    iput p2, p0, Ltk5;->c:I

    iput p3, p0, Ltk5;->d:I

    iput-object p4, p0, Ltk5;->e:Landroidx/compose/ui/layout/Placeable;

    iput p5, p0, Ltk5;->f:I

    iput p6, p0, Ltk5;->g:I

    iput-object p7, p0, Ltk5;->h:Landroidx/compose/ui/layout/Placeable;

    iput p8, p0, Ltk5;->i:I

    iput p9, p0, Ltk5;->j:I

    iput-object p10, p0, Ltk5;->k:Landroidx/compose/ui/layout/Placeable;

    iput p11, p0, Ltk5;->l:I

    iput p12, p0, Ltk5;->m:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget v11, p0, Ltk5;->m:I

    move-object v12, p1

    check-cast v12, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, p0, Ltk5;->b:Landroidx/compose/ui/layout/Placeable;

    iget v1, p0, Ltk5;->c:I

    iget v2, p0, Ltk5;->d:I

    iget-object v3, p0, Ltk5;->e:Landroidx/compose/ui/layout/Placeable;

    iget v4, p0, Ltk5;->f:I

    iget v5, p0, Ltk5;->g:I

    iget-object v6, p0, Ltk5;->h:Landroidx/compose/ui/layout/Placeable;

    iget v7, p0, Ltk5;->i:I

    iget v8, p0, Ltk5;->j:I

    iget-object v9, p0, Ltk5;->k:Landroidx/compose/ui/layout/Placeable;

    iget v10, p0, Ltk5;->l:I

    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/NavigationItemKt;->c(Landroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
