.class public final synthetic Lf80;
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

    iput p2, p0, Lf80;->b:I

    iput-object p1, p0, Lf80;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lf80;->b:I

    iget-object p0, p0, Lf80;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/nq0;

    invoke-static {p0}, Lyads/nq0;->T(Lyads/nq0;)Lyads/ti1;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lnl3;

    invoke-static {p0}, Landroidx/compose/runtime/retain/RetainedEffectKt;->b(Lnl3;)Landroidx/compose/runtime/retain/RetainedEffectImpl;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/compose/runtime/State;

    invoke-static {p0}, Landroidx/compose/material3/NavigationRailKt;->h(Landroidx/compose/runtime/State;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lb36;

    invoke-static {p0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Landroidx/compose/material3/carousel/CarouselPagerState;->f(Ljava/util/List;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;

    invoke-static {p0}, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->c(Landroidx/camera/camera2/adapter/CameraInfoAdapter;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Li80;

    const/4 v0, 0x0

    iput-boolean v0, p0, Li80;->g:Z

    iget-object v0, p0, Li80;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Li80;->f:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Li80;->i:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iget-object p0, p0, Li80;->j:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhy;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object p0, Lj59;->a:Lj59;

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
