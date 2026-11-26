.class public final synthetic Lgc5;
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

    iput p2, p0, Lgc5;->b:I

    iput-object p1, p0, Lgc5;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lgc5;->b:I

    iget-object p0, p0, Lgc5;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/nq0;

    invoke-static {p0}, Lyads/nq0;->Q(Lyads/nq0;)Lyads/hd1;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl;

    invoke-static {p0}, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->b(Landroidx/camera/camera2/impl/UseCaseCameraImpl;)Landroidx/camera/camera2/impl/CapturePipeline;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/compose/foundation/text/input/internal/TextFieldDecoratorModifierNode;

    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/TextFieldDecoratorModifierNode;->t(Landroidx/compose/foundation/text/input/internal/TextFieldDecoratorModifierNode;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    invoke-static {p0}, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->d(Landroidx/camera/camera2/adapter/SessionConfigAdapter;)Landroidx/camera/core/impl/SessionConfig;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Landroidx/compose/ui/unit/Density;

    invoke-static {p0}, Landroidx/compose/material3/ModalWideNavigationRailState;->c(Landroidx/compose/ui/unit/Density;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

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
