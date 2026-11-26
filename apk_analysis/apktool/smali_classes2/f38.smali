.class public final synthetic Lf38;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:F

.field public final synthetic c:Lnl3;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:Z

.field public final synthetic f:Lll3;

.field public final synthetic g:Landroidx/compose/material3/SliderColors;

.field public final synthetic h:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic i:I

.field public final synthetic j:Ldm3;

.field public final synthetic k:Ldm3;

.field public final synthetic l:Lnm1;

.field public final synthetic m:I

.field public final synthetic n:I

.field public final synthetic o:I


# direct methods
.method public synthetic constructor <init>(FLnl3;Landroidx/compose/ui/Modifier;ZLll3;Landroidx/compose/material3/SliderColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;ILdm3;Ldm3;Lnm1;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lf38;->b:F

    iput-object p2, p0, Lf38;->c:Lnl3;

    iput-object p3, p0, Lf38;->d:Landroidx/compose/ui/Modifier;

    iput-boolean p4, p0, Lf38;->e:Z

    iput-object p5, p0, Lf38;->f:Lll3;

    iput-object p6, p0, Lf38;->g:Landroidx/compose/material3/SliderColors;

    iput-object p7, p0, Lf38;->h:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput p8, p0, Lf38;->i:I

    iput-object p9, p0, Lf38;->j:Ldm3;

    iput-object p10, p0, Lf38;->k:Ldm3;

    iput-object p11, p0, Lf38;->l:Lnm1;

    iput p12, p0, Lf38;->m:I

    iput p13, p0, Lf38;->n:I

    iput p14, p0, Lf38;->o:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    check-cast v15, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v16

    iget v1, v0, Lf38;->b:F

    iget-object v2, v0, Lf38;->c:Lnl3;

    iget-object v3, v0, Lf38;->d:Landroidx/compose/ui/Modifier;

    iget-boolean v4, v0, Lf38;->e:Z

    iget-object v5, v0, Lf38;->f:Lll3;

    iget-object v6, v0, Lf38;->g:Landroidx/compose/material3/SliderColors;

    iget-object v7, v0, Lf38;->h:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget v8, v0, Lf38;->i:I

    iget-object v9, v0, Lf38;->j:Ldm3;

    iget-object v10, v0, Lf38;->k:Ldm3;

    iget-object v11, v0, Lf38;->l:Lnm1;

    iget v12, v0, Lf38;->m:I

    iget v13, v0, Lf38;->n:I

    iget v14, v0, Lf38;->o:I

    invoke-static/range {v1 .. v16}, Landroidx/compose/material3/SliderKt;->s(FLnl3;Landroidx/compose/ui/Modifier;ZLll3;Landroidx/compose/material3/SliderColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;ILdm3;Ldm3;Lnm1;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
