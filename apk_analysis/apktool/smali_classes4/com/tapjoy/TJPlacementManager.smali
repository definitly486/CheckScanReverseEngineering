.class public Lcom/tapjoy/TJPlacementManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/tapjoy/internal/w2;

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/w2;

    invoke-direct {v0}, Lcom/tapjoy/internal/w2;-><init>()V

    sput-object v0, Lcom/tapjoy/TJPlacementManager;->a:Lcom/tapjoy/internal/w2;

    const/4 v0, 0x0

    sput v0, Lcom/tapjoy/TJPlacementManager;->b:I

    sput v0, Lcom/tapjoy/TJPlacementManager;->c:I

    const/4 v0, 0x3

    sput v0, Lcom/tapjoy/TJPlacementManager;->d:I

    sput v0, Lcom/tapjoy/TJPlacementManager;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/tapjoy/TJCorePlacement;
    .locals 1

    .line 81
    sget-object v0, Lcom/tapjoy/TJPlacementManager;->a:Lcom/tapjoy/internal/w2;

    monitor-enter v0

    .line 82
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/w2;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/TJCorePlacement;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 83
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a(Ljava/lang/String;Z)Lcom/tapjoy/TJCorePlacement;
    .locals 4

    const-string v0, "Created TJCorePlacement with GUID: "

    new-instance v1, Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v2, "!SYSTEM!"

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, p0

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TJCorePlacement key="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    sget-object v2, Lcom/tapjoy/TJPlacementManager;->a:Lcom/tapjoy/internal/w2;

    monitor-enter v2

    :try_start_0
    invoke-static {v1}, Lcom/tapjoy/TJPlacementManager;->a(Ljava/lang/String;)Lcom/tapjoy/TJCorePlacement;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v3, Lcom/tapjoy/TJCorePlacement;

    invoke-direct {v3, p0, v1, p1}, Lcom/tapjoy/TJCorePlacement;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2, v1, v3}, Lcom/tapjoy/internal/w2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, v3, Lcom/tapjoy/TJCorePlacement;->e:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_2
    monitor-exit v2

    return-object v3

    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static canCachePlacement()Z
    .locals 2

    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->getCachedPlacementCount()I

    move-result v0

    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->getCachedPlacementLimit()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static canPreRenderPlacement()Z
    .locals 2

    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->getPreRenderedPlacementCount()I

    move-result v0

    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->getPreRenderedPlacementLimit()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static createPlacement(Landroid/content/Context;Ljava/lang/String;ZLcom/tapjoy/TJPlacementListener;)Lcom/tapjoy/TJPlacement;
    .locals 0

    invoke-static {p1, p2}, Lcom/tapjoy/TJPlacementManager;->a(Ljava/lang/String;Z)Lcom/tapjoy/TJCorePlacement;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/tapjoy/TJCorePlacement;->setContext(Landroid/content/Context;)V

    new-instance p0, Lcom/tapjoy/TJPlacement;

    invoke-direct {p0, p1, p3}, Lcom/tapjoy/TJPlacement;-><init>(Lcom/tapjoy/TJCorePlacement;Lcom/tapjoy/TJPlacementListener;)V

    return-object p0
.end method

.method public static decrementPlacementCacheCount()V
    .locals 1

    sget v0, Lcom/tapjoy/TJPlacementManager;->b:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/tapjoy/TJPlacementManager;->b:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    sput v0, Lcom/tapjoy/TJPlacementManager;->b:I

    :cond_0
    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->printPlacementCacheInformation()V

    return-void
.end method

.method public static decrementPlacementPreRenderCount()V
    .locals 1

    sget v0, Lcom/tapjoy/TJPlacementManager;->c:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/tapjoy/TJPlacementManager;->c:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    sput v0, Lcom/tapjoy/TJPlacementManager;->c:I

    :cond_0
    return-void
.end method

.method public static dismissContentShowing()V
    .locals 2

    sget-object v0, Lcom/tapjoy/TJAdUnitActivity;->i:Lcom/tapjoy/TJAdUnitActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJAdUnitActivity;->a(Z)V

    :cond_0
    return-void
.end method

.method public static getCachedPlacementCount()I
    .locals 1

    sget v0, Lcom/tapjoy/TJPlacementManager;->b:I

    return v0
.end method

.method public static getCachedPlacementLimit()I
    .locals 1

    sget v0, Lcom/tapjoy/TJPlacementManager;->d:I

    return v0
.end method

.method public static getPreRenderedPlacementCount()I
    .locals 1

    sget v0, Lcom/tapjoy/TJPlacementManager;->c:I

    return v0
.end method

.method public static getPreRenderedPlacementLimit()I
    .locals 1

    sget v0, Lcom/tapjoy/TJPlacementManager;->e:I

    return v0
.end method

.method public static incrementPlacementCacheCount()V
    .locals 2

    sget v0, Lcom/tapjoy/TJPlacementManager;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tapjoy/TJPlacementManager;->b:I

    sget v1, Lcom/tapjoy/TJPlacementManager;->d:I

    if-le v0, v1, :cond_0

    sput v1, Lcom/tapjoy/TJPlacementManager;->b:I

    :cond_0
    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->printPlacementCacheInformation()V

    return-void
.end method

.method public static incrementPlacementPreRenderCount()V
    .locals 2

    sget v0, Lcom/tapjoy/TJPlacementManager;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tapjoy/TJPlacementManager;->c:I

    sget v1, Lcom/tapjoy/TJPlacementManager;->e:I

    if-le v0, v1, :cond_0

    sput v1, Lcom/tapjoy/TJPlacementManager;->c:I

    :cond_0
    return-void
.end method

.method public static printPlacementCacheInformation()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Space available in placement cache: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/tapjoy/TJPlacementManager;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " out of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/tapjoy/TJPlacementManager;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static printPlacementPreRenderInformation()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Space available for placement pre-render: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/tapjoy/TJPlacementManager;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " out of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/tapjoy/TJPlacementManager;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static setCachedPlacementLimit(I)V
    .locals 0

    sput p0, Lcom/tapjoy/TJPlacementManager;->d:I

    return-void
.end method

.method public static setPreRenderedPlacementLimit(I)V
    .locals 0

    sput p0, Lcom/tapjoy/TJPlacementManager;->e:I

    return-void
.end method
