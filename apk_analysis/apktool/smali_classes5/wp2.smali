.class public final Lwp2;
.super Lio/grpc/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwp2$c;,
        Lwp2$a;,
        Lwp2$d;,
        Lwp2$b;
    }
.end annotation


# static fields
.field public static final s:Ljava/util/logging/Logger;

.field public static final t:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final u:Z

.field public static final v:Z

.field public static final w:Z

.field public static final x:Lwp2$d;

.field public static y:Ljava/lang/String;


# instance fields
.field public final b:Lzs6;

.field public final c:Ljava/util/Random;

.field public volatile d:Lwp2$a;

.field public final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lwp2$c;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:I

.field public final i:Lpq5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpq5<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final j:J

.field public final k:Lch8;

.field public final l:Lgd7;

.field public final m:La98;

.field public n:Z

.field public o:Z

.field public p:Ljava/util/concurrent/Executor;

.field public q:Z

.field public r:Lio/grpc/l$d;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-class v0, Lwp2;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lwp2;->s:Ljava/util/logging/Logger;

    new-instance v2, Ljava/util/HashSet;

    const-string v3, "clientHostname"

    const-string v4, "serviceConfig"

    const-string v5, "clientLanguage"

    const-string v6, "percentage"

    filled-new-array {v5, v6, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lwp2;->t:Ljava/util/Set;

    const-string v2, "io.grpc.internal.DnsNameResolverProvider.enable_jndi"

    const-string v3, "true"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "io.grpc.internal.DnsNameResolverProvider.enable_jndi_localhost"

    const-string v4, "false"

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "io.grpc.internal.DnsNameResolverProvider.enable_service_config"

    invoke-static {v5, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lwp2;->u:Z

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lwp2;->v:Z

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lwp2;->w:Z

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "lb4"

    const/4 v4, 0x1

    invoke-static {v3, v4, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lwp2$d;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwp2$d;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    invoke-interface {v0}, Lwp2$d;->b()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "JndiResourceResolverFactory not available, skipping."

    invoke-interface {v0}, Lwp2$d;->b()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_0
    move-object v2, v0

    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Can\'t construct JndiResourceResolverFactory, skipping."

    invoke-virtual {v1, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Can\'t find JndiResourceResolverFactory ctor, skipping."

    invoke-virtual {v1, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_1

    :goto_0
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Unable to cast JndiResourceResolverFactory, skipping."

    invoke-virtual {v1, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Unable to find JndiResourceResolverFactory, skipping."

    invoke-virtual {v1, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    sput-object v2, Lwp2;->x:Lwp2$d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/grpc/l$a;Lyt7$c;La98;Z)V
    .locals 4

    invoke-direct {p0}, Lio/grpc/l;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lwp2;->c:Ljava/util/Random;

    sget-object v0, Lwp2$a;->INSTANCE:Lwp2$a;

    iput-object v0, p0, Lwp2;->d:Lwp2$a;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lwp2;->e:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v0, "args"

    invoke-static {p2, v0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "//"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Invalid DNS name: %s"

    invoke-static {v1, v2, p1}, Lo8;->h(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object p1

    const-string v1, "nameUri (%s) doesn\'t have an authority"

    invoke-static {p1, v1, v0}, Lo8;->m(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lwp2;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwp2;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    iget p1, p2, Lio/grpc/l$a;->a:I

    iput p1, p0, Lwp2;->h:I

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result p1

    iput p1, p0, Lwp2;->h:I

    :goto_1
    iget-object p1, p2, Lio/grpc/l$a;->b:Lzs6;

    const-string v0, "proxyDetector"

    invoke-static {p1, v0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lwp2;->b:Lzs6;

    iget-object p1, p2, Lio/grpc/l$a;->g:Lez4$h;

    if-eqz p1, :cond_2

    new-instance p3, Lfc3;

    invoke-direct {p3, p1}, Lfc3;-><init>(Lez4$h;)V

    iput-object p3, p0, Lwp2;->i:Lpq5;

    goto :goto_2

    :cond_2
    new-instance p1, Lau7;

    invoke-direct {p1, p3}, Lau7;-><init>(Lyt7$c;)V

    iput-object p1, p0, Lwp2;->i:Lpq5;

    :goto_2
    if-eqz p5, :cond_3

    const-wide v0, 0x6fc23ac00L

    goto :goto_4

    :cond_3
    const-string p1, "networkaddress.cache.ttl"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-wide/16 v0, 0x1e

    if-eqz p3, :cond_4

    :try_start_0
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    sget-object p5, Lwp2;->s:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {p1, p3, v3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "Property({0}) valid is not valid number format({1}), fall back to default({2})"

    invoke-virtual {p5, v2, p3, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_3
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_5

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    :cond_5
    :goto_4
    iput-wide v0, p0, Lwp2;->j:J

    iput-object p4, p0, Lwp2;->m:La98;

    iget-object p1, p2, Lio/grpc/l$a;->c:Lch8;

    const-string p3, "syncContext"

    invoke-static {p1, p3}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lwp2;->k:Lch8;

    iget-object p1, p2, Lio/grpc/l$a;->d:Lgd7;

    const-string p2, "serviceConfigParser"

    invoke-static {p1, p2}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lwp2;->l:Lgd7;

    return-void
.end method

.method public static f(Ljava/util/Map;Ljava/util/Random;Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/util/Random;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    sget-object v2, Lwp2;->t:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Bad key: %s"

    invoke-static {v3, v2, v1}, Ltc9;->a(Ljava/lang/String;ZLjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "clientLanguage"

    invoke-static {v0, p0}, Lpl2;->g(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "java"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_2
    const-string v0, "percentage"

    invoke-static {v0, p0}, Lpl2;->h(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v1

    const/16 v2, 0x64

    if-ltz v1, :cond_3

    if-gt v1, v2, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    const-string v4, "Bad percentage: %s"

    invoke-static {v4, v3, v0}, Ltc9;->a(Ljava/lang/String;ZLjava/lang/Object;)V

    invoke-virtual {p1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    if-lt p1, v1, :cond_4

    goto :goto_2

    :cond_4
    const-string p1, "clientHostname"

    invoke-static {p1, p0}, Lpl2;->g(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_6
    :goto_2
    const/4 p0, 0x0

    return-object p0

    :cond_7
    :goto_3
    const-string p1, "serviceConfig"

    invoke-static {p1, p0}, Lpl2;->j(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_8

    return-object p2

    :cond_8
    new-instance p2, Lcom/google/common/base/VerifyException;

    const-string v0, "key \'%s\' missing in \'%s\'"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static g(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "grpc_config="

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Ignoring non service config {0}"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lwp2;->s:Ljava/util/logging/Logger;

    invoke-virtual {v4, v2, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to close"

    sget-object v3, Lnd4;->a:Ljava/util/logging/Logger;

    new-instance v4, Lcom/google/gson/stream/JsonReader;

    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    :try_start_0
    invoke-static {v4}, Lnd4;->a(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v3, v5, v2, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lpl2;->a(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "wrong type "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    :try_start_2
    invoke-virtual {v4}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v3, v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lwp2;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lwp2;->r:Lio/grpc/l$d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "not started"

    invoke-static {v0, v1}, Lo8;->s(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lwp2;->h()V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-boolean v0, p0, Lwp2;->o:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lwp2;->o:Z

    iget-object v0, p0, Lwp2;->p:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lwp2;->i:Lpq5;

    invoke-interface {v1, v0}, Lpq5;->b(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lwp2;->p:Ljava/util/concurrent/Executor;

    :cond_1
    :goto_0
    return-void
.end method

.method public final d(Lio/grpc/l$d;)V
    .locals 2

    iget-object v0, p0, Lwp2;->r:Lio/grpc/l$d;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "already started"

    invoke-static {v0, v1}, Lo8;->s(ZLjava/lang/Object;)V

    iget-object v0, p0, Lwp2;->i:Lpq5;

    invoke-interface {v0}, Lpq5;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lwp2;->p:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lwp2;->r:Lio/grpc/l$d;

    invoke-virtual {p0}, Lwp2;->h()V

    return-void
.end method

.method public final e()Lio/grpc/l$e;
    .locals 11

    iget-object v0, p0, Lwp2;->g:Ljava/lang/String;

    sget-object v1, Lwp2;->s:Ljava/util/logging/Logger;

    invoke-static {}, Lio/grpc/l$e;->a()Lio/grpc/l$e$a;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0}, Lwp2;->i()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    new-instance v6, Ln88;

    invoke-direct {v6, v4, v5}, Ln88;-><init>(Lh88;Ljava/lang/Object;)V

    iput-object v6, v2, Lio/grpc/l$e$a;->a:Ln88;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v7, "Address resolution failure"

    invoke-virtual {v1, v6, v7, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v6, Lh88;->m:Lh88;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unable to resolve host "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v6

    invoke-virtual {v6, v5}, Lh88;->g(Ljava/lang/Throwable;)Lh88;

    move-result-object v5

    new-instance v6, Ln88;

    invoke-direct {v6, v5, v4}, Ln88;-><init>(Lh88;Ljava/lang/Object;)V

    invoke-virtual {v5}, Lh88;->f()Z

    move-result v7

    xor-int/2addr v7, v3

    const-string v8, "cannot use OK status: %s"

    invoke-static {v7, v8, v5}, Lo8;->h(ZLjava/lang/String;Ljava/lang/Object;)V

    iput-object v6, v2, Lio/grpc/l$e$a;->a:Ln88;

    :goto_0
    sget-boolean v5, Lwp2;->w:Z

    if-eqz v5, :cond_12

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-boolean v6, Lwp2;->u:Z

    const/4 v7, 0x0

    if-nez v6, :cond_0

    goto :goto_3

    :cond_0
    const-string v6, "localhost"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-boolean v7, Lwp2;->v:Z

    goto :goto_3

    :cond_1
    const-string v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_3

    :cond_2
    move v8, v3

    move v6, v7

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v6, v9, :cond_5

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2e

    if-eq v9, v10, :cond_4

    const/16 v10, 0x30

    if-lt v9, v10, :cond_3

    const/16 v10, 0x39

    if-gt v9, v10, :cond_3

    move v9, v3

    goto :goto_2

    :cond_3
    move v9, v7

    :goto_2
    and-int/2addr v8, v9

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    xor-int/lit8 v7, v8, 0x1

    :goto_3
    if-nez v7, :cond_6

    move-object v3, v4

    goto :goto_4

    :cond_6
    iget-object v3, p0, Lwp2;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lwp2$c;

    if-nez v3, :cond_7

    sget-object v6, Lwp2;->x:Lwp2$d;

    if-eqz v6, :cond_7

    invoke-interface {v6}, Lwp2$d;->a()Llb4$b;

    move-result-object v3

    :cond_7
    :goto_4
    if-eqz v3, :cond_8

    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_grpc_config."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lwp2$c;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v3

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v7, "ServiceConfig resolution failure"

    invoke-virtual {v1, v6, v7, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    :goto_5
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10

    iget-object v0, p0, Lwp2;->c:Ljava/util/Random;

    sget-object v1, Lwp2;->y:Ljava/lang/String;

    if-nez v1, :cond_9

    :try_start_2
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lwp2;->y:Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception p0

    invoke-static {p0}, Lti0;->f(Ljava/lang/Throwable;)V

    return-object v4

    :cond_9
    :goto_6
    :try_start_3
    invoke-static {v5}, Lwp2;->g(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v5, v4

    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    :try_start_4
    invoke-static {v5, v0, v1}, Lwp2;->f(Ljava/util/Map;Ljava/util/Random;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    if-eqz v5, :cond_a

    goto :goto_7

    :catch_3
    move-exception v0

    sget-object v1, Lh88;->g:Lh88;

    const-string v3, "failed to pick service config choice"

    invoke-virtual {v1, v3}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v1

    invoke-virtual {v1, v0}, Lh88;->g(Ljava/lang/Throwable;)Lh88;

    move-result-object v0

    new-instance v1, Lio/grpc/l$b;

    invoke-direct {v1, v0}, Lio/grpc/l$b;-><init>(Lh88;)V

    goto :goto_9

    :cond_b
    :goto_7
    if-nez v5, :cond_c

    move-object v1, v4

    goto :goto_9

    :cond_c
    new-instance v1, Lio/grpc/l$b;

    invoke-direct {v1, v5}, Lio/grpc/l$b;-><init>(Ljava/lang/Object;)V

    goto :goto_9

    :catch_4
    move-exception v0

    goto :goto_8

    :catch_5
    move-exception v0

    :goto_8
    sget-object v1, Lh88;->g:Lh88;

    const-string v3, "failed to parse TXT records"

    invoke-virtual {v1, v3}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v1

    invoke-virtual {v1, v0}, Lh88;->g(Ljava/lang/Throwable;)Lh88;

    move-result-object v0

    new-instance v1, Lio/grpc/l$b;

    invoke-direct {v1, v0}, Lio/grpc/l$b;-><init>(Lh88;)V

    :goto_9
    if-eqz v1, :cond_11

    iget-object v0, v1, Lio/grpc/l$b;->a:Lh88;

    if-eqz v0, :cond_d

    new-instance v4, Lio/grpc/l$b;

    invoke-direct {v4, v0}, Lio/grpc/l$b;-><init>(Lh88;)V

    goto :goto_e

    :cond_d
    iget-object v0, v1, Lio/grpc/l$b;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    iget-object p0, p0, Lwp2;->l:Lgd7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_5
    iget-object v1, p0, Lgd7;->d:Lgy;

    invoke-virtual {v1, v0}, Lgy;->c(Ljava/util/Map;)Lio/grpc/l$b;

    move-result-object v1

    if-nez v1, :cond_e

    goto :goto_a

    :cond_e
    iget-object v3, v1, Lio/grpc/l$b;->a:Lh88;

    if-eqz v3, :cond_f

    new-instance p0, Lio/grpc/l$b;

    invoke-direct {p0, v3}, Lio/grpc/l$b;-><init>(Lh88;)V

    move-object v4, p0

    goto :goto_e

    :cond_f
    iget-object v4, v1, Lio/grpc/l$b;->b:Ljava/lang/Object;

    :goto_a
    iget-boolean v1, p0, Lgd7;->a:Z

    iget v3, p0, Lgd7;->b:I

    iget p0, p0, Lgd7;->c:I

    invoke-static {v0, v1, v3, p0, v4}, Lmz4;->a(Ljava/util/Map;ZIILjava/lang/Object;)Lmz4;

    move-result-object p0

    new-instance v0, Lio/grpc/l$b;

    invoke-direct {v0, p0}, Lio/grpc/l$b;-><init>(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_b
    move-object v4, v0

    goto :goto_e

    :catchall_0
    move-exception p0

    goto :goto_c

    :catch_6
    move-exception p0

    goto :goto_d

    :goto_c
    sget-object v0, Lh88;->l:Lh88;

    const-string v1, "Unexpected error parsing service config"

    invoke-virtual {v0, v1}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v0

    invoke-virtual {v0, p0}, Lh88;->g(Ljava/lang/Throwable;)Lh88;

    move-result-object p0

    new-instance v0, Lio/grpc/l$b;

    invoke-direct {v0, p0}, Lio/grpc/l$b;-><init>(Lh88;)V

    goto :goto_b

    :goto_d
    sget-object v0, Lh88;->g:Lh88;

    const-string v1, "failed to parse service config"

    invoke-virtual {v0, v1}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v0

    invoke-virtual {v0, p0}, Lh88;->g(Ljava/lang/Throwable;)Lh88;

    move-result-object p0

    new-instance v0, Lio/grpc/l$b;

    invoke-direct {v0, p0}, Lio/grpc/l$b;-><init>(Lh88;)V

    goto :goto_b

    :cond_10
    sget-object p0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "No TXT records found for {0}"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p0, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    :goto_e
    iput-object v4, v2, Lio/grpc/l$e$a;->c:Lio/grpc/l$b;

    :cond_12
    new-instance p0, Lio/grpc/l$e;

    iget-object v0, v2, Lio/grpc/l$e$a;->a:Ln88;

    iget-object v1, v2, Lio/grpc/l$e$a;->b:Lio/grpc/a;

    iget-object v2, v2, Lio/grpc/l$e$a;->c:Lio/grpc/l$b;

    invoke-direct {p0, v0, v1, v2}, Lio/grpc/l$e;-><init>(Ln88;Lio/grpc/a;Lio/grpc/l$b;)V

    return-object p0
.end method

.method public final h()V
    .locals 4

    iget-boolean v0, p0, Lwp2;->q:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lwp2;->o:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lwp2;->n:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lwp2;->j:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    if-lez v2, :cond_1

    iget-object v2, p0, Lwp2;->m:La98;

    invoke-virtual {v2}, La98;->a()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lwp2;->q:Z

    iget-object v0, p0, Lwp2;->p:Ljava/util/concurrent/Executor;

    new-instance v1, Lwp2$b;

    iget-object v2, p0, Lwp2;->r:Lio/grpc/l$d;

    invoke-direct {v1, p0, v2}, Lwp2$b;-><init>(Lwp2;Lio/grpc/l$d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final i()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lwp2;->d:Lwp2$a;

    iget-object v1, p0, Lwp2;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    new-instance v3, Lio/grpc/d;

    new-instance v4, Ljava/net/InetSocketAddress;

    iget v5, p0, Lwp2;->h:I

    invoke-direct {v4, v2, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v3, v4}, Lio/grpc/d;-><init>(Ljava/net/SocketAddress;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
