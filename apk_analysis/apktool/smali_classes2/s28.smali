.class public final synthetic Ls28;
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

.field public final synthetic k:I

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls28;->b:Landroidx/compose/material3/SliderDefaults;

    iput-object p2, p0, Ls28;->c:Landroidx/compose/material3/SliderState;

    iput-object p3, p0, Ls28;->d:Landroidx/compose/ui/Modifier;

    iput-boolean p4, p0, Ls28;->e:Z

    iput-object p5, p0, Ls28;->f:Landroidx/compose/material3/SliderColors;

    iput-object p6, p0, Ls28;->g:Lbm3;

    iput-object p7, p0, Ls28;->h:Ldm3;

    iput p8, p0, Ls28;->i:F

    iput p9, p0, Ls28;->j:F

    iput p10, p0, Ls28;->k:I

    iput p11, p0, Ls28;->l:I

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

    iget-object v0, p0, Ls28;->b:Landroidx/compose/material3/SliderDefaults;

    iget-object v1, p0, Ls28;->c:Landroidx/compose/material3/SliderState;

    iget-object v2, p0, Ls28;->d:Landroidx/compose/ui/Modifier;

    iget-boolean v3, p0, Ls28;->e:Z

    iget-object v4, p0, Ls28;->f:Landroidx/compose/material3/SliderColors;

    iget-object v5, p0, Ls28;->g:Lbm3;

    iget-object v6, p0, Ls28;->h:Ldm3;

    iget v7, p0, Ls28;->i:F

    iget v8, p0, Ls28;->j:F

    iget v9, p0, Ls28;->k:I

    iget v10, p0, Ls28;->l:I

    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/SliderDefaults;->r(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
