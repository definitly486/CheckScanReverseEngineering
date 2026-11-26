.class public final synthetic Ld38;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:F

.field public final synthetic c:Lnl3;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:Z

.field public final synthetic f:Lnm1;

.field public final synthetic g:I

.field public final synthetic h:Lll3;

.field public final synthetic i:Landroidx/compose/material3/SliderColors;

.field public final synthetic j:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic k:I

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(FLnl3;Landroidx/compose/ui/Modifier;ZLnm1;ILll3;Landroidx/compose/material3/SliderColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ld38;->b:F

    iput-object p2, p0, Ld38;->c:Lnl3;

    iput-object p3, p0, Ld38;->d:Landroidx/compose/ui/Modifier;

    iput-boolean p4, p0, Ld38;->e:Z

    iput-object p5, p0, Ld38;->f:Lnm1;

    iput p6, p0, Ld38;->g:I

    iput-object p7, p0, Ld38;->h:Lll3;

    iput-object p8, p0, Ld38;->i:Landroidx/compose/material3/SliderColors;

    iput-object p9, p0, Ld38;->j:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput p10, p0, Ld38;->k:I

    iput p11, p0, Ld38;->l:I

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

    iget v0, p0, Ld38;->b:F

    iget-object v1, p0, Ld38;->c:Lnl3;

    iget-object v2, p0, Ld38;->d:Landroidx/compose/ui/Modifier;

    iget-boolean v3, p0, Ld38;->e:Z

    iget-object v4, p0, Ld38;->f:Lnm1;

    iget v5, p0, Ld38;->g:I

    iget-object v6, p0, Ld38;->h:Lll3;

    iget-object v7, p0, Ld38;->i:Landroidx/compose/material3/SliderColors;

    iget-object v8, p0, Ld38;->j:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget v9, p0, Ld38;->k:I

    iget v10, p0, Ld38;->l:I

    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/SliderKt;->i(FLnl3;Landroidx/compose/ui/Modifier;ZLnm1;ILll3;Landroidx/compose/material3/SliderColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
