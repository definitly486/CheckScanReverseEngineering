.class public final Landroidx/camera/camera2/compat/quirk/DeviceQuirks;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/compat/quirk/DeviceQuirks;

.field private static final TAG:Ljava/lang/String; = "DeviceQuirks"

.field public static volatile all:Landroidx/camera/core/impl/Quirks;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;

    invoke-direct {v0}, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;-><init>()V

    sput-object v0, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->INSTANCE:Landroidx/camera/camera2/compat/quirk/DeviceQuirks;

    invoke-static {}, Landroidx/camera/core/impl/QuirkSettingsHolder;->instance()Landroidx/camera/core/impl/QuirkSettingsHolder;

    move-result-object v0

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lvm2;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroidx/camera/core/impl/QuirkSettingsHolder;->observe(Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final _init_$lambda$0(Landroidx/camera/core/impl/QuirkSettings;)V
    .locals 2

    new-instance v0, Landroidx/camera/core/impl/Quirks;

    sget-object v1, Landroidx/camera/camera2/compat/quirk/DeviceQuirksLoader;->INSTANCE:Landroidx/camera/camera2/compat/quirk/DeviceQuirksLoader;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, p0}, Landroidx/camera/camera2/compat/quirk/DeviceQuirksLoader;->loadQuirks(Landroidx/camera/core/impl/QuirkSettings;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/camera/core/impl/Quirks;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->setAll(Landroidx/camera/core/impl/Quirks;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "camera2 DeviceQuirks = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->getAll()Landroidx/camera/core/impl/Quirks;

    move-result-object v0

    invoke-static {v0}, Landroidx/camera/core/impl/Quirks;->toString(Landroidx/camera/core/impl/Quirks;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DeviceQuirks"

    invoke-static {v0, p0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Landroidx/camera/core/impl/QuirkSettings;)V
    .locals 0

    invoke-static {p0}, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->_init_$lambda$0(Landroidx/camera/core/impl/QuirkSettings;)V

    return-void
.end method

.method public static final getAll()Landroidx/camera/core/impl/Quirks;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->all:Landroidx/camera/core/impl/Quirks;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "all"

    invoke-static {v0}, Laa4;->j(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static synthetic getAll$annotations()V
    .locals 0

    return-void
.end method

.method public static final setAll(Landroidx/camera/core/impl/Quirks;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object p0, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->all:Landroidx/camera/core/impl/Quirks;

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/camera/core/impl/Quirk;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/camera/camera2/compat/quirk/DeviceQuirks;->getAll()Landroidx/camera/core/impl/Quirks;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/camera/core/impl/Quirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object p0

    return-object p0
.end method
