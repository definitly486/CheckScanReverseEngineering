.class public final Landroidx/camera/camera2/impl/DisplayInfoManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/impl/DisplayInfoManager$Companion;
    }
.end annotation


# static fields
.field private static final ABNORMAL_DISPLAY_SIZE_THRESHOLD:Landroid/util/Size;

.field public static final Companion:Landroidx/camera/camera2/impl/DisplayInfoManager$Companion;

.field private static final FALLBACK_DISPLAY_SIZE:Landroid/util/Size;

.field private static final MAX_PREVIEW_SIZE:Landroid/util/Size;

.field private static volatile instance:Landroidx/camera/camera2/impl/DisplayInfoManager;


# instance fields
.field private final displayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final displayManager:Landroid/hardware/display/DisplayManager;

.field private final displaySizeCorrector:Landroidx/camera/camera2/compat/workaround/DisplaySizeCorrector;

.field private volatile displays:[Landroid/view/Display;

.field private final lock:Ljava/lang/Object;

.field private final maxPreviewSize:Landroidx/camera/camera2/compat/workaround/MaxPreviewSize;

.field private volatile previewSize:Landroid/util/Size;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/camera/camera2/impl/DisplayInfoManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/impl/DisplayInfoManager$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/impl/DisplayInfoManager;->Companion:Landroidx/camera/camera2/impl/DisplayInfoManager$Companion;

    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x780

    const/16 v2, 0x438

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Landroidx/camera/camera2/impl/DisplayInfoManager;->MAX_PREVIEW_SIZE:Landroid/util/Size;

    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x140

    const/16 v2, 0xf0

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Landroidx/camera/camera2/impl/DisplayInfoManager;->ABNORMAL_DISPLAY_SIZE_THRESHOLD:Landroid/util/Size;

    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x280

    const/16 v2, 0x1e0

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Landroidx/camera/camera2/impl/DisplayInfoManager;->FALLBACK_DISPLAY_SIZE:Landroid/util/Size;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/camera/camera2/compat/workaround/MaxPreviewSize;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Landroidx/camera/camera2/compat/workaround/MaxPreviewSize;-><init>(Landroidx/camera/camera2/compat/quirk/ExtraCroppingQuirk;ILjh2;)V

    iput-object v0, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->maxPreviewSize:Landroidx/camera/camera2/compat/workaround/MaxPreviewSize;

    new-instance v0, Landroidx/camera/camera2/compat/workaround/DisplaySizeCorrector;

    invoke-direct {v0}, Landroidx/camera/camera2/compat/workaround/DisplaySizeCorrector;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->displaySizeCorrector:Landroidx/camera/camera2/compat/workaround/DisplaySizeCorrector;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->lock:Ljava/lang/Object;

    new-instance v0, Landroidx/camera/camera2/impl/DisplayInfoManager$displayListener$1;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/impl/DisplayInfoManager$displayListener$1;-><init>(Landroidx/camera/camera2/impl/DisplayInfoManager;)V

    iput-object v0, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->displayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const-string v1, "display"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroid/hardware/display/DisplayManager;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p1, v0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    iput-object p1, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->displayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljh2;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/DisplayInfoManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getDisplayListener$p(Landroidx/camera/camera2/impl/DisplayInfoManager;)Landroid/hardware/display/DisplayManager$DisplayListener;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->displayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    return-object p0
.end method

.method public static final synthetic access$getDisplayManager$p(Landroidx/camera/camera2/impl/DisplayInfoManager;)Landroid/hardware/display/DisplayManager;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->displayManager:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method public static final synthetic access$getInstance$cp()Landroidx/camera/camera2/impl/DisplayInfoManager;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/impl/DisplayInfoManager;->instance:Landroidx/camera/camera2/impl/DisplayInfoManager;

    return-object v0
.end method

.method public static final synthetic access$getLock$p(Landroidx/camera/camera2/impl/DisplayInfoManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$setDisplays$p(Landroidx/camera/camera2/impl/DisplayInfoManager;[Landroid/view/Display;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->displays:[Landroid/view/Display;

    return-void
.end method

.method public static final synthetic access$setInstance$cp(Landroidx/camera/camera2/impl/DisplayInfoManager;)V
    .locals 0

    sput-object p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->instance:Landroidx/camera/camera2/impl/DisplayInfoManager;

    return-void
.end method

.method public static final synthetic access$setPreviewSize$p(Landroidx/camera/camera2/impl/DisplayInfoManager;Landroid/util/Size;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->previewSize:Landroid/util/Size;

    return-void
.end method

.method private final calculatePreviewSize()Landroid/util/Size;
    .locals 3

    invoke-direct {p0}, Landroidx/camera/camera2/impl/DisplayInfoManager;->getCorrectedDisplaySize()Landroid/util/Size;

    move-result-object v0

    sget-object v1, Landroidx/camera/camera2/impl/DisplayInfoManager;->MAX_PREVIEW_SIZE:Landroid/util/Size;

    invoke-static {v1, v0}, Landroidx/camera/core/internal/utils/SizeUtil;->isSmallerByArea(Landroid/util/Size;Landroid/util/Size;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    :cond_0
    iget-object p0, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->maxPreviewSize:Landroidx/camera/camera2/compat/workaround/MaxPreviewSize;

    invoke-virtual {p0, v0}, Landroidx/camera/camera2/compat/workaround/MaxPreviewSize;->getMaxPreviewResolution(Landroid/util/Size;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method private final getCorrectedDisplaySize()Landroid/util/Size;
    .locals 3

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/camera/camera2/impl/DisplayInfoManager;->getMaxSizeDisplay(Z)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    new-instance v1, Landroid/util/Size;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v2, v0}, Landroid/util/Size;-><init>(II)V

    sget-object v0, Landroidx/camera/camera2/impl/DisplayInfoManager;->ABNORMAL_DISPLAY_SIZE_THRESHOLD:Landroid/util/Size;

    invoke-static {v1, v0}, Landroidx/camera/core/internal/utils/SizeUtil;->isSmallerByArea(Landroid/util/Size;Landroid/util/Size;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->displaySizeCorrector:Landroidx/camera/camera2/compat/workaround/DisplaySizeCorrector;

    invoke-virtual {p0}, Landroidx/camera/camera2/compat/workaround/DisplaySizeCorrector;->getDisplaySize()Landroid/util/Size;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->FALLBACK_DISPLAY_SIZE:Landroid/util/Size;

    :cond_0
    move-object v1, p0

    :cond_1
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v0

    if-le p0, v0, :cond_2

    new-instance p0, Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/util/Size;-><init>(II)V

    return-object p0

    :cond_2
    return-object v1
.end method

.method private final getDisplays()[Landroid/view/Display;
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->displays:[Landroid/view/Display;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->displayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->displays:[Landroid/view/Display;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static synthetic getMaxSizeDisplay$default(Landroidx/camera/camera2/impl/DisplayInfoManager;ZILjava/lang/Object;)Landroid/view/Display;
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/DisplayInfoManager;->getMaxSizeDisplay(Z)Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getMaxSizeDisplay(Z)Landroid/view/Display;
    .locals 13

    invoke-direct {p0}, Landroidx/camera/camera2/impl/DisplayInfoManager;->getDisplays()[Landroid/view/Display;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    aget-object p0, p0, v1

    return-object p0

    :cond_0
    array-length v0, p0

    const/4 v3, -0x1

    const/4 v4, 0x0

    move v5, v3

    move-object v6, v4

    move-object v7, v6

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v8, p0, v1

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v8, v9}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v10, v9, Landroid/graphics/Point;->x:I

    iget v11, v9, Landroid/graphics/Point;->y:I

    mul-int v12, v10, v11

    if-le v12, v3, :cond_1

    mul-int/2addr v10, v11

    move-object v6, v8

    move v3, v10

    :cond_1
    invoke-virtual {v8}, Landroid/view/Display;->getState()I

    move-result v10

    if-eq v10, v2, :cond_2

    iget v10, v9, Landroid/graphics/Point;->x:I

    iget v9, v9, Landroid/graphics/Point;->y:I

    mul-int v11, v10, v9

    if-le v11, v5, :cond_2

    mul-int/2addr v10, v9

    move-object v7, v8

    move v5, v10

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_5

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    move-object v6, v7

    :cond_5
    :goto_1
    if-eqz v6, :cond_6

    return-object v6

    :cond_6
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x21

    const-string v0, "No displays found from "

    invoke-static {p0, v0, p1}, Lcg;->f(Ljava/lang/Object;Ljava/lang/String;I)V

    return-object v4
.end method

.method public final getPreviewSize()Landroid/util/Size;
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->previewSize:Landroid/util/Size;

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->previewSize:Landroid/util/Size;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroidx/camera/camera2/impl/DisplayInfoManager;->calculatePreviewSize()Landroid/util/Size;

    move-result-object v1

    iput-object v1, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->previewSize:Landroid/util/Size;

    iget-object p0, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->previewSize:Landroid/util/Size;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public final refreshPreviewSize()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroidx/camera/camera2/impl/DisplayInfoManager;->calculatePreviewSize()Landroid/util/Size;

    move-result-object v1

    iput-object v1, p0, Landroidx/camera/camera2/impl/DisplayInfoManager;->previewSize:Landroid/util/Size;

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
