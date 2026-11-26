.class public final synthetic Lq28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/SliderDefaults;

.field public final synthetic c:Landroidx/compose/material3/SliderState;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:Z

.field public final synthetic f:Landroidx/compose/material3/SliderColors;

.field public final synthetic g:Lbm3;

.field public final synthetic h:Ldm3;

.field public final synthetic i:F

.field public final synthetic j:F

.field public final synthetic k:F

.field public final synthetic l:I

.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(FFFIILbm3;Ldm3;Landroidx/compose/material3/SliderColors;Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p9, p0, Lq28;->b:Landroidx/compose/material3/SliderDefaults;

    iput-object p10, p0, Lq28;->c:Landroidx/compose/material3/SliderState;

    iput-object p11, p0, Lq28;->d:Landroidx/compose/ui/Modifier;

    iput-boolean p12, p0, Lq28;->e:Z

    iput-object p8, p0, Lq28;->f:Landroidx/compose/material3/SliderColors;

    iput-object p6, p0, Lq28;->g:Lbm3;

    iput-object p7, p0, Lq28;->h:Ldm3;

    iput p1, p0, Lq28;->i:F

    iput p2, p0, Lq28;->j:F

    iput p3, p0, Lq28;->k:F

    iput p4, p0, Lq28;->l:I

    iput p5, p0, Lq28;->m:I

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

    iget-object v0, p0, Lq28;->b:Landroidx/compose/material3/SliderDefaults;

    iget-object v1, p0, Lq28;->c:Landroidx/compose/material3/SliderState;

    iget v2, p0, Lq28;->i:F

    iget-object v3, p0, Lq28;->d:Landroidx/compose/ui/Modifier;

    iget-boolean v4, p0, Lq28;->e:Z

    iget-object v5, p0, Lq28;->f:Landroidx/compose/material3/SliderColors;

    iget-object v6, p0, Lq28;->g:Lbm3;

    iget-object v7, p0, Lq28;->h:Ldm3;

    iget v8, p0, Lq28;->j:F

    iget v9, p0, Lq28;->k:F

    iget v10, p0, Lq28;->l:I

    iget v11, p0, Lq28;->m:I

    invoke-static/range {v0 .. v13}, Landroidx/compose/material3/SliderDefaults;->d(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/SliderState;FLandroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
