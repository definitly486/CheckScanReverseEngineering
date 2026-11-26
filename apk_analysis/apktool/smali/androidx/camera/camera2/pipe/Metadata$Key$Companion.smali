.class public final Landroidx/camera/camera2/pipe/Metadata$Key$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/Metadata$Key;
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

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/Metadata$Key$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getKeys$camera_camera2_pipe$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/String;)Landroidx/camera/camera2/pipe/Metadata$Key;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/camera/camera2/pipe/Metadata$Key<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    invoke-static {}, Laa4;->i()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final create(Ljava/lang/String;Lne4;)Landroidx/camera/camera2/pipe/Metadata$Key;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lne4<",
            "TT;>;)",
            "Landroidx/camera/camera2/pipe/Metadata$Key<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/Metadata$Key$Companion;->getKeys$camera_camera2_pipe()Ljava/util/Map;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    sget-object v0, Landroidx/camera/camera2/pipe/Metadata$Key;->Companion:Landroidx/camera/camera2/pipe/Metadata$Key$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/Metadata$Key$Companion;->getKeys$camera_camera2_pipe()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroidx/camera/camera2/pipe/Metadata$Key;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Landroidx/camera/camera2/pipe/Metadata$Key;-><init>(Ljava/lang/String;Lne4;Ljh2;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    check-cast v1, Landroidx/camera/camera2/pipe/Metadata$Key;

    invoke-static {v1}, Landroidx/camera/camera2/pipe/Metadata$Key;->access$getType$p(Landroidx/camera/camera2/pipe/Metadata$Key;)Lne4;

    move-result-object p1

    invoke-static {p1, p2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final getKeys$camera_camera2_pipe()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/camera/camera2/pipe/Metadata$Key<",
            "*>;>;"
        }
    .end annotation

    invoke-static {}, Landroidx/camera/camera2/pipe/Metadata$Key;->access$getKeys$cp()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
