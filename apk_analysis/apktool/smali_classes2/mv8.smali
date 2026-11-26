.class public final synthetic Lmv8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/AnalogTimePickerState;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Landroidx/compose/material3/TimePickerColors;

.field public final synthetic e:Z

.field public final synthetic f:I

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/AnalogTimePickerState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/TimePickerColors;ZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmv8;->b:Landroidx/compose/material3/AnalogTimePickerState;

    iput-object p2, p0, Lmv8;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lmv8;->d:Landroidx/compose/material3/TimePickerColors;

    iput-boolean p4, p0, Lmv8;->e:Z

    iput p5, p0, Lmv8;->f:I

    iput p6, p0, Lmv8;->g:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v0, p0, Lmv8;->b:Landroidx/compose/material3/AnalogTimePickerState;

    iget-object v1, p0, Lmv8;->c:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Lmv8;->d:Landroidx/compose/material3/TimePickerColors;

    iget-boolean v3, p0, Lmv8;->e:Z

    iget v4, p0, Lmv8;->f:I

    iget v5, p0, Lmv8;->g:I

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/TimePickerKt;->I(Landroidx/compose/material3/AnalogTimePickerState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/TimePickerColors;ZIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
