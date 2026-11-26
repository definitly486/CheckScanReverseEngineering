.class public final synthetic Lx92;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lll3;

.field public final synthetic c:Lbm3;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:Lbm3;

.field public final synthetic f:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic g:F

.field public final synthetic h:Landroidx/compose/material3/DatePickerColors;

.field public final synthetic i:Landroidx/compose/ui/window/DialogProperties;

.field public final synthetic j:Ldm3;

.field public final synthetic k:I

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(Lll3;Lbm3;Landroidx/compose/ui/Modifier;Lbm3;Landroidx/compose/ui/graphics/Shape;FLandroidx/compose/material3/DatePickerColors;Landroidx/compose/ui/window/DialogProperties;Ldm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx92;->b:Lll3;

    iput-object p2, p0, Lx92;->c:Lbm3;

    iput-object p3, p0, Lx92;->d:Landroidx/compose/ui/Modifier;

    iput-object p4, p0, Lx92;->e:Lbm3;

    iput-object p5, p0, Lx92;->f:Landroidx/compose/ui/graphics/Shape;

    iput p6, p0, Lx92;->g:F

    iput-object p7, p0, Lx92;->h:Landroidx/compose/material3/DatePickerColors;

    iput-object p8, p0, Lx92;->i:Landroidx/compose/ui/window/DialogProperties;

    iput-object p9, p0, Lx92;->j:Ldm3;

    iput p10, p0, Lx92;->k:I

    iput p11, p0, Lx92;->l:I

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

    iget-object v0, p0, Lx92;->b:Lll3;

    iget-object v1, p0, Lx92;->c:Lbm3;

    iget-object v2, p0, Lx92;->d:Landroidx/compose/ui/Modifier;

    iget-object v3, p0, Lx92;->e:Lbm3;

    iget-object v4, p0, Lx92;->f:Landroidx/compose/ui/graphics/Shape;

    iget v5, p0, Lx92;->g:F

    iget-object v6, p0, Lx92;->h:Landroidx/compose/material3/DatePickerColors;

    iget-object v7, p0, Lx92;->i:Landroidx/compose/ui/window/DialogProperties;

    iget-object v8, p0, Lx92;->j:Ldm3;

    iget v9, p0, Lx92;->k:I

    iget v10, p0, Lx92;->l:I

    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/DatePickerDialog_androidKt;->a(Lll3;Lbm3;Landroidx/compose/ui/Modifier;Lbm3;Landroidx/compose/ui/graphics/Shape;FLandroidx/compose/material3/DatePickerColors;Landroidx/compose/ui/window/DialogProperties;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
