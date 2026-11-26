.class public final Landroidx/camera/camera2/config/UseCaseCameraModule$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/config/UseCaseCameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/camera2/config/UseCaseCameraModule$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideCapturePipeline(Lws6;Lws6;)Landroidx/camera/camera2/impl/CapturePipeline;
    .locals 0
    .annotation runtime Landroidx/camera/camera2/config/UseCaseCameraScope;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lws6<",
            "Landroidx/camera/camera2/impl/CapturePipelineImpl;",
            ">;",
            "Lws6<",
            "Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;",
            ">;)",
            "Landroidx/camera/camera2/impl/CapturePipeline;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->Companion:Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$Companion;

    invoke-virtual {p0}, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$Companion;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p2}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Landroidx/camera/camera2/impl/CapturePipeline;

    return-object p0

    :cond_0
    invoke-interface {p1}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Landroidx/camera/camera2/impl/CapturePipeline;

    return-object p0
.end method
