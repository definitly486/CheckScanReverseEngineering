.class public final synthetic Lhj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lhj;->b:I

    iput-object p1, p0, Lhj;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lhj;->b:I

    iget-object p0, p0, Lhj;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/compose/animation/core/FiniteAnimationSpec;

    check-cast p1, Landroidx/compose/ui/unit/IntSize;

    check-cast p2, Landroidx/compose/ui/unit/IntSize;

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/DatePickerKt;->j(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/unit/IntSize;Landroidx/compose/ui/unit/IntSize;)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/compose/ui/text/TextInclusionStrategy;

    check-cast p1, Landroid/graphics/RectF;

    check-cast p2, Landroid/graphics/RectF;

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/text/AndroidParagraph;->a(Landroidx/compose/ui/text/TextInclusionStrategy;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
