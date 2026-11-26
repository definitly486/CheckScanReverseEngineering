.class public Lcom/tapjoy/TJMemoryDataStorage;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Lcom/tapjoy/TJMemoryDataStorage;


# instance fields
.field public final a:Ljava/util/WeakHashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TJMemoryDataStorage;->a:Ljava/util/WeakHashMap;

    return-void
.end method

.method public static getInstance()Lcom/tapjoy/TJMemoryDataStorage;
    .locals 2

    sget-object v0, Lcom/tapjoy/TJMemoryDataStorage;->b:Lcom/tapjoy/TJMemoryDataStorage;

    if-nez v0, :cond_1

    const-class v1, Lcom/tapjoy/TJMemoryDataStorage;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tapjoy/TJMemoryDataStorage;->b:Lcom/tapjoy/TJMemoryDataStorage;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tapjoy/TJMemoryDataStorage;

    invoke-direct {v0}, Lcom/tapjoy/TJMemoryDataStorage;-><init>()V

    sput-object v0, Lcom/tapjoy/TJMemoryDataStorage;->b:Lcom/tapjoy/TJMemoryDataStorage;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TJMemoryDataStorage;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TJMemoryDataStorage;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TJMemoryDataStorage;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
