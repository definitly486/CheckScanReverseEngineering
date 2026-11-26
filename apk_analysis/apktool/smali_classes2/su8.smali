.class public final synthetic Lsu8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Landroidx/compose/material3/AnalogTimePickerState;

.field public final synthetic d:Landroidx/compose/material3/TimePickerColors;

.field public final synthetic e:Z

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/AnalogTimePickerState;Landroidx/compose/material3/TimePickerColors;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsu8;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lsu8;->c:Landroidx/compose/material3/AnalogTimePickerState;

    iput-object p3, p0, Lsu8;->d:Landroidx/compose/material3/TimePickerColors;

    iput-boolean p4, p0, Lsu8;->e:Z

    iput p5, p0, Lsu8;->f:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v0, p0, Lsu8;->b:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lsu8;->c:Landroidx/compose/material3/AnalogTimePickerState;

    iget-object v2, p0, Lsu8;->d:Landroidx/compose/material3/TimePickerColors;

    iget-boolean v3, p0, Lsu8;->e:Z

    iget v4, p0, Lsu8;->f:I

    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/TimePickerKt;->q(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/AnalogTimePickerState;Landroidx/compose/material3/TimePickerColors;ZILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
