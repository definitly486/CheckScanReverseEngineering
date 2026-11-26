.class public final synthetic Lhv8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Landroidx/compose/material3/TimePickerState;

.field public final synthetic d:Landroidx/compose/material3/TimePickerColors;

.field public final synthetic e:Landroidx/compose/ui/layout/MeasurePolicy;

.field public final synthetic f:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic g:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/TimePickerState;Landroidx/compose/material3/TimePickerColors;Landroidx/compose/ui/layout/MeasurePolicy;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhv8;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lhv8;->c:Landroidx/compose/material3/TimePickerState;

    iput-object p3, p0, Lhv8;->d:Landroidx/compose/material3/TimePickerColors;

    iput-object p4, p0, Lhv8;->e:Landroidx/compose/ui/layout/MeasurePolicy;

    iput-object p5, p0, Lhv8;->f:Landroidx/compose/ui/graphics/Shape;

    iput-object p6, p0, Lhv8;->g:Landroidx/compose/ui/graphics/Shape;

    iput p7, p0, Lhv8;->h:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v0, p0, Lhv8;->b:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lhv8;->c:Landroidx/compose/material3/TimePickerState;

    iget-object v2, p0, Lhv8;->d:Landroidx/compose/material3/TimePickerColors;

    iget-object v3, p0, Lhv8;->e:Landroidx/compose/ui/layout/MeasurePolicy;

    iget-object v4, p0, Lhv8;->f:Landroidx/compose/ui/graphics/Shape;

    iget-object v5, p0, Lhv8;->g:Landroidx/compose/ui/graphics/Shape;

    iget v6, p0, Lhv8;->h:I

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/TimePickerKt;->h(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/TimePickerState;Landroidx/compose/material3/TimePickerColors;Landroidx/compose/ui/layout/MeasurePolicy;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
