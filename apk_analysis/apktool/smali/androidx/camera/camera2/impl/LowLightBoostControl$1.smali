.class public final Landroidx/camera/camera2/impl/LowLightBoostControl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/Request$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/impl/LowLightBoostControl;-><init>(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/impl/State3AControl;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/ComboRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/camera2/impl/LowLightBoostControl;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/impl/LowLightBoostControl;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/impl/LowLightBoostControl$1;->this$0:Landroidx/camera/camera2/impl/LowLightBoostControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTotalCaptureResult-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x23

    if-lt p1, p2, :cond_1

    iget-object p1, p0, Landroidx/camera/camera2/impl/LowLightBoostControl$1;->this$0:Landroidx/camera/camera2/impl/LowLightBoostControl;

    invoke-static {p1}, Landroidx/camera/camera2/impl/LowLightBoostControl;->access$get_requestControl$p(Landroidx/camera/camera2/impl/LowLightBoostControl;)Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/camera/camera2/impl/LowLightBoostControl$1;->this$0:Landroidx/camera/camera2/impl/LowLightBoostControl;

    invoke-static {p1}, Landroidx/camera/camera2/impl/LowLightBoostControl;->access$isLowLightBoostOn$p(Landroidx/camera/camera2/impl/LowLightBoostControl;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p4}, Landroidx/camera/camera2/pipe/FrameInfo;->getMetadata()Landroidx/camera/camera2/pipe/FrameMetadata;

    move-result-object p1

    sget-object p2, Landroid/hardware/camera2/CaptureResult;->CONTROL_LOW_LIGHT_BOOST_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p2}, Landroidx/camera/camera2/pipe/FrameMetadata;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/camera/camera2/impl/LowLightBoostControl$1;->this$0:Landroidx/camera/camera2/impl/LowLightBoostControl;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p0}, Landroidx/camera/camera2/impl/LowLightBoostControl;->access$get_lowLightBoostState$p(Landroidx/camera/camera2/impl/LowLightBoostControl;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {p0, p2, p3}, Landroidx/camera/camera2/impl/LowLightBoostControl;->access$setLiveDataValue(Landroidx/camera/camera2/impl/LowLightBoostControl;Landroidx/lifecycle/MutableLiveData;I)V

    :cond_1
    return-void
.end method
