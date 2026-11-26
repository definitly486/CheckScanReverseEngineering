.class public final synthetic Li38;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Landroidx/compose/material3/SliderState;

.field public final synthetic d:Z

.field public final synthetic e:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic f:Ldm3;

.field public final synthetic g:Ldm3;

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderState;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Ldm3;Ldm3;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li38;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Li38;->c:Landroidx/compose/material3/SliderState;

    iput-boolean p3, p0, Li38;->d:Z

    iput-object p4, p0, Li38;->e:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p5, p0, Li38;->f:Ldm3;

    iput-object p6, p0, Li38;->g:Ldm3;

    iput p7, p0, Li38;->h:I

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

    iget-object v0, p0, Li38;->b:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Li38;->c:Landroidx/compose/material3/SliderState;

    iget-boolean v2, p0, Li38;->d:Z

    iget-object v3, p0, Li38;->e:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v4, p0, Li38;->f:Ldm3;

    iget-object v5, p0, Li38;->g:Ldm3;

    iget v6, p0, Li38;->h:I

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/SliderKt;->q(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderState;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Ldm3;Ldm3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
