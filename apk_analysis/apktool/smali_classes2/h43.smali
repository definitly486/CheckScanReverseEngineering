.class public final synthetic Lh43;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/WindowBoundsCalculator;

.field public final synthetic c:I

.field public final synthetic d:Landroidx/compose/runtime/MutableState;

.field public final synthetic e:Landroidx/compose/runtime/MutableIntState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/WindowBoundsCalculator;ILandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh43;->b:Landroidx/compose/material3/WindowBoundsCalculator;

    iput p2, p0, Lh43;->c:I

    iput-object p3, p0, Lh43;->d:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lh43;->e:Landroidx/compose/runtime/MutableIntState;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lh43;->d:Landroidx/compose/runtime/MutableState;

    iget-object v1, p0, Lh43;->e:Landroidx/compose/runtime/MutableIntState;

    iget-object v2, p0, Lh43;->b:Landroidx/compose/material3/WindowBoundsCalculator;

    iget p0, p0, Lh43;->c:I

    invoke-static {v2, p0, v0, v1}, Landroidx/compose/material3/ExposedDropdownMenuKt;->d(Landroidx/compose/material3/WindowBoundsCalculator;ILandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;)Lj59;

    move-result-object p0

    return-object p0
.end method
