.class public final synthetic Lg38;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/SliderState;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:Landroidx/compose/material3/SliderColors;

.field public final synthetic g:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic h:Ldm3;

.field public final synthetic i:Ldm3;

.field public final synthetic j:I

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/material3/SliderColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Ldm3;Ldm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg38;->b:Landroidx/compose/material3/SliderState;

    iput-object p2, p0, Lg38;->c:Landroidx/compose/ui/Modifier;

    iput-boolean p3, p0, Lg38;->d:Z

    iput-boolean p4, p0, Lg38;->e:Z

    iput-object p5, p0, Lg38;->f:Landroidx/compose/material3/SliderColors;

    iput-object p6, p0, Lg38;->g:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p7, p0, Lg38;->h:Ldm3;

    iput-object p8, p0, Lg38;->i:Ldm3;

    iput p9, p0, Lg38;->j:I

    iput p10, p0, Lg38;->k:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v10, p1

    check-cast v10, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v0, p0, Lg38;->b:Landroidx/compose/material3/SliderState;

    iget-object v1, p0, Lg38;->c:Landroidx/compose/ui/Modifier;

    iget-boolean v2, p0, Lg38;->d:Z

    iget-boolean v3, p0, Lg38;->e:Z

    iget-object v4, p0, Lg38;->f:Landroidx/compose/material3/SliderColors;

    iget-object v5, p0, Lg38;->g:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v6, p0, Lg38;->h:Ldm3;

    iget-object v7, p0, Lg38;->i:Ldm3;

    iget v8, p0, Lg38;->j:I

    iget v9, p0, Lg38;->k:I

    invoke-static/range {v0 .. v11}, Landroidx/compose/material3/SliderKt;->a(Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/material3/SliderColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Ldm3;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
