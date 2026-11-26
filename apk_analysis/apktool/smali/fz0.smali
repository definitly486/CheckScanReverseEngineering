.class public final synthetic Lfz0;
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

    iput p2, p0, Lfz0;->b:I

    iput-object p1, p0, Lfz0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lfz0;->b:I

    iget-object p0, p0, Lfz0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/hh0;

    invoke-static {p0}, Lyads/hh0;->a(Lyads/hh0;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/fd0;

    invoke-static {p0}, Lyads/fd0;->a(Lyads/fd0;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    invoke-static {p0}, Landroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1;->a(Landroidx/compose/foundation/text/TextFieldScrollerPosition;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/compose/foundation/ScrollNode;

    invoke-static {p0}, Landroidx/compose/foundation/ScrollNode;->b(Landroidx/compose/foundation/ScrollNode;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->e(Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;)Ljava/util/Set;

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
