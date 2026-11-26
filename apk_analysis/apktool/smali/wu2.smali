.class public final synthetic Lwu2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lwu2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lwu2;->b:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lyads/o12;->a(Ljava/lang/String;)Lyads/o12;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lyads/m11;->a(Ljava/lang/String;)Lyads/m11;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p1}, Lyads/cs0;->b(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Landroidx/compose/foundation/layout/WindowInsetsHolder;

    invoke-static {p1}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->l(Landroidx/compose/foundation/layout/WindowInsetsHolder;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-static {p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->a(Landroidx/compose/ui/text/input/TextFieldValue;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-static {p1}, Landroidx/compose/material3/TabIndicatorOffsetNode;->a(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Lj44;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lj44;->b:Ljava/lang/Object;

    return-object p0

    :pswitch_6
    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->b(Ljava/util/List;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->b(Ljava/util/List;)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p0

    const/16 p1, 0x2d

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p1, Lcom/posthog/PostHogEvent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "snapshot"

    return-object p0

    :pswitch_a
    check-cast p1, Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;

    invoke-static {p1}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->f(Landroidx/camera/video/internal/config/FormatComboRegistry$Builder$ContainerScope;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
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
