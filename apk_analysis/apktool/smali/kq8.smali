.class public final synthetic Lkq8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p6, p0, Lkq8;->b:I

    iput-object p1, p0, Lkq8;->c:Ljava/lang/Object;

    iput-object p2, p0, Lkq8;->d:Ljava/lang/Object;

    iput-object p3, p0, Lkq8;->e:Ljava/lang/Object;

    iput-object p4, p0, Lkq8;->f:Ljava/lang/Object;

    iput-object p5, p0, Lkq8;->g:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget v0, p0, Lkq8;->b:I

    iget-object v1, p0, Lkq8;->g:Ljava/lang/Object;

    iget-object v2, p0, Lkq8;->f:Ljava/lang/Object;

    iget-object v3, p0, Lkq8;->e:Ljava/lang/Object;

    iget-object v4, p0, Lkq8;->d:Ljava/lang/Object;

    iget-object p0, p0, Lkq8;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    move-object v5, p0

    check-cast v5, Lyads/s22;

    move-object v6, v4

    check-cast v6, Lyads/in5;

    move-object v7, v3

    check-cast v7, Lyads/yc1;

    move-object v8, v2

    check-cast v8, Lyads/fs2;

    move-object v9, v1

    check-cast v9, Landroid/util/DisplayMetrics;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static/range {v5 .. v11}, Lyads/d22;->a(Lyads/s22;Lyads/in5;Lyads/yc1;Lyads/fs2;Landroid/util/DisplayMetrics;J)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    move-object v0, p0

    check-cast v0, Landroidx/compose/foundation/text/input/internal/CursorAnimationState;

    check-cast v4, Landroidx/compose/ui/text/input/OffsetMapping;

    check-cast v3, Landroidx/compose/ui/text/input/TextFieldValue;

    check-cast v2, Landroidx/compose/foundation/text/LegacyTextFieldState;

    check-cast v1, Landroidx/compose/ui/graphics/Brush;

    move-object v5, p1

    check-cast v5, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    move-object v12, v4

    move-object v4, v1

    move-object v1, v12

    move-object v12, v3

    move-object v3, v2

    move-object v2, v12

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/text/TextFieldCursorKt;->a(Landroidx/compose/foundation/text/input/internal/CursorAnimationState;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
