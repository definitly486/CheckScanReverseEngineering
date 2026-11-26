.class public final synthetic Lc38;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Landroidx/compose/material3/RangeSliderState;

.field public final synthetic d:Z

.field public final synthetic e:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic f:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic g:Ldm3;

.field public final synthetic h:Ldm3;

.field public final synthetic i:Ldm3;

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/RangeSliderState;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;Ldm3;Ldm3;Ldm3;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc38;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lc38;->c:Landroidx/compose/material3/RangeSliderState;

    iput-boolean p3, p0, Lc38;->d:Z

    iput-object p4, p0, Lc38;->e:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p5, p0, Lc38;->f:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p6, p0, Lc38;->g:Ldm3;

    iput-object p7, p0, Lc38;->h:Ldm3;

    iput-object p8, p0, Lc38;->i:Ldm3;

    iput p9, p0, Lc38;->j:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v0, p0, Lc38;->b:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lc38;->c:Landroidx/compose/material3/RangeSliderState;

    iget-boolean v2, p0, Lc38;->d:Z

    iget-object v3, p0, Lc38;->e:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v4, p0, Lc38;->f:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v5, p0, Lc38;->g:Ldm3;

    iget-object v6, p0, Lc38;->h:Ldm3;

    iget-object v7, p0, Lc38;->i:Ldm3;

    iget v8, p0, Lc38;->j:I

    invoke-static/range {v0 .. v10}, Landroidx/compose/material3/SliderKt;->d(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/RangeSliderState;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;Ldm3;Ldm3;Ldm3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
