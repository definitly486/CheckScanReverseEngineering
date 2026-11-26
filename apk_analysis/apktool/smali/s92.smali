.class public final synthetic Ls92;
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

    iput p2, p0, Ls92;->b:I

    iput-object p1, p0, Ls92;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ls92;->b:I

    iget-object p0, p0, Ls92;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/work/impl/WorkContinuationImpl;

    invoke-static {p0}, Landroidx/work/impl/WorkContinuationImpl;->a(Landroidx/work/impl/WorkContinuationImpl;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/camera/camera2/impl/UseCaseCameraImpl;

    invoke-static {p0}, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->c(Landroidx/camera/camera2/impl/UseCaseCameraImpl;)Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/compose/foundation/text/input/internal/TextFieldDecoratorModifierNode;

    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/TextFieldDecoratorModifierNode;->p(Landroidx/compose/foundation/text/input/internal/TextFieldDecoratorModifierNode;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    invoke-static {p0}, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->b(Landroidx/camera/camera2/adapter/SessionConfigAdapter;)Landroidx/camera/core/impl/SessionConfig$ValidatingBuilder;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Landroidx/compose/material3/DatePickerColors;

    invoke-static {p0}, Landroidx/compose/material3/DatePickerColors;->a(Landroidx/compose/material3/DatePickerColors;)Landroidx/compose/material3/TextFieldColors;

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
