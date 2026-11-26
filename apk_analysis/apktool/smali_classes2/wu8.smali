.class public final synthetic Lwu8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Ly22;

.field public final synthetic c:Landroidx/compose/material3/AnalogTimePickerState;

.field public final synthetic d:F

.field public final synthetic e:Z

.field public final synthetic f:Landroidx/compose/runtime/MutableState;

.field public final synthetic g:Landroidx/compose/runtime/MutableState;

.field public final synthetic h:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Ly22;Landroidx/compose/material3/AnalogTimePickerState;FZLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwu8;->b:Ly22;

    iput-object p2, p0, Lwu8;->c:Landroidx/compose/material3/AnalogTimePickerState;

    iput p3, p0, Lwu8;->d:F

    iput-boolean p4, p0, Lwu8;->e:Z

    iput-object p5, p0, Lwu8;->f:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Lwu8;->g:Landroidx/compose/runtime/MutableState;

    iput-object p7, p0, Lwu8;->h:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v6, p0, Lwu8;->h:Landroidx/compose/runtime/State;

    move-object v7, p1

    check-cast v7, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    iget-object v0, p0, Lwu8;->b:Ly22;

    iget-object v1, p0, Lwu8;->c:Landroidx/compose/material3/AnalogTimePickerState;

    iget v2, p0, Lwu8;->d:F

    iget-boolean v3, p0, Lwu8;->e:Z

    iget-object v4, p0, Lwu8;->f:Landroidx/compose/runtime/MutableState;

    iget-object v5, p0, Lwu8;->g:Landroidx/compose/runtime/MutableState;

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/TimePickerKt;->D(Ly22;Landroidx/compose/material3/AnalogTimePickerState;FZLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;

    move-result-object p0

    return-object p0
.end method
