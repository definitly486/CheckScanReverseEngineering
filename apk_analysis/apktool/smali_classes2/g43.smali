.class public final synthetic Lg43;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/WindowBoundsCalculator;

.field public final synthetic c:I

.field public final synthetic d:Landroidx/compose/runtime/MutableState;

.field public final synthetic e:Landroidx/compose/runtime/MutableIntState;

.field public final synthetic f:Landroidx/compose/runtime/MutableIntState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/WindowBoundsCalculator;ILandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableIntState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg43;->b:Landroidx/compose/material3/WindowBoundsCalculator;

    iput p2, p0, Lg43;->c:I

    iput-object p3, p0, Lg43;->d:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lg43;->e:Landroidx/compose/runtime/MutableIntState;

    iput-object p5, p0, Lg43;->f:Landroidx/compose/runtime/MutableIntState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v4, p0, Lg43;->f:Landroidx/compose/runtime/MutableIntState;

    move-object v5, p1

    check-cast v5, Landroidx/compose/ui/layout/LayoutCoordinates;

    iget-object v0, p0, Lg43;->b:Landroidx/compose/material3/WindowBoundsCalculator;

    iget v1, p0, Lg43;->c:I

    iget-object v2, p0, Lg43;->d:Landroidx/compose/runtime/MutableState;

    iget-object v3, p0, Lg43;->e:Landroidx/compose/runtime/MutableIntState;

    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/ExposedDropdownMenuKt;->a(Landroidx/compose/material3/WindowBoundsCalculator;ILandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/ui/layout/LayoutCoordinates;)Lj59;

    move-result-object p0

    return-object p0
.end method
