.class public final synthetic Lov8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Landroidx/compose/material3/TimePickerState;

.field public final synthetic d:Landroidx/compose/material3/TimePickerColors;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/TimePickerState;Landroidx/compose/material3/TimePickerColors;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lov8;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lov8;->c:Landroidx/compose/material3/TimePickerState;

    iput-object p3, p0, Lov8;->d:Landroidx/compose/material3/TimePickerColors;

    iput p4, p0, Lov8;->e:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v3, p1

    check-cast v3, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, p0, Lov8;->c:Landroidx/compose/material3/TimePickerState;

    iget-object v1, p0, Lov8;->b:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Lov8;->d:Landroidx/compose/material3/TimePickerColors;

    iget v4, p0, Lov8;->e:I

    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/TimePickerKt;->e(Landroidx/compose/material3/TimePickerState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/TimePickerColors;Landroidx/compose/runtime/Composer;II)Lj59;

    move-result-object p0

    return-object p0
.end method
