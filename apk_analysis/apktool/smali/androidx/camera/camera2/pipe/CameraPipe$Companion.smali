.class public final Landroidx/camera/camera2/pipe/CameraPipe$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/CameraPipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/camera/camera2/pipe/CameraPipe$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/CameraPipe$Companion;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/CameraPipe$Companion;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/CameraPipe$Companion;->$$INSTANCE:Landroidx/camera/camera2/pipe/CameraPipe$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroidx/camera/camera2/pipe/CameraPipe$Config;)Landroidx/camera/camera2/pipe/CameraPipe;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    const-string p0, "CameraPipe"

    :try_start_0
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent;->builder()Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Builder;

    move-result-object p0

    new-instance v0, Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;

    invoke-direct {v0, p1}, Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;-><init>(Landroidx/camera/camera2/pipe/CameraPipe$Config;)V

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Builder;->cameraPipeConfigModule(Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;)Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Builder;

    move-result-object p0

    new-instance v0, Landroidx/camera/camera2/pipe/config/ThreadConfigModule;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraPipe$Config;->getThreadConfig()Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/camera/camera2/pipe/config/ThreadConfigModule;-><init>(Landroidx/camera/camera2/pipe/CameraPipe$ThreadConfig;)V

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Builder;->threadConfigModule(Landroidx/camera/camera2/pipe/config/ThreadConfigModule;)Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$Builder;->build()Landroidx/camera/camera2/pipe/config/CameraPipeComponent;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    new-instance p1, Landroidx/camera/camera2/pipe/CameraPipeImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, p0}, Landroidx/camera/camera2/pipe/CameraPipeImpl;-><init>(Landroidx/camera/camera2/pipe/config/CameraPipeComponent;)V

    return-object p1

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method
