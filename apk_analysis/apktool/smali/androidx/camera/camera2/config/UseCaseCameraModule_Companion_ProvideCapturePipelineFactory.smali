.class public final Landroidx/camera/camera2/config/UseCaseCameraModule_Companion_ProvideCapturePipelineFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxs6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxs6;"
    }
.end annotation


# instance fields
.field private final capturePipelineImplProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/CapturePipelineImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final capturePipelineTorchCorrectionProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lxs6;Lxs6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/CapturePipelineImpl;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/config/UseCaseCameraModule_Companion_ProvideCapturePipelineFactory;->capturePipelineImplProvider:Lxs6;

    iput-object p2, p0, Landroidx/camera/camera2/config/UseCaseCameraModule_Companion_ProvideCapturePipelineFactory;->capturePipelineTorchCorrectionProvider:Lxs6;

    return-void
.end method

.method public static create(Lxs6;Lxs6;)Landroidx/camera/camera2/config/UseCaseCameraModule_Companion_ProvideCapturePipelineFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/CapturePipelineImpl;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;",
            ">;)",
            "Landroidx/camera/camera2/config/UseCaseCameraModule_Companion_ProvideCapturePipelineFactory;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/config/UseCaseCameraModule_Companion_ProvideCapturePipelineFactory;

    invoke-direct {v0, p0, p1}, Landroidx/camera/camera2/config/UseCaseCameraModule_Companion_ProvideCapturePipelineFactory;-><init>(Lxs6;Lxs6;)V

    return-object v0
.end method

.method public static provideCapturePipeline(Lws6;Lws6;)Landroidx/camera/camera2/impl/CapturePipeline;
    .locals 1
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

    sget-object v0, Landroidx/camera/camera2/config/UseCaseCameraModule;->Companion:Landroidx/camera/camera2/config/UseCaseCameraModule$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/camera/camera2/config/UseCaseCameraModule$Companion;->provideCapturePipeline(Lws6;Lws6;)Landroidx/camera/camera2/impl/CapturePipeline;

    move-result-object p0

    invoke-static {p0}, Lte6;->b(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Landroidx/camera/camera2/impl/CapturePipeline;
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/config/UseCaseCameraModule_Companion_ProvideCapturePipelineFactory;->capturePipelineImplProvider:Lxs6;

    iget-object p0, p0, Landroidx/camera/camera2/config/UseCaseCameraModule_Companion_ProvideCapturePipelineFactory;->capturePipelineTorchCorrectionProvider:Lxs6;

    invoke-static {v0, p0}, Landroidx/camera/camera2/config/UseCaseCameraModule_Companion_ProvideCapturePipelineFactory;->provideCapturePipeline(Lws6;Lws6;)Landroidx/camera/camera2/impl/CapturePipeline;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Landroidx/camera/camera2/config/UseCaseCameraModule_Companion_ProvideCapturePipelineFactory;->get()Landroidx/camera/camera2/impl/CapturePipeline;

    move-result-object p0

    return-object p0
.end method
