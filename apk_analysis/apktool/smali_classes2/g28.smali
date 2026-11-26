.class public final synthetic Lg28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/SliderDefaults;

.field public final synthetic c:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:Landroidx/compose/material3/SliderColors;

.field public final synthetic f:Z

.field public final synthetic g:J

.field public final synthetic h:I

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZJII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg28;->b:Landroidx/compose/material3/SliderDefaults;

    iput-object p2, p0, Lg28;->c:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p3, p0, Lg28;->d:Landroidx/compose/ui/Modifier;

    iput-object p4, p0, Lg28;->e:Landroidx/compose/material3/SliderColors;

    iput-boolean p5, p0, Lg28;->f:Z

    iput-wide p6, p0, Lg28;->g:J

    iput p8, p0, Lg28;->h:I

    iput p9, p0, Lg28;->i:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v0, p0, Lg28;->b:Landroidx/compose/material3/SliderDefaults;

    iget-object v1, p0, Lg28;->c:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v2, p0, Lg28;->d:Landroidx/compose/ui/Modifier;

    iget-object v3, p0, Lg28;->e:Landroidx/compose/material3/SliderColors;

    iget-boolean v4, p0, Lg28;->f:Z

    iget-wide v5, p0, Lg28;->g:J

    iget v7, p0, Lg28;->h:I

    iget v8, p0, Lg28;->i:I

    invoke-static/range {v0 .. v10}, Landroidx/compose/material3/SliderDefaults;->h(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZJIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
