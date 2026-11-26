.class public final synthetic Lul;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lul;->b:I

    iput-object p2, p0, Lul;->c:Ljava/lang/Object;

    iput-object p3, p0, Lul;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lul;->b:I

    iget-object v1, p0, Lul;->d:Ljava/lang/Object;

    iget-object p0, p0, Lul;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/yo1;

    check-cast v1, Lyads/vq0;

    invoke-static {p0, v1}, Lyads/v41;->a(Lyads/yo1;Lyads/vq0;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroid/view/View$OnClickListener;

    check-cast v1, Landroid/view/View;

    invoke-static {p0, v1}, Lyads/bt0;->a(Landroid/view/View$OnClickListener;Landroid/view/View;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/camera/camera2/pipe/config/ThreadConfigModule;

    check-cast v1, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;

    invoke-static {p0, v1}, Landroidx/camera/camera2/pipe/config/ThreadConfigModule;->f(Landroidx/camera/camera2/pipe/config/ThreadConfigModule;Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;)Landroid/os/Handler;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/compose/runtime/NextFrameEndCallbackQueue;

    check-cast v1, Lll3;

    invoke-static {p0, v1}, Landroidx/compose/runtime/NextFrameEndCallbackQueue;->a(Landroidx/compose/runtime/NextFrameEndCallbackQueue;Lll3;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Lx81;

    invoke-static {p0, v1}, Landroidx/compose/animation/core/AnimateAsStateKt;->a(Lx81;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
