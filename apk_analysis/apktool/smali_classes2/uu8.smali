.class public final synthetic Luu8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:I

.field public final synthetic d:Landroidx/compose/material3/TimePickerState;

.field public final synthetic e:I

.field public final synthetic f:Landroidx/compose/material3/TimePickerColors;

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(IIILandroidx/compose/material3/TimePickerColors;Landroidx/compose/material3/TimePickerState;Landroidx/compose/ui/Modifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p6, p0, Luu8;->b:Landroidx/compose/ui/Modifier;

    iput p1, p0, Luu8;->c:I

    iput-object p5, p0, Luu8;->d:Landroidx/compose/material3/TimePickerState;

    iput p2, p0, Luu8;->e:I

    iput-object p4, p0, Luu8;->f:Landroidx/compose/material3/TimePickerColors;

    iput p3, p0, Luu8;->g:I

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

    iget-object v0, p0, Luu8;->d:Landroidx/compose/material3/TimePickerState;

    iget-object v1, p0, Luu8;->b:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Luu8;->f:Landroidx/compose/material3/TimePickerColors;

    iget v3, p0, Luu8;->c:I

    iget v4, p0, Luu8;->e:I

    iget v5, p0, Luu8;->g:I

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/TimePickerKt;->v(Landroidx/compose/material3/TimePickerState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/TimePickerColors;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
