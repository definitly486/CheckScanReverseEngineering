.class abstract Lorg/conscrypt/AbstractSessionContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/SSLSessionContext;


# static fields
.field private static final DEFAULT_SESSION_TIMEOUT_SECONDS:I = 0x7080


# instance fields
.field private final lock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private volatile maximumSize:I

.field private final sessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/conscrypt/ByteArray;",
            "Lorg/conscrypt/NativeSslSession;",
            ">;"
        }
    .end annotation
.end field

.field private volatile sslCtxNativePointer:J

.field private volatile timeout:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7080

    iput v0, p0, Lorg/conscrypt/AbstractSessionContext;->timeout:I

    invoke-static {}, Lorg/conscrypt/NativeCrypto;->SSL_CTX_new()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/conscrypt/AbstractSessionContext;->sslCtxNativePointer:J

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/conscrypt/AbstractSessionContext;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    new-instance v0, Lorg/conscrypt/AbstractSessionContext$1;

    invoke-direct {v0, p0}, Lorg/conscrypt/AbstractSessionContext$1;-><init>(Lorg/conscrypt/AbstractSessionContext;)V

    iput-object v0, p0, Lorg/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    iput p1, p0, Lorg/conscrypt/AbstractSessionContext;->maximumSize:I

    return-void
.end method

.method public static synthetic access$000(Lorg/conscrypt/AbstractSessionContext;)I
    .locals 0

    iget p0, p0, Lorg/conscrypt/AbstractSessionContext;->maximumSize:I

    return p0
.end method

.method private freeNative()V
    .locals 4

    iget-object v0, p0, Lorg/conscrypt/AbstractSessionContext;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lorg/conscrypt/AbstractSessionContext;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/conscrypt/AbstractSessionContext;->sslCtxNativePointer:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/conscrypt/AbstractSessionContext;->sslCtxNativePointer:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->SSL_CTX_free(JLorg/conscrypt/AbstractSessionContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lorg/conscrypt/AbstractSessionContext;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_1
    iget-object p0, p0, Lorg/conscrypt/AbstractSessionContext;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private isValid()Z
    .locals 4

    iget-wide v0, p0, Lorg/conscrypt/AbstractSessionContext;->sslCtxNativePointer:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private setTimeout(I)V
    .locals 4

    iget-object v0, p0, Lorg/conscrypt/AbstractSessionContext;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lorg/conscrypt/AbstractSessionContext;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/conscrypt/AbstractSessionContext;->sslCtxNativePointer:J

    int-to-long v2, p1

    invoke-static {v0, v1, p0, v2, v3}, Lorg/conscrypt/NativeCrypto;->SSL_CTX_set_timeout(JLorg/conscrypt/AbstractSessionContext;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lorg/conscrypt/AbstractSessionContext;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_1
    iget-object p0, p0, Lorg/conscrypt/AbstractSessionContext;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method private trimToSize()V
    .locals 4

    iget-object v0, p0, Lorg/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget v2, p0, Lorg/conscrypt/AbstractSessionContext;->maximumSize:I

    if-le v1, v2, :cond_0

    iget v2, p0, Lorg/conscrypt/AbstractSessionContext;->maximumSize:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/conscrypt/NativeSslSession;

    invoke-virtual {p0, v1}, Lorg/conscrypt/AbstractSessionContext;->onBeforeRemoveSession(Lorg/conscrypt/NativeSslSession;)V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final cacheSession(Lorg/conscrypt/NativeSslSession;)V
    .locals 3

    invoke-virtual {p1}, Lorg/conscrypt/NativeSslSession;->getId()[B

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lorg/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    new-instance v2, Lorg/conscrypt/ByteArray;

    invoke-direct {v2, v0}, Lorg/conscrypt/ByteArray;-><init>([B)V

    iget-object v0, p0, Lorg/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/conscrypt/NativeSslSession;

    invoke-virtual {p0, v0}, Lorg/conscrypt/AbstractSessionContext;->removeSession(Lorg/conscrypt/NativeSslSession;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lorg/conscrypt/AbstractSessionContext;->onBeforeAddSession(Lorg/conscrypt/NativeSslSession;)V

    iget-object p0, p0, Lorg/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {p0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    return-void
.end method

.method public finalize()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lorg/conscrypt/AbstractSessionContext;->freeNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final getIds()Ljava/util/Enumeration;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "[B>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/conscrypt/NativeSslSession;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/conscrypt/NativeSslSession;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lorg/conscrypt/AbstractSessionContext$2;

    invoke-direct {v0, p0, v1}, Lorg/conscrypt/AbstractSessionContext$2;-><init>(Lorg/conscrypt/AbstractSessionContext;Ljava/util/Iterator;)V

    return-object v0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getSession([B)Ljavax/net/ssl/SSLSession;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    new-instance v1, Lorg/conscrypt/ByteArray;

    invoke-direct {v1, p1}, Lorg/conscrypt/ByteArray;-><init>([B)V

    iget-object p1, p0, Lorg/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lorg/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/conscrypt/NativeSslSession;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/conscrypt/NativeSslSession;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/conscrypt/NativeSslSession;->toSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    const-string p0, "sessionId"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    return-object v0
.end method

.method public final getSessionCacheSize()I
    .locals 0

    iget p0, p0, Lorg/conscrypt/AbstractSessionContext;->maximumSize:I

    return p0
.end method

.method public final getSessionFromCache([B)Lorg/conscrypt/NativeSslSession;
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    new-instance v2, Lorg/conscrypt/ByteArray;

    invoke-direct {v2, p1}, Lorg/conscrypt/ByteArray;-><init>([B)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/conscrypt/NativeSslSession;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/conscrypt/NativeSslSession;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lorg/conscrypt/NativeSslSession;->isSingleUse()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v1}, Lorg/conscrypt/AbstractSessionContext;->removeSession(Lorg/conscrypt/NativeSslSession;)V

    :cond_1
    return-object v1

    :cond_2
    invoke-virtual {p0, p1}, Lorg/conscrypt/AbstractSessionContext;->getSessionFromPersistentCache([B)Lorg/conscrypt/NativeSslSession;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public abstract getSessionFromPersistentCache([B)Lorg/conscrypt/NativeSslSession;
.end method

.method public final getSessionTimeout()I
    .locals 0

    iget p0, p0, Lorg/conscrypt/AbstractSessionContext;->timeout:I

    return p0
.end method

.method public initSpake(Lorg/conscrypt/SSLParametersImpl;)V
    .locals 9

    invoke-virtual {p1}, Lorg/conscrypt/SSLParametersImpl;->getSpake2PlusKeyManager()Lorg/conscrypt/Spake2PlusKeyManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/conscrypt/Spake2PlusKeyManager;->getContext()[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/conscrypt/Spake2PlusKeyManager;->getIdProver()[B

    move-result-object v2

    invoke-virtual {p1}, Lorg/conscrypt/Spake2PlusKeyManager;->getIdVerifier()[B

    move-result-object v3

    invoke-virtual {p1}, Lorg/conscrypt/Spake2PlusKeyManager;->getPassword()[B

    move-result-object v1

    invoke-virtual {p1}, Lorg/conscrypt/Spake2PlusKeyManager;->isClient()Z

    move-result v4

    invoke-virtual {p1}, Lorg/conscrypt/Spake2PlusKeyManager;->getHandshakeLimit()I

    move-result v5

    iget-object p1, p0, Lorg/conscrypt/AbstractSessionContext;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lorg/conscrypt/AbstractSessionContext;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide v6, p0, Lorg/conscrypt/AbstractSessionContext;->sslCtxNativePointer:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v8, p0

    :try_start_1
    invoke-static/range {v0 .. v8}, Lorg/conscrypt/NativeCrypto;->SSL_CTX_set_spake_credential([B[B[B[BZIJLorg/conscrypt/AbstractSessionContext;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_0
    move-object p0, v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v8, p0

    goto :goto_0

    :cond_0
    move-object v8, p0

    :goto_1
    iget-object p0, v8, Lorg/conscrypt/AbstractSessionContext;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_2
    iget-object p1, v8, Lorg/conscrypt/AbstractSessionContext;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public newSsl()J
    .locals 2

    iget-object v0, p0, Lorg/conscrypt/AbstractSessionContext;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lorg/conscrypt/AbstractSessionContext;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/conscrypt/AbstractSessionContext;->sslCtxNativePointer:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->SSL_new(JLorg/conscrypt/AbstractSessionContext;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/conscrypt/AbstractSessionContext;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "Invalid session context"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object p0, p0, Lorg/conscrypt/AbstractSessionContext;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public abstract onBeforeAddSession(Lorg/conscrypt/NativeSslSession;)V
.end method

.method public abstract onBeforeRemoveSession(Lorg/conscrypt/NativeSslSession;)V
.end method

.method public final removeSession(Lorg/conscrypt/NativeSslSession;)V
    .locals 2

    invoke-virtual {p1}, Lorg/conscrypt/NativeSslSession;->getId()[B

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/conscrypt/AbstractSessionContext;->onBeforeRemoveSession(Lorg/conscrypt/NativeSslSession;)V

    new-instance p1, Lorg/conscrypt/ByteArray;

    invoke-direct {p1, v0}, Lorg/conscrypt/ByteArray;-><init>([B)V

    iget-object v0, p0, Lorg/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lorg/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final setSessionCacheSize(I)V
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lorg/conscrypt/AbstractSessionContext;->maximumSize:I

    iput p1, p0, Lorg/conscrypt/AbstractSessionContext;->maximumSize:I

    if-ge p1, v0, :cond_0

    invoke-direct {p0}, Lorg/conscrypt/AbstractSessionContext;->trimToSize()V

    :cond_0
    return-void

    :cond_1
    const-string p0, "size < 0"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final setSessionTimeout(I)V
    .locals 3

    if-ltz p1, :cond_3

    iget-object v0, p0, Lorg/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lorg/conscrypt/AbstractSessionContext;->timeout:I

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7fffffff

    :goto_0
    invoke-direct {p0, p1}, Lorg/conscrypt/AbstractSessionContext;->setTimeout(I)V

    iget-object p1, p0, Lorg/conscrypt/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/conscrypt/NativeSslSession;

    invoke-virtual {v1}, Lorg/conscrypt/NativeSslSession;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/conscrypt/AbstractSessionContext;->onBeforeRemoveSession(Lorg/conscrypt/NativeSslSession;)V

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    const-string p0, "seconds < 0"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method

.method public setSesssionIdContext([B)V
    .locals 2

    iget-object v0, p0, Lorg/conscrypt/AbstractSessionContext;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lorg/conscrypt/AbstractSessionContext;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/conscrypt/AbstractSessionContext;->sslCtxNativePointer:J

    invoke-static {v0, v1, p0, p1}, Lorg/conscrypt/NativeCrypto;->SSL_CTX_set_session_id_context(JLorg/conscrypt/AbstractSessionContext;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lorg/conscrypt/AbstractSessionContext;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_1
    iget-object p0, p0, Lorg/conscrypt/AbstractSessionContext;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
