.class public final synthetic Lsk5;
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


# direct methods
.method public synthetic constructor <init>(IIIIIILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p7, p0, Lsk5;->b:Landroidx/compose/ui/layout/Placeable;

    iput p1, p0, Lsk5;->c:I

    iput p2, p0, Lsk5;->d:I

    iput-object p8, p0, Lsk5;->e:Landroidx/compose/ui/layout/Placeable;

    iput p3, p0, Lsk5;->f:I

    iput p4, p0, Lsk5;->g:I

    iput-object p9, p0, Lsk5;->h:Landroidx/compose/ui/layout/Placeable;

    iput p5, p0, Lsk5;->i:I

    iput p6, p0, Lsk5;->j:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget v8, p0, Lsk5;->j:I

    move-object v9, p1

    check-cast v9, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, p0, Lsk5;->b:Landroidx/compose/ui/layout/Placeable;

    iget v1, p0, Lsk5;->c:I

    iget v2, p0, Lsk5;->d:I

    iget-object v3, p0, Lsk5;->e:Landroidx/compose/ui/layout/Placeable;

    iget v4, p0, Lsk5;->f:I

    iget v5, p0, Lsk5;->g:I

    iget-object v6, p0, Lsk5;->h:Landroidx/compose/ui/layout/Placeable;

    iget v7, p0, Lsk5;->i:I

    invoke-static/range {v0 .. v9}, Landroidx/compose/material3/NavigationItemKt;->g(Landroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
