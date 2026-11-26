.class public final synthetic Lhc5;
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

    iput p2, p0, Lhc5;->b:I

    iput-object p1, p0, Lhc5;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lhc5;->b:I

    iget-object p0, p0, Lhc5;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lws6;

    invoke-static {p0}, Lyads/or5;->a(Lws6;)Lyads/n45;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/nq0;

    invoke-static {p0}, Lyads/nq0;->J(Lyads/nq0;)Lyads/zc2;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-static {p0}, Landroidx/work/impl/WorkDatabase_Impl;->g(Landroidx/work/impl/WorkDatabase_Impl;)Landroidx/work/impl/model/WorkSpecDao_Impl;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/compose/foundation/text/input/internal/TextFieldDecoratorModifierNode;

    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/TextFieldDecoratorModifierNode;->m(Landroidx/compose/foundation/text/input/internal/TextFieldDecoratorModifierNode;)Landroidx/compose/foundation/content/internal/ReceiveContentConfiguration;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    invoke-static {p0}, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->a(Landroidx/camera/camera2/adapter/SessionConfigAdapter;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Landroidx/compose/material3/ModalWideNavigationRailState;

    invoke-static {p0}, Landroidx/compose/material3/ModalWideNavigationRailState;->b(Landroidx/compose/material3/ModalWideNavigationRailState;)Landroidx/compose/animation/core/AnimationSpec;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
