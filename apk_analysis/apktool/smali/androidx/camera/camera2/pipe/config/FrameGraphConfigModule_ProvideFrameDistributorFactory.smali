.class public final Landroidx/camera/camera2/pipe/config/FrameGraphConfigModule_ProvideFrameDistributorFactory;
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
.field private final module:Landroidx/camera/camera2/pipe/config/FrameGraphConfigModule;


# direct methods
.method private constructor <init>(Landroidx/camera/camera2/pipe/config/FrameGraphConfigModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/FrameGraphConfigModule_ProvideFrameDistributorFactory;->module:Landroidx/camera/camera2/pipe/config/FrameGraphConfigModule;

    return-void
.end method

.method public static create(Landroidx/camera/camera2/pipe/config/FrameGraphConfigModule;)Landroidx/camera/camera2/pipe/config/FrameGraphConfigModule_ProvideFrameDistributorFactory;
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/config/FrameGraphConfigModule_ProvideFrameDistributorFactory;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/pipe/config/FrameGraphConfigModule_ProvideFrameDistributorFactory;-><init>(Landroidx/camera/camera2/pipe/config/FrameGraphConfigModule;)V

    return-object v0
.end method

.method public static provideFrameDistributor(Landroidx/camera/camera2/pipe/config/FrameGraphConfigModule;)Landroidx/camera/camera2/pipe/internal/FrameDistributor;
    .locals 0

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/config/FrameGraphConfigModule;->provideFrameDistributor()Landroidx/camera/camera2/pipe/internal/FrameDistributor;

    move-result-object p0

    invoke-static {p0}, Lte6;->b(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Landroidx/camera/camera2/pipe/internal/FrameDistributor;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/FrameGraphConfigModule_ProvideFrameDistributorFactory;->module:Landroidx/camera/camera2/pipe/config/FrameGraphConfigModule;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/config/FrameGraphConfigModule_ProvideFrameDistributorFactory;->provideFrameDistributor(Landroidx/camera/camera2/pipe/config/FrameGraphConfigModule;)Landroidx/camera/camera2/pipe/internal/FrameDistributor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/config/FrameGraphConfigModule_ProvideFrameDistributorFactory;->get()Landroidx/camera/camera2/pipe/internal/FrameDistributor;

    move-result-object p0

    return-object p0
.end method
