.class public final synthetic Lkd3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lkd3;->b:I

    iput-object p1, p0, Lkd3;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lkd3;->b:I

    iget-object p0, p0, Lkd3;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/vq0;

    invoke-static {p0}, Lyads/vq0;->d(Lyads/vq0;)Lyads/f65;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/nq0;

    invoke-static {p0}, Lyads/nq0;->b0(Lyads/nq0;)Lyads/wo5;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-static {p0}, Landroidx/work/impl/WorkDatabase_Impl;->f(Landroidx/work/impl/WorkDatabase_Impl;)Landroidx/work/impl/model/WorkNameDao_Impl;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState_androidKt;->c(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Landroidx/compose/foundation/text/modifiers/SelectionController;

    invoke-static {p0}, Landroidx/compose/foundation/text/modifiers/SelectionController;->b(Landroidx/compose/foundation/text/modifiers/SelectionController;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Landroidx/window/SafeWindowExtensionsProvider;

    invoke-static {p0}, Landroidx/window/SafeWindowExtensionsProvider;->a(Landroidx/window/SafeWindowExtensionsProvider;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Landroidx/compose/foundation/layout/FlowColumnOverflowScopeImpl;

    invoke-static {p0}, Landroidx/compose/foundation/layout/FlowColumnOverflowScopeImpl;->b(Landroidx/compose/foundation/layout/FlowColumnOverflowScopeImpl;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
