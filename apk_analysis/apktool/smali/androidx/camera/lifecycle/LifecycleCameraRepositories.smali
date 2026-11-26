.class public final Landroidx/camera/lifecycle/LifecycleCameraRepositories;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/camera/lifecycle/LifecycleCameraRepositories;

.field private static final repositoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/camera/lifecycle/LifecycleCameraRepository;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/lifecycle/LifecycleCameraRepositories;

    invoke-direct {v0}, Landroidx/camera/lifecycle/LifecycleCameraRepositories;-><init>()V

    sput-object v0, Landroidx/camera/lifecycle/LifecycleCameraRepositories;->INSTANCE:Landroidx/camera/lifecycle/LifecycleCameraRepositories;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Landroidx/camera/lifecycle/LifecycleCameraRepositories;->repositoryMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getInstance$camera_lifecycle(I)Landroidx/camera/lifecycle/LifecycleCameraRepository;
    .locals 3

    sget-object v0, Landroidx/camera/lifecycle/LifecycleCameraRepositories;->repositoryMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Landroidx/camera/lifecycle/LifecycleCameraRepository;

    invoke-direct {v2, p0}, Landroidx/camera/lifecycle/LifecycleCameraRepository;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    check-cast v2, Landroidx/camera/lifecycle/LifecycleCameraRepository;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v2

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static synthetic getInstance$camera_lifecycle$default(IILjava/lang/Object;)Landroidx/camera/lifecycle/LifecycleCameraRepository;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    invoke-static {}, Landroidx/camera/core/impl/utils/ContextUtil;->getDefaultDeviceId()I

    move-result p0

    :cond_0
    invoke-static {p0}, Landroidx/camera/lifecycle/LifecycleCameraRepositories;->getInstance$camera_lifecycle(I)Landroidx/camera/lifecycle/LifecycleCameraRepository;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final clear$camera_lifecycle()V
    .locals 1

    sget-object p0, Landroidx/camera/lifecycle/LifecycleCameraRepositories;->repositoryMap:Ljava/util/Map;

    monitor-enter p0

    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    sget-object v0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
