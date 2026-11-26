.class public final synthetic Lb11;
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

    iput p2, p0, Lb11;->b:I

    iput-object p1, p0, Lb11;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lb11;->b:I

    iget-object p0, p0, Lb11;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/nq0;

    invoke-static {p0}, Lyads/nq0;->F(Lyads/nq0;)Lyads/c62;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/gf0;

    invoke-static {p0}, Lyads/gf0;->p(Lyads/gf0;)Lyads/dn3;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/compose/runtime/State;

    invoke-static {p0}, Landroidx/compose/material3/internal/TextFieldImplKt;->k(Landroidx/compose/runtime/State;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/core/backported/fixes/SystemPropertyResolver;

    invoke-static {p0}, Landroidx/core/backported/fixes/SystemPropertyResolver;->a(Landroidx/core/backported/fixes/SystemPropertyResolver;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Lnl3;

    invoke-static {p0}, Landroidx/compose/runtime/retain/RetainedEffectKt;->d(Lnl3;)Landroidx/compose/runtime/retain/RetainedEffectImpl;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Landroidx/compose/runtime/MutableState;

    invoke-static {p0}, Landroidx/compose/material3/DatePickerKt;->x(Landroidx/compose/runtime/MutableState;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Ltd2$a;

    invoke-static {p0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;

    invoke-static {p0}, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->d(Landroidx/camera/camera2/adapter/CameraInfoAdapter;)Landroidx/camera/camera2/interop/Camera2CameraInfo;

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
