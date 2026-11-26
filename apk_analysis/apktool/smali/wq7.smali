.class public final synthetic Lwq7;
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

    iput p2, p0, Lwq7;->b:I

    iput-object p1, p0, Lwq7;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lwq7;->b:I

    iget-object p0, p0, Lwq7;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/nq0;

    invoke-static {p0}, Lyads/nq0;->o0(Lyads/nq0;)Lyads/bj2;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl;

    invoke-static {p0}, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->a(Landroidx/camera/camera2/impl/UseCaseCameraImpl;)Landroidx/camera/camera2/impl/UseCaseSurfaceManager;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/compose/foundation/text/input/internal/TextFieldDecoratorModifierNode;

    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/TextFieldDecoratorModifierNode;->a(Landroidx/compose/foundation/text/input/internal/TextFieldDecoratorModifierNode;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    invoke-static {p0}, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->c(Landroidx/camera/camera2/adapter/SessionConfigAdapter;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
