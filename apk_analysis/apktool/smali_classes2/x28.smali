.class public final synthetic Lx28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/SliderDefaults;

.field public final synthetic c:Landroidx/compose/material3/RangeSliderState;

.field public final synthetic d:F

.field public final synthetic e:Landroidx/compose/ui/Modifier;

.field public final synthetic f:Z

.field public final synthetic g:Landroidx/compose/material3/SliderColors;

.field public final synthetic h:Lbm3;

.field public final synthetic i:Ldm3;

.field public final synthetic j:F

.field public final synthetic k:F

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/RangeSliderState;FLandroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx28;->b:Landroidx/compose/material3/SliderDefaults;

    iput-object p2, p0, Lx28;->c:Landroidx/compose/material3/RangeSliderState;

    iput p3, p0, Lx28;->d:F

    iput-object p4, p0, Lx28;->e:Landroidx/compose/ui/Modifier;

    iput-boolean p5, p0, Lx28;->f:Z

    iput-object p6, p0, Lx28;->g:Landroidx/compose/material3/SliderColors;

    iput-object p7, p0, Lx28;->h:Lbm3;

    iput-object p8, p0, Lx28;->i:Ldm3;

    iput p9, p0, Lx28;->j:F

    iput p10, p0, Lx28;->k:F

    iput p11, p0, Lx28;->l:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    move-object v11, p1

    check-cast v11, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v0, p0, Lx28;->b:Landroidx/compose/material3/SliderDefaults;

    iget-object v1, p0, Lx28;->c:Landroidx/compose/material3/RangeSliderState;

    iget v2, p0, Lx28;->d:F

    iget-object v3, p0, Lx28;->e:Landroidx/compose/ui/Modifier;

    iget-boolean v4, p0, Lx28;->f:Z

    iget-object v5, p0, Lx28;->g:Landroidx/compose/material3/SliderColors;

    iget-object v6, p0, Lx28;->h:Lbm3;

    iget-object v7, p0, Lx28;->i:Ldm3;

    iget v8, p0, Lx28;->j:F

    iget v9, p0, Lx28;->k:F

    iget v10, p0, Lx28;->l:I

    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/SliderDefaults;->n(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/RangeSliderState;FLandroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
