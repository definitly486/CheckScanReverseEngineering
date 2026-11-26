.class public final synthetic Ldh4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Landroidx/compose/material3/TooltipState;

.field public final synthetic d:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(ZLandroidx/compose/material3/TooltipState;Landroidx/compose/foundation/interaction/MutableInteractionSource;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ldh4;->b:Z

    iput-object p2, p0, Ldh4;->c:Landroidx/compose/material3/TooltipState;

    iput-object p3, p0, Ldh4;->d:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput p4, p0, Ldh4;->e:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-boolean v0, p0, Ldh4;->b:Z

    iget-object v1, p0, Ldh4;->c:Landroidx/compose/material3/TooltipState;

    iget-object v2, p0, Ldh4;->d:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget v3, p0, Ldh4;->e:I

    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/LabelKt;->c(ZLandroidx/compose/material3/TooltipState;Landroidx/compose/foundation/interaction/MutableInteractionSource;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
