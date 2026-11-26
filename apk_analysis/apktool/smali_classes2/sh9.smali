.class public final synthetic Lsh9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lll3;

.field public final synthetic d:Lbm3;

.field public final synthetic e:Lbm3;

.field public final synthetic f:Z

.field public final synthetic g:Landroidx/compose/ui/Modifier;

.field public final synthetic h:Z

.field public final synthetic i:I

.field public final synthetic j:Landroidx/compose/material3/NavigationItemColors;

.field public final synthetic k:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic l:I

.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(ZLll3;Lbm3;Lbm3;ZLandroidx/compose/ui/Modifier;ZILandroidx/compose/material3/NavigationItemColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lsh9;->b:Z

    iput-object p2, p0, Lsh9;->c:Lll3;

    iput-object p3, p0, Lsh9;->d:Lbm3;

    iput-object p4, p0, Lsh9;->e:Lbm3;

    iput-boolean p5, p0, Lsh9;->f:Z

    iput-object p6, p0, Lsh9;->g:Landroidx/compose/ui/Modifier;

    iput-boolean p7, p0, Lsh9;->h:Z

    iput p8, p0, Lsh9;->i:I

    iput-object p9, p0, Lsh9;->j:Landroidx/compose/material3/NavigationItemColors;

    iput-object p10, p0, Lsh9;->k:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput p11, p0, Lsh9;->l:I

    iput p12, p0, Lsh9;->m:I

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

    iget-boolean v0, p0, Lsh9;->b:Z

    iget-object v1, p0, Lsh9;->c:Lll3;

    iget-object v2, p0, Lsh9;->d:Lbm3;

    iget-object v3, p0, Lsh9;->e:Lbm3;

    iget-boolean v4, p0, Lsh9;->f:Z

    iget-object v5, p0, Lsh9;->g:Landroidx/compose/ui/Modifier;

    iget-boolean v6, p0, Lsh9;->h:Z

    iget v7, p0, Lsh9;->i:I

    iget-object v8, p0, Lsh9;->j:Landroidx/compose/material3/NavigationItemColors;

    iget-object v9, p0, Lsh9;->k:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget v10, p0, Lsh9;->l:I

    iget v11, p0, Lsh9;->m:I

    invoke-static/range {v0 .. v13}, Landroidx/compose/material3/WideNavigationRailKt;->n(ZLll3;Lbm3;Lbm3;ZLandroidx/compose/ui/Modifier;ZILandroidx/compose/material3/NavigationItemColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
