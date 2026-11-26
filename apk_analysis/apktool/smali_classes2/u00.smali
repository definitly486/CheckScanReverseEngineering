.class public final synthetic Lu00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lu00;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lu00;->b:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lyads/ux0;->a(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ldc4;

    invoke-static {p1}, Lyads/gf0;->a(Ldc4;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lyads/aj1;->a(Ljava/lang/String;)Lyads/aj1;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Landroidx/compose/foundation/layout/WindowInsetsHolder;

    invoke-static {p1}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->f(Landroidx/compose/foundation/layout/WindowInsetsHolder;)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Landroidx/compose/animation/core/AnimationVector2D;

    invoke-static {p1}, Landroidx/compose/animation/core/VectorConvertersKt;->h(Landroidx/compose/animation/core/AnimationVector2D;)Landroidx/compose/ui/unit/IntSize;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotKt;->a(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Lzo7;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lzo7;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-static {p1}, Landroidx/compose/ui/text/SaversKt;->q(Ljava/lang/Object;)Landroidx/compose/ui/geometry/Offset;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p1, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;

    invoke-static {p1}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->h(Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p1, Lo22$a;

    instance-of p0, p1, Lr22;

    if-eqz p0, :cond_0

    check-cast p1, Lr22;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1

    :pswitch_9
    check-cast p1, Landroidx/compose/ui/layout/RulerScope;

    invoke-static {p1}, Landroidx/compose/material3/BadgeKt;->e(Landroidx/compose/ui/layout/RulerScope;)Lj59;

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
