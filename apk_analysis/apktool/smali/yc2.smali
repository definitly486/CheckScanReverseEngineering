.class public final synthetic Lyc2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lyc2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lyc2;->b:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lyads/wo2;->c(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p1}, Lyads/fi1;->b(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p1}, Lyads/e91;->c(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Landroidx/compose/foundation/ScrollState;->d(I)Landroidx/compose/foundation/ScrollState;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Landroidx/compose/runtime/CompositionLocalAccessorScope;

    invoke-static {p1}, Landroidx/activity/compose/LocalActivityKt;->a(Landroidx/compose/runtime/CompositionLocalAccessorScope;)Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p0

    const/16 p1, 0x3a

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Lcom/posthog/PostHogEvent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/posthog/PostHogEvent;->getUuid()Ljava/util/UUID;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;

    invoke-static {p1}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->a(Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p1, Lb36;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/core/Debug;->a(Lb36;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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
