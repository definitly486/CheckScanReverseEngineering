.class public final synthetic Lq;
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

    iput p2, p0, Lq;->b:I

    iput-object p1, p0, Lq;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lq;->b:I

    iget-object p0, p0, Lq;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/vq0;

    invoke-static {p0}, Lyads/vq0;->b(Lyads/vq0;)Lyads/ar0;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/nq0;

    invoke-static {p0}, Lyads/nq0;->k0(Lyads/nq0;)Lyads/h36;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-static {p0}, Landroidx/work/impl/WorkDatabase_Impl;->k(Landroidx/work/impl/WorkDatabase_Impl;)Landroidx/work/impl/model/WorkProgressDao_Impl;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/camera/camera2/config/UseCaseGraphContext;

    invoke-static {p0}, Landroidx/camera/camera2/config/UseCaseGraphContext;->b(Landroidx/camera/camera2/config/UseCaseGraphContext;)Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState_androidKt;->e(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Landroidx/window/SafeWindowExtensionsProvider;

    invoke-static {p0}, Landroidx/window/SafeWindowExtensionsProvider;->b(Landroidx/window/SafeWindowExtensionsProvider;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Lod6;

    :try_start_0
    sget-object p0, Landroidx/compose/ui/platform/AndroidComposeView;->Companion:Landroidx/compose/ui/platform/AndroidComposeView$Companion;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lod6;->c:Lta6;

    iget-object p0, p0, Lnb6;->v:Lic6;

    const-string v1, "Compose not available: "

    const/16 v2, 0x2e

    invoke-static {v1, v0, v2, p0}, Lsg;->f(Ljava/lang/String;Ljava/lang/Throwable;CLic6;)V

    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p0, Lll3;

    invoke-static {p0}, Landroidx/navigation/internal/NavControllerImpl;->h(Lll3;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p0, Landroidx/compose/foundation/layout/FlowColumnOverflowScopeImpl;

    invoke-static {p0}, Landroidx/compose/foundation/layout/FlowColumnOverflowScopeImpl;->a(Landroidx/compose/foundation/layout/FlowColumnOverflowScopeImpl;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p0, Landroidx/activity/result/ActivityResultCallerLauncher;

    invoke-static {p0}, Landroidx/activity/result/ActivityResultCallerLauncher;->a(Landroidx/activity/result/ActivityResultCallerLauncher;)Landroidx/activity/result/ActivityResultCallerLauncher$resultContract$2$1;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p0, Landroidx/compose/foundation/AbstractClickableNode;

    invoke-static {p0}, Landroidx/compose/foundation/AbstractClickableNode;->a(Landroidx/compose/foundation/AbstractClickableNode;)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
