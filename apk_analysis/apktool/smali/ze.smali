.class public final synthetic Lze;
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

    iput p2, p0, Lze;->b:I

    iput-object p1, p0, Lze;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lze;->b:I

    iget-object p0, p0, Lze;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lws6;

    invoke-static {p0}, Lyads/x32;->a(Lws6;)Lyads/jt1;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/nq0;

    invoke-static {p0}, Lyads/nq0;->n(Lyads/nq0;)Lyads/jf1;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/camera/camera2/adapter/ZslControlImpl;

    invoke-static {p0}, Landroidx/camera/camera2/adapter/ZslControlImpl;->d(Landroidx/camera/camera2/adapter/ZslControlImpl;)Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/camera/camera2/compat/workaround/UseTorchAsFlashImpl;

    invoke-static {p0}, Landroidx/camera/camera2/compat/workaround/UseTorchAsFlashImpl;->a(Landroidx/camera/camera2/compat/workaround/UseTorchAsFlashImpl;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Landroidx/compose/runtime/saveable/SaveableStateRegistryWrapper;

    invoke-static {p0}, Landroidx/compose/runtime/saveable/SaveableStateRegistryWrapper;->a(Landroidx/compose/runtime/saveable/SaveableStateRegistryWrapper;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Landroidx/navigation/NavDeepLink;

    invoke-static {p0}, Landroidx/navigation/NavDeepLink;->f(Landroidx/navigation/NavDeepLink;)Lg17;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Lks2;

    new-instance v0, Lks2$b;

    invoke-direct {v0, p0}, Lks2$b;-><init>(Lks2;)V

    return-object v0

    :pswitch_6
    check-cast p0, Landroidx/activity/ComponentActivity;

    invoke-static {p0}, Landroidx/activity/ComponentActivity;->d(Landroidx/activity/ComponentActivity;)Landroidx/lifecycle/SavedStateViewModelFactory;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p0, [Ljava/lang/Object;

    new-instance v0, Ljr;

    invoke-direct {v0, p0}, Ljr;-><init>([Ljava/lang/Object;)V

    return-object v0

    :pswitch_8
    check-cast p0, Landroidx/compose/ui/unit/Density;

    invoke-static {p0}, Landroidx/compose/foundation/gestures/AnchoredDraggableKt;->d(Landroidx/compose/ui/unit/Density;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
