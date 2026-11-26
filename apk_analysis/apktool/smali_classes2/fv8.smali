.class public final synthetic Lfv8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/TimePickerState;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Landroidx/compose/material3/TimePickerColors;

.field public final synthetic e:I

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/TimePickerState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/TimePickerColors;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfv8;->b:Landroidx/compose/material3/TimePickerState;

    iput-object p2, p0, Lfv8;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lfv8;->d:Landroidx/compose/material3/TimePickerColors;

    iput p4, p0, Lfv8;->e:I

    iput p5, p0, Lfv8;->f:I

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

    iget-object v0, p0, Lfv8;->b:Landroidx/compose/material3/TimePickerState;

    iget-object v1, p0, Lfv8;->c:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Lfv8;->d:Landroidx/compose/material3/TimePickerColors;

    iget v3, p0, Lfv8;->e:I

    iget v4, p0, Lfv8;->f:I

    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/TimePickerKt;->r(Landroidx/compose/material3/TimePickerState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/TimePickerColors;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
