.class public final synthetic Lhj5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/layout/RowScope;

.field public final synthetic c:Z

.field public final synthetic d:Lll3;

.field public final synthetic e:Lbm3;

.field public final synthetic f:Landroidx/compose/ui/Modifier;

.field public final synthetic g:Z

.field public final synthetic h:Lbm3;

.field public final synthetic i:Z

.field public final synthetic j:Landroidx/compose/material3/NavigationBarItemColors;

.field public final synthetic k:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic l:I

.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/layout/RowScope;ZLll3;Lbm3;Landroidx/compose/ui/Modifier;ZLbm3;ZLandroidx/compose/material3/NavigationBarItemColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhj5;->b:Landroidx/compose/foundation/layout/RowScope;

    iput-boolean p2, p0, Lhj5;->c:Z

    iput-object p3, p0, Lhj5;->d:Lll3;

    iput-object p4, p0, Lhj5;->e:Lbm3;

    iput-object p5, p0, Lhj5;->f:Landroidx/compose/ui/Modifier;

    iput-boolean p6, p0, Lhj5;->g:Z

    iput-object p7, p0, Lhj5;->h:Lbm3;

    iput-boolean p8, p0, Lhj5;->i:Z

    iput-object p9, p0, Lhj5;->j:Landroidx/compose/material3/NavigationBarItemColors;

    iput-object p10, p0, Lhj5;->k:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput p11, p0, Lhj5;->l:I

    iput p12, p0, Lhj5;->m:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    move-object v12, p1

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget-object v0, p0, Lhj5;->b:Landroidx/compose/foundation/layout/RowScope;

    iget-boolean v1, p0, Lhj5;->c:Z

    iget-object v2, p0, Lhj5;->d:Lll3;

    iget-object v3, p0, Lhj5;->e:Lbm3;

    iget-object v4, p0, Lhj5;->f:Landroidx/compose/ui/Modifier;

    iget-boolean v5, p0, Lhj5;->g:Z

    iget-object v6, p0, Lhj5;->h:Lbm3;

    iget-boolean v7, p0, Lhj5;->i:Z

    iget-object v8, p0, Lhj5;->j:Landroidx/compose/material3/NavigationBarItemColors;

    iget-object v9, p0, Lhj5;->k:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget v10, p0, Lhj5;->l:I

    iget v11, p0, Lhj5;->m:I

    invoke-static/range {v0 .. v13}, Landroidx/compose/material3/NavigationBarKt;->c(Landroidx/compose/foundation/layout/RowScope;ZLll3;Lbm3;Landroidx/compose/ui/Modifier;ZLbm3;ZLandroidx/compose/material3/NavigationBarItemColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
