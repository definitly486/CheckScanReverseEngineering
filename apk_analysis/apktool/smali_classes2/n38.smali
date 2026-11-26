.class public final synthetic Ln38;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/RangeSliderState;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Z

.field public final synthetic e:Landroidx/compose/material3/SliderColors;

.field public final synthetic f:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic g:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic h:Ldm3;

.field public final synthetic i:Ldm3;

.field public final synthetic j:Ldm3;

.field public final synthetic k:I

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/RangeSliderState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;Ldm3;Ldm3;Ldm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln38;->b:Landroidx/compose/material3/RangeSliderState;

    iput-object p2, p0, Ln38;->c:Landroidx/compose/ui/Modifier;

    iput-boolean p3, p0, Ln38;->d:Z

    iput-object p4, p0, Ln38;->e:Landroidx/compose/material3/SliderColors;

    iput-object p5, p0, Ln38;->f:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p6, p0, Ln38;->g:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p7, p0, Ln38;->h:Ldm3;

    iput-object p8, p0, Ln38;->i:Ldm3;

    iput-object p9, p0, Ln38;->j:Ldm3;

    iput p10, p0, Ln38;->k:I

    iput p11, p0, Ln38;->l:I

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

    iget-object v0, p0, Ln38;->b:Landroidx/compose/material3/RangeSliderState;

    iget-object v1, p0, Ln38;->c:Landroidx/compose/ui/Modifier;

    iget-boolean v2, p0, Ln38;->d:Z

    iget-object v3, p0, Ln38;->e:Landroidx/compose/material3/SliderColors;

    iget-object v4, p0, Ln38;->f:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v5, p0, Ln38;->g:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v6, p0, Ln38;->h:Ldm3;

    iget-object v7, p0, Ln38;->i:Ldm3;

    iget-object v8, p0, Ln38;->j:Ldm3;

    iget v9, p0, Ln38;->k:I

    iget v10, p0, Ln38;->l:I

    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/SliderKt;->g(Landroidx/compose/material3/RangeSliderState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;Ldm3;Ldm3;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
