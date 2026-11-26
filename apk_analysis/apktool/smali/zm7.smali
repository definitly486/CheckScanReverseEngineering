.class public final synthetic Lzm7;
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

    iput p2, p0, Lzm7;->b:I

    iput-object p1, p0, Lzm7;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lzm7;->b:I

    iget-object p0, p0, Lzm7;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/nq0;

    invoke-static {p0}, Lyads/nq0;->W(Lyads/nq0;)Lyads/jv1;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-static {p0}, Landroidx/work/impl/WorkDatabase_Impl;->j(Landroidx/work/impl/WorkDatabase_Impl;)Landroidx/work/impl/model/SystemIdInfoDao_Impl;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    invoke-static {p0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->b(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;)Landroidx/camera/camera2/impl/UseCaseCameraState;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;

    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState_androidKt;->a(Landroidx/compose/foundation/text/input/internal/selection/TextFieldSelectionState;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Landroidx/compose/foundation/text/modifiers/SelectionController;

    invoke-static {p0}, Landroidx/compose/foundation/text/modifiers/SelectionController;->c(Landroidx/compose/foundation/text/modifiers/SelectionController;)Landroidx/compose/ui/text/TextLayoutResult;

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
