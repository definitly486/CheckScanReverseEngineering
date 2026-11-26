.class public final synthetic Lvo1;
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

    iput p2, p0, Lvo1;->b:I

    iput-object p1, p0, Lvo1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lvo1;->b:I

    iget-object p0, p0, Lvo1;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/kh;

    invoke-static {p0}, Lyads/kh;->a(Lyads/kh;)Lyads/i70;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/fo2;

    invoke-static {p0}, Lyads/fo2;->a(Lyads/fo2;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/work/Worker;

    invoke-static {p0}, Landroidx/work/Worker;->b(Landroidx/work/Worker;)Landroidx/work/ForegroundInfo;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    invoke-static {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt;->b(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Landroidx/compose/foundation/gestures/ScrollableNode;

    invoke-static {p0}, Landroidx/compose/foundation/gestures/ScrollableNode;->d(Landroidx/compose/foundation/gestures/ScrollableNode;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;

    invoke-static {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->U(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Landroidx/camera/camera2/internal/HighSpeedResolver;

    invoke-static {p0}, Landroidx/camera/camera2/internal/HighSpeedResolver;->a(Landroidx/camera/camera2/internal/HighSpeedResolver;)Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p0, Landroidx/compose/foundation/contextmenu/ContextMenuState;

    invoke-static {p0}, Landroidx/compose/foundation/text/CommonContextMenuAreaKt;->b(Landroidx/compose/foundation/contextmenu/ContextMenuState;)Lj59;

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
