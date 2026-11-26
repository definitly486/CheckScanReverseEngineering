.class public final synthetic Lq01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/arch/core/util/Function;
.implements Lcom/google/android/gms/tasks/OnSuccessListener;
.implements Lxl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lq01;->b:I

    iput-object p1, p0, Lq01;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lq01;->b:I

    iget-object p0, p0, Lq01;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lm75;

    invoke-static {p0, p1}, Landroidx/room/RxRoom$Companion;->g(Lm75;Ljava/lang/Object;)Lx75;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/camera/view/CameraController;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/camera/view/CameraController;->setLinearZoom(F)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lq01;->c:Ljava/lang/Object;

    check-cast p0, Lf75;

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->m(Lf75;Ljava/lang/Object;)V

    return-void
.end method
