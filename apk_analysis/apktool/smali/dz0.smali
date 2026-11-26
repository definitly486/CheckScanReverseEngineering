.class public final synthetic Ldz0;
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

    iput p2, p0, Ldz0;->b:I

    iput-object p1, p0, Ldz0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ldz0;->b:I

    iget-object p0, p0, Ldz0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lll3;

    invoke-static {p0}, Lyads/uw5;->a(Lll3;)Lj59;

    move-result-object p0

    :pswitch_0
    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;

    invoke-static {p0}, Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;->a(Landroidx/camera/video/internal/workaround/DefaultEncoderProfilesProvider;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->a(Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
