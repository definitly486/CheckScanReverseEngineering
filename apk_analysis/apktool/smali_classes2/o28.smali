.class public final synthetic Lo28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/SliderDefaults;

.field public final synthetic c:Landroidx/compose/material3/SliderState;

.field public final synthetic d:F

.field public final synthetic e:Landroidx/compose/ui/Modifier;

.field public final synthetic f:Z

.field public final synthetic g:Landroidx/compose/material3/SliderColors;

.field public final synthetic h:Lbm3;

.field public final synthetic i:Ldm3;

.field public final synthetic j:F

.field public final synthetic k:F

.field public final synthetic l:Z

.field public final synthetic m:Z

.field public final synthetic n:I

.field public final synthetic o:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/SliderState;FLandroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFZZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo28;->b:Landroidx/compose/material3/SliderDefaults;

    iput-object p2, p0, Lo28;->c:Landroidx/compose/material3/SliderState;

    iput p3, p0, Lo28;->d:F

    iput-object p4, p0, Lo28;->e:Landroidx/compose/ui/Modifier;

    iput-boolean p5, p0, Lo28;->f:Z

    iput-object p6, p0, Lo28;->g:Landroidx/compose/material3/SliderColors;

    iput-object p7, p0, Lo28;->h:Lbm3;

    iput-object p8, p0, Lo28;->i:Ldm3;

    iput p9, p0, Lo28;->j:F

    iput p10, p0, Lo28;->k:F

    iput-boolean p11, p0, Lo28;->l:Z

    iput-boolean p12, p0, Lo28;->m:Z

    iput p13, p0, Lo28;->n:I

    iput p14, p0, Lo28;->o:I

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

    iget-object v1, v0, Lo28;->b:Landroidx/compose/material3/SliderDefaults;

    iget-object v2, v0, Lo28;->c:Landroidx/compose/material3/SliderState;

    iget v3, v0, Lo28;->d:F

    iget-object v4, v0, Lo28;->e:Landroidx/compose/ui/Modifier;

    iget-boolean v5, v0, Lo28;->f:Z

    iget-object v6, v0, Lo28;->g:Landroidx/compose/material3/SliderColors;

    iget-object v7, v0, Lo28;->h:Lbm3;

    iget-object v8, v0, Lo28;->i:Ldm3;

    iget v9, v0, Lo28;->j:F

    iget v10, v0, Lo28;->k:F

    iget-boolean v11, v0, Lo28;->l:Z

    iget-boolean v12, v0, Lo28;->m:Z

    iget v13, v0, Lo28;->n:I

    iget v14, v0, Lo28;->o:I

    invoke-static/range {v1 .. v16}, Landroidx/compose/material3/SliderDefaults;->q(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/SliderState;FLandroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFZZIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
