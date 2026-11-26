.class public final synthetic Lf28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/SliderDefaults;

.field public final synthetic c:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic d:Landroidx/compose/material3/SliderState;

.field public final synthetic e:Landroidx/compose/ui/Modifier;

.field public final synthetic f:Landroidx/compose/material3/SliderColors;

.field public final synthetic g:Z

.field public final synthetic h:J

.field public final synthetic i:I

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZJII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf28;->b:Landroidx/compose/material3/SliderDefaults;

    iput-object p2, p0, Lf28;->c:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p3, p0, Lf28;->d:Landroidx/compose/material3/SliderState;

    iput-object p4, p0, Lf28;->e:Landroidx/compose/ui/Modifier;

    iput-object p5, p0, Lf28;->f:Landroidx/compose/material3/SliderColors;

    iput-boolean p6, p0, Lf28;->g:Z

    iput-wide p7, p0, Lf28;->h:J

    iput p9, p0, Lf28;->i:I

    iput p10, p0, Lf28;->j:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v10, p1

    check-cast v10, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v0, p0, Lf28;->b:Landroidx/compose/material3/SliderDefaults;

    iget-object v1, p0, Lf28;->c:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v2, p0, Lf28;->d:Landroidx/compose/material3/SliderState;

    iget-object v3, p0, Lf28;->e:Landroidx/compose/ui/Modifier;

    iget-object v4, p0, Lf28;->f:Landroidx/compose/material3/SliderColors;

    iget-boolean v5, p0, Lf28;->g:Z

    iget-wide v6, p0, Lf28;->h:J

    iget v8, p0, Lf28;->i:I

    iget v9, p0, Lf28;->j:I

    invoke-static/range {v0 .. v11}, Landroidx/compose/material3/SliderDefaults;->l(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZJIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
