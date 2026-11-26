.class final Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$FrameGraphComponentBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/config/FrameGraphComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FrameGraphComponentBuilder"
.end annotation


# instance fields
.field private final cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

.field private frameGraphConfigModule:Landroidx/camera/camera2/pipe/config/FrameGraphConfigModule;


# direct methods
.method private constructor <init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$FrameGraphComponentBuilder;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$FrameGraphComponentBuilder;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;)V

    return-void
.end method


# virtual methods
.method public build()Landroidx/camera/camera2/pipe/config/FrameGraphComponent;
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$FrameGraphComponentBuilder;->frameGraphConfigModule:Landroidx/camera/camera2/pipe/config/FrameGraphConfigModule;

    const-class v1, Landroidx/camera/camera2/pipe/config/FrameGraphConfigModule;

    invoke-static {v0, v1}, Lte6;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$FrameGraphComponentImpl;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$FrameGraphComponentBuilder;->cameraPipeComponentImpl:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$FrameGraphComponentBuilder;->frameGraphConfigModule:Landroidx/camera/camera2/pipe/config/FrameGraphConfigModule;

    invoke-direct {v0, v1, p0}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$FrameGraphComponentImpl;-><init>(Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;Landroidx/camera/camera2/pipe/config/FrameGraphConfigModule;)V

    return-object v0
.end method

.method public frameGraphConfigModule(Landroidx/camera/camera2/pipe/config/FrameGraphConfigModule;)Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$FrameGraphComponentBuilder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$FrameGraphComponentBuilder;->frameGraphConfigModule:Landroidx/camera/camera2/pipe/config/FrameGraphConfigModule;

    return-object p0
.end method

.method public bridge synthetic frameGraphConfigModule(Landroidx/camera/camera2/pipe/config/FrameGraphConfigModule;)Landroidx/camera/camera2/pipe/config/FrameGraphComponent$Builder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$FrameGraphComponentBuilder;->frameGraphConfigModule(Landroidx/camera/camera2/pipe/config/FrameGraphConfigModule;)Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$FrameGraphComponentBuilder;

    move-result-object p0

    return-object p0
.end method
