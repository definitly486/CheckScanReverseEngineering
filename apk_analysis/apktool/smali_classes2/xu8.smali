.class public final synthetic Lxu8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Landroidx/compose/material3/AnalogTimePickerState;

.field public final synthetic d:I

.field public final synthetic e:Z

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/AnalogTimePickerState;IZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxu8;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lxu8;->c:Landroidx/compose/material3/AnalogTimePickerState;

    iput p3, p0, Lxu8;->d:I

    iput-boolean p4, p0, Lxu8;->e:Z

    iput p5, p0, Lxu8;->f:I

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

    iget-object v0, p0, Lxu8;->b:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lxu8;->c:Landroidx/compose/material3/AnalogTimePickerState;

    iget v2, p0, Lxu8;->d:I

    iget-boolean v3, p0, Lxu8;->e:Z

    iget v4, p0, Lxu8;->f:I

    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/TimePickerKt;->m(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/AnalogTimePickerState;IZILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
