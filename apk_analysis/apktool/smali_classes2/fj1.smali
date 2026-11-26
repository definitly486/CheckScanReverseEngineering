.class public final synthetic Lfj1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lll3;

.field public final synthetic c:Lbm3;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:Z

.field public final synthetic f:Lbm3;

.field public final synthetic g:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic h:Landroidx/compose/material3/ChipColors;

.field public final synthetic i:Landroidx/compose/material3/ChipElevation;

.field public final synthetic j:Landroidx/compose/material3/ChipBorder;

.field public final synthetic k:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic l:I

.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(Lll3;Lbm3;Landroidx/compose/ui/Modifier;ZLbm3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ChipColors;Landroidx/compose/material3/ChipElevation;Landroidx/compose/material3/ChipBorder;Landroidx/compose/foundation/interaction/MutableInteractionSource;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfj1;->b:Lll3;

    iput-object p2, p0, Lfj1;->c:Lbm3;

    iput-object p3, p0, Lfj1;->d:Landroidx/compose/ui/Modifier;

    iput-boolean p4, p0, Lfj1;->e:Z

    iput-object p5, p0, Lfj1;->f:Lbm3;

    iput-object p6, p0, Lfj1;->g:Landroidx/compose/ui/graphics/Shape;

    iput-object p7, p0, Lfj1;->h:Landroidx/compose/material3/ChipColors;

    iput-object p8, p0, Lfj1;->i:Landroidx/compose/material3/ChipElevation;

    iput-object p9, p0, Lfj1;->j:Landroidx/compose/material3/ChipBorder;

    iput-object p10, p0, Lfj1;->k:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput p11, p0, Lfj1;->l:I

    iput p12, p0, Lfj1;->m:I

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

    iget-object v0, p0, Lfj1;->b:Lll3;

    iget-object v1, p0, Lfj1;->c:Lbm3;

    iget-object v2, p0, Lfj1;->d:Landroidx/compose/ui/Modifier;

    iget-boolean v3, p0, Lfj1;->e:Z

    iget-object v4, p0, Lfj1;->f:Lbm3;

    iget-object v5, p0, Lfj1;->g:Landroidx/compose/ui/graphics/Shape;

    iget-object v6, p0, Lfj1;->h:Landroidx/compose/material3/ChipColors;

    iget-object v7, p0, Lfj1;->i:Landroidx/compose/material3/ChipElevation;

    iget-object v8, p0, Lfj1;->j:Landroidx/compose/material3/ChipBorder;

    iget-object v9, p0, Lfj1;->k:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget v10, p0, Lfj1;->l:I

    iget v11, p0, Lfj1;->m:I

    invoke-static/range {v0 .. v13}, Landroidx/compose/material3/ChipKt;->g(Lll3;Lbm3;Landroidx/compose/ui/Modifier;ZLbm3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ChipColors;Landroidx/compose/material3/ChipElevation;Landroidx/compose/material3/ChipBorder;Landroidx/compose/foundation/interaction/MutableInteractionSource;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
