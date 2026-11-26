.class final Landroidx/compose/material3/internal/PredictiveBackStateImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/material3/internal/PredictiveBackState;


# instance fields
.field private final value$delegate:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/compose/material3/internal/BackEventProgress$NotRunning;->INSTANCE:Landroidx/compose/material3/internal/BackEventProgress$NotRunning;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material3/internal/PredictiveBackStateImpl;->value$delegate:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public getValue()Landroidx/compose/material3/internal/BackEventProgress;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/internal/PredictiveBackStateImpl;->value$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/internal/BackEventProgress;

    return-object p0
.end method

.method public setValue(Landroidx/compose/material3/internal/BackEventProgress;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/internal/PredictiveBackStateImpl;->value$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method
