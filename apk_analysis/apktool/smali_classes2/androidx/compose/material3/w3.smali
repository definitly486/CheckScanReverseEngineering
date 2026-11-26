.class public final synthetic Landroidx/compose/material3/w3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/RangeSliderState;

.field public final synthetic c:Ln07;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/RangeSliderState;Ln07;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/w3;->b:Landroidx/compose/material3/RangeSliderState;

    iput-object p2, p0, Landroidx/compose/material3/w3;->c:Ln07;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/material3/w3;->c:Ln07;

    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object p0, p0, Landroidx/compose/material3/w3;->b:Landroidx/compose/material3/RangeSliderState;

    invoke-static {p0, v0, p1}, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->g(Landroidx/compose/material3/RangeSliderState;Ln07;Landroidx/compose/ui/input/pointer/PointerInputChange;)Lj59;

    move-result-object p0

    return-object p0
.end method
