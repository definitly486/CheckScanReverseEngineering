.class public final synthetic Lm28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/SliderDefaults;

.field public final synthetic c:Landroidx/compose/material3/RangeSliderState;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:Landroidx/compose/material3/SliderColors;

.field public final synthetic f:Z

.field public final synthetic g:I

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/RangeSliderState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm28;->b:Landroidx/compose/material3/SliderDefaults;

    iput-object p2, p0, Lm28;->c:Landroidx/compose/material3/RangeSliderState;

    iput-object p3, p0, Lm28;->d:Landroidx/compose/ui/Modifier;

    iput-object p4, p0, Lm28;->e:Landroidx/compose/material3/SliderColors;

    iput-boolean p5, p0, Lm28;->f:Z

    iput p6, p0, Lm28;->g:I

    iput p7, p0, Lm28;->h:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v0, p0, Lm28;->b:Landroidx/compose/material3/SliderDefaults;

    iget-object v1, p0, Lm28;->c:Landroidx/compose/material3/RangeSliderState;

    iget-object v2, p0, Lm28;->d:Landroidx/compose/ui/Modifier;

    iget-object v3, p0, Lm28;->e:Landroidx/compose/material3/SliderColors;

    iget-boolean v4, p0, Lm28;->f:Z

    iget v5, p0, Lm28;->g:I

    iget v6, p0, Lm28;->h:I

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/SliderDefaults;->u(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/RangeSliderState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
