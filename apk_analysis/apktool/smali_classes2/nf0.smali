.class public final synthetic Lnf0;
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

    iput p2, p0, Lnf0;->b:I

    iput-object p1, p0, Lnf0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lnf0;->b:I

    iget-object p0, p0, Lnf0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/nq0;

    invoke-static {p0}, Lyads/nq0;->h(Lyads/nq0;)Lyads/v41;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/eo1;

    invoke-static {p0}, Lyads/eo1;->a(Lyads/eo1;)Lyads/c81;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/compose/ui/text/style/TextForegroundStyle;

    invoke-static {p0}, Landroidx/compose/ui/text/style/TextForegroundStyle;->b(Landroidx/compose/ui/text/style/TextForegroundStyle;)Landroidx/compose/ui/text/style/TextForegroundStyle;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    invoke-static {p0}, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->a(Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;)Landroid/graphics/Shader;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Landroidx/compose/foundation/text/selection/SelectionManager;

    invoke-static {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->i(Landroidx/compose/foundation/text/selection/SelectionManager;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Landroidx/work/impl/WorkDatabase;

    invoke-static {p0}, Landroidx/work/impl/utils/PruneWorkRunnableKt;->a(Landroidx/work/impl/WorkDatabase;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Landroidx/compose/runtime/MutableState;

    invoke-static {p0}, Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProviderKt;->d(Landroidx/compose/runtime/MutableState;)Landroidx/compose/ui/layout/LayoutCoordinates;

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
