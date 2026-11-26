.class public final synthetic Lu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lu;->b:I

    iput-object p1, p0, Lu;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lu;->b:I

    iget-object p0, p0, Lu;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/bn1;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lyads/jk1;->a(Lyads/bn1;Z)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroid/widget/TextView;

    check-cast p1, Landroid/text/Spanned;

    invoke-static {p0, p1}, Lyads/g82;->a(Landroid/widget/TextView;Landroid/text/Spanned;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lyads/c26;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lyads/c26;->a(Lyads/c26;Z)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/camera/camera2/pipe/CameraGraph;

    check-cast p1, Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-static {p0, p1}, Landroidx/camera/camera2/impl/UseCaseManager;->a(Landroidx/camera/camera2/pipe/CameraGraph;Landroidx/camera/camera2/pipe/CameraGraph$Config;)Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Landroidx/compose/foundation/text/input/internal/TextFieldDecoratorModifierNode;

    check-cast p1, Landroidx/compose/ui/draganddrop/DragAndDropEvent;

    invoke-static {p0, p1}, Landroidx/compose/foundation/text/input/internal/TextFieldDecoratorModifierNode;->n(Landroidx/compose/foundation/text/input/internal/TextFieldDecoratorModifierNode;Landroidx/compose/ui/draganddrop/DragAndDropEvent;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Landroidx/compose/foundation/pager/PagerState;

    check-cast p1, Landroidx/compose/foundation/lazy/layout/NestedPrefetchScope;

    invoke-static {p0, p1}, Landroidx/compose/foundation/pager/PagerState;->d(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/lazy/layout/NestedPrefetchScope;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Landroidx/compose/runtime/State;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Landroidx/compose/foundation/gestures/DraggableKt;->a(Landroidx/compose/runtime/State;F)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p0, Lv;

    invoke-static {p0, p1}, Lv;->a(Lv;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
