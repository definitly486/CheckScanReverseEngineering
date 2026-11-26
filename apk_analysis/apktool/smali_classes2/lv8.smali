.class public final synthetic Llv8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Ly22;

.field public final synthetic c:Landroidx/compose/material3/AnalogTimePickerState;

.field public final synthetic d:F

.field public final synthetic e:Z

.field public final synthetic f:Landroidx/compose/runtime/MutableState;

.field public final synthetic g:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Ly22;Landroidx/compose/material3/AnalogTimePickerState;FZLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llv8;->b:Ly22;

    iput-object p2, p0, Llv8;->c:Landroidx/compose/material3/AnalogTimePickerState;

    iput p3, p0, Llv8;->d:F

    iput-boolean p4, p0, Llv8;->e:Z

    iput-object p5, p0, Llv8;->f:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Llv8;->g:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget-object v4, p0, Llv8;->f:Landroidx/compose/runtime/MutableState;

    iget-object v5, p0, Llv8;->g:Landroidx/compose/runtime/MutableState;

    iget-object v0, p0, Llv8;->b:Ly22;

    iget-object v1, p0, Llv8;->c:Landroidx/compose/material3/AnalogTimePickerState;

    iget v2, p0, Llv8;->d:F

    iget-boolean v3, p0, Llv8;->e:Z

    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/TimePickerKt;->E(Ly22;Landroidx/compose/material3/AnalogTimePickerState;FZLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
