.class public final Llv5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmw1;
.implements Lem1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llv5$f;,
        Llv5$h;,
        Llv5$e;,
        Llv5$g;
    }
.end annotation


# static fields
.field public static final V:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lq03;",
            "Lh88;",
            ">;"
        }
    .end annotation
.end field

.field public static final W:Ljava/util/logging/Logger;

.field public static final X:Z

.field public static final Y:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final Z:Ljava/lang/reflect/Method;


# instance fields
.field public A:Z

.field public B:Z

.field public final C:Ljavax/net/SocketFactory;

.field public final D:Ljavax/net/ssl/SSLSocketFactory;

.field public final E:Ljavax/net/ssl/HostnameVerifier;

.field public F:Ljava/net/Socket;

.field public G:I

.field public final H:Ljava/util/LinkedList;

.field public final I:Lsw1;

.field public J:Lif4;

.field public K:Z

.field public L:J

.field public M:J

.field public final N:Liv5;

.field public final O:I

.field public final P:Lg39;

.field public final Q:Ljavax/net/ssl/X509TrustManager;

.field public final R:Llv5$g;

.field public final S:Llv5$a;

.field public final T:Lxy3;

.field public final U:I

.field public a:Ljava/net/Socket;

.field public b:Ljavax/net/ssl/SSLSession;

.field public final c:Ljava/net/InetSocketAddress;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/util/Random;

.field public final g:Lkd8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkd8<",
            "La98;",
            ">;"
        }
    .end annotation
.end field

.field public final h:I

.field public final i:Ley3;

.field public j:Lp94$f;

.field public k:Lj13;

.field public l:Li06;

.field public final m:Ljava/lang/Object;

.field public final n:Lm94;

.field public o:I

.field public final p:Ljava/util/HashMap;

.field public final q:Ljava/util/concurrent/Executor;

.field public final r:Loq7;

.field public final s:Ljava/util/concurrent/ScheduledExecutorService;

.field public final t:I

.field public u:I

.field public v:Llv5$e;

.field public w:Lio/grpc/a;

.field public x:Lh88;

.field public y:Z

.field public z:Lty3;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lq03;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lq03;->NO_ERROR:Lq03;

    sget-object v2, Lh88;->l:Lh88;

    const-string v3, "No error: A GRPC status of OK should have been sent"

    invoke-virtual {v2, v3}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lq03;->PROTOCOL_ERROR:Lq03;

    const-string v3, "Protocol error"

    invoke-virtual {v2, v3}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lq03;->INTERNAL_ERROR:Lq03;

    const-string v3, "Internal error"

    invoke-virtual {v2, v3}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lq03;->FLOW_CONTROL_ERROR:Lq03;

    const-string v3, "Flow control error"

    invoke-virtual {v2, v3}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lq03;->STREAM_CLOSED:Lq03;

    const-string v3, "Stream closed"

    invoke-virtual {v2, v3}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lq03;->FRAME_TOO_LARGE:Lq03;

    const-string v3, "Frame too large"

    invoke-virtual {v2, v3}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lq03;->REFUSED_STREAM:Lq03;

    sget-object v3, Lh88;->m:Lh88;

    const-string v4, "Refused stream"

    invoke-virtual {v3, v4}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lq03;->CANCEL:Lq03;

    sget-object v3, Lh88;->f:Lh88;

    const-string v4, "Cancelled"

    invoke-virtual {v3, v4}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lq03;->COMPRESSION_ERROR:Lq03;

    const-string v3, "Compression error"

    invoke-virtual {v2, v3}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lq03;->CONNECT_ERROR:Lq03;

    const-string v3, "Connect error"

    invoke-virtual {v2, v3}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lq03;->ENHANCE_YOUR_CALM:Lq03;

    sget-object v2, Lh88;->j:Lh88;

    const-string v3, "Enhance your calm"

    invoke-virtual {v2, v3}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lq03;->INADEQUATE_SECURITY:Lq03;

    sget-object v2, Lh88;->i:Lh88;

    const-string v3, "Inadequate security"

    invoke-virtual {v2, v3}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Llv5;->V:Ljava/util/Map;

    const-class v0, Llv5;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Llv5;->W:Ljava/util/logging/Logger;

    sget-object v0, Lvs3;->a:Ljava/util/logging/Logger;

    const-string v0, "GRPC_ENABLE_PER_RPC_AUTHORITY_CHECK"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ll63;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Llv5;->X:Z

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "javax.net.ssl.X509ExtendedTrustManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v2, "checkServerTrusted"

    const-class v3, [Ljava/security/cert/X509Certificate;

    const-class v4, Ljava/lang/String;

    const-class v5, Ljava/net/Socket;

    filled-new-array {v3, v4, v5}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v1, v0

    :catch_1
    :goto_0
    sput-object v1, Llv5;->Y:Ljava/lang/Class;

    sput-object v0, Llv5;->Z:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lhv5$f;Ljava/net/InetSocketAddress;Ljava/lang/String;Lio/grpc/a;Lxy3;Liv5;)V
    .locals 4

    sget-object v0, Lvs3;->r:Lvs3$d;

    new-instance v1, Ley3;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    iput-object v2, p0, Llv5;->f:Ljava/util/Random;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Llv5;->m:Ljava/lang/Object;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Llv5;->p:Ljava/util/HashMap;

    const/4 v3, 0x0

    iput v3, p0, Llv5;->G:I

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Llv5;->H:Ljava/util/LinkedList;

    new-instance v3, Llv5$g;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, p0, Llv5;->R:Llv5$g;

    new-instance v3, Llv5$a;

    invoke-direct {v3, p0}, Llv5$a;-><init>(Llv5;)V

    iput-object v3, p0, Llv5;->S:Llv5$a;

    const/16 v3, 0x7530

    iput v3, p0, Llv5;->U:I

    const-string v3, "address"

    invoke-static {p2, v3}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Llv5;->c:Ljava/net/InetSocketAddress;

    iput-object p3, p0, Llv5;->d:Ljava/lang/String;

    iget p3, p1, Lhv5$f;->i:I

    iput p3, p0, Llv5;->t:I

    iget p3, p1, Lhv5$f;->m:I

    iput p3, p0, Llv5;->h:I

    iget-object p3, p1, Lhv5$f;->c:Ljava/util/concurrent/Executor;

    const-string v3, "executor"

    invoke-static {p3, v3}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p3, p0, Llv5;->q:Ljava/util/concurrent/Executor;

    new-instance p3, Loq7;

    iget-object v3, p1, Lhv5$f;->c:Ljava/util/concurrent/Executor;

    invoke-direct {p3, v3}, Loq7;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p3, p0, Llv5;->r:Loq7;

    iget-object p3, p1, Lhv5$f;->e:Ljava/util/concurrent/ScheduledExecutorService;

    const-string v3, "scheduledExecutorService"

    invoke-static {p3, v3}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p3, p0, Llv5;->s:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 p3, 0x3

    iput p3, p0, Llv5;->o:I

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object p3

    iput-object p3, p0, Llv5;->C:Ljavax/net/SocketFactory;

    iget-object p3, p1, Lhv5$f;->g:Ljavax/net/ssl/SSLSocketFactory;

    iput-object p3, p0, Llv5;->D:Ljavax/net/ssl/SSLSocketFactory;

    sget-object p3, Lfv5;->a:Lfv5;

    iput-object p3, p0, Llv5;->E:Ljavax/net/ssl/HostnameVerifier;

    iget-object p3, p1, Lhv5$f;->h:Lsw1;

    const-string v3, "connectionSpec"

    invoke-static {p3, v3}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p3, p0, Llv5;->I:Lsw1;

    const-string p3, "stopwatchFactory"

    invoke-static {v0, p3}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Llv5;->g:Lkd8;

    iput-object v1, p0, Llv5;->i:Ley3;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "grpc-java-okhttp/1.83.0"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Llv5;->e:Ljava/lang/String;

    iput-object p5, p0, Llv5;->T:Lxy3;

    iput-object p6, p0, Llv5;->N:Liv5;

    iget p3, p1, Lhv5$f;->n:I

    iput p3, p0, Llv5;->O:I

    iget-object p1, p1, Lhv5$f;->f:Lg39$a;

    new-instance p3, Lg39;

    iget-object p1, p1, Lg39$a;->a:Lpv8;

    invoke-direct {p3, p1}, Lg39;-><init>(Lpv8;)V

    iput-object p3, p0, Llv5;->P:Lg39;

    const-class p1, Llv5;

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lm94;->a(Ljava/lang/Class;Ljava/lang/String;)Lm94;

    move-result-object p1

    iput-object p1, p0, Llv5;->n:Lm94;

    sget-object p1, Lio/grpc/a;->b:Lio/grpc/a;

    sget-object p2, Lus3;->b:Lio/grpc/a$b;

    new-instance p3, Ljava/util/IdentityHashMap;

    iget-object p5, p1, Lio/grpc/a;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {p5}, Ljava/util/IdentityHashMap;->size()I

    move-result p5

    add-int/lit8 p5, p5, 0x1

    invoke-direct {p3, p5}, Ljava/util/IdentityHashMap;-><init>(I)V

    iget-object p1, p1, Lio/grpc/a;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {p3, p1}, Ljava/util/IdentityHashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {p3, p2, p4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lio/grpc/a;

    invoke-direct {p1, p3}, Lio/grpc/a;-><init>(Ljava/util/IdentityHashMap;)V

    iput-object p1, p0, Llv5;->w:Lio/grpc/a;

    monitor-enter v2

    :try_start_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    iput-object p1, p0, Llv5;->Q:Ljavax/net/ssl/X509TrustManager;

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static n(Lct;)Ljava/lang/String;
    .locals 7

    new-instance v0, Lbu0;

    invoke-direct {v0}, Lbu0;-><init>()V

    :cond_0
    const-wide/16 v1, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lct;->t0(Lbu0;J)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    iget-wide v4, v0, Lbu0;->c:J

    if-eqz v3, :cond_1

    sub-long/2addr v4, v1

    invoke-virtual {v0, v4, v5}, Lbu0;->Q(J)B

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Lbu0;->S(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/io/EOFException;

    invoke-virtual {v0, v4, v5}, Lbu0;->i(J)Lgx0;

    move-result-object v0

    invoke-virtual {v0}, Lgx0;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\\n not found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static u(Lq03;)Lh88;
    .locals 3

    sget-object v0, Llv5;->V:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh88;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lh88;->g:Lh88;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown http2 error code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lq03;->httpCode:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)La37;
    .locals 21

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    new-instance v2, Lez3$a;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/4 v3, -0x1

    iput v3, v2, Lez3$a;->c:I

    const-string v4, "https"

    iput-object v4, v2, Lez3$a;->a:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "host == null"

    if-eqz v4, :cond_31

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v7, :cond_3

    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x25

    if-eq v10, v11, :cond_0

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    new-instance v10, Lbu0;

    invoke-direct {v10}, Lbu0;-><init>()V

    invoke-virtual {v10, v8, v9, v4}, Lbu0;->H0(IILjava/lang/String;)V

    :goto_1
    if-ge v9, v7, :cond_2

    invoke-virtual {v4, v9}, Ljava/lang/String;->codePointAt(I)I

    move-result v12

    if-ne v12, v11, :cond_1

    add-int/lit8 v13, v9, 0x2

    if-ge v13, v7, :cond_1

    add-int/lit8 v14, v9, 0x1

    invoke-virtual {v4, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14}, Lez3;->a(C)I

    move-result v14

    invoke-virtual {v4, v13}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15}, Lez3;->a(C)I

    move-result v15

    if-eq v14, v3, :cond_1

    if-eq v15, v3, :cond_1

    shl-int/lit8 v9, v14, 0x4

    add-int/2addr v9, v15

    invoke-virtual {v10, v9}, Lbu0;->A0(I)V

    move v9, v13

    goto :goto_2

    :cond_1
    invoke-virtual {v10, v12}, Lbu0;->J0(I)V

    :goto_2
    invoke-static {v12}, Ljava/lang/Character;->charCount(I)I

    move-result v12

    add-int/2addr v9, v12

    goto :goto_1

    :cond_2
    invoke-virtual {v10}, Lbu0;->q0()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_3
    invoke-virtual {v4, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :goto_3
    const-string v9, "["

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    const-string v10, ":"

    if-eqz v9, :cond_27

    const-string v9, "]"

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_27

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v11, 0x1

    sub-int/2addr v9, v11

    const/16 v12, 0x10

    new-array v13, v12, [B

    move v5, v3

    move/from16 v17, v5

    move v15, v8

    move v14, v11

    const/16 v16, 0x0

    :goto_4
    if-ge v14, v9, :cond_1a

    if-ne v15, v12, :cond_5

    :cond_4
    :goto_5
    move v3, v8

    move-object/from16 v5, v16

    goto/16 :goto_11

    :cond_5
    add-int/lit8 v11, v14, 0x2

    const/4 v12, 0x2

    if-gt v11, v9, :cond_8

    const-string v3, "::"

    invoke-virtual {v7, v14, v3, v8, v12}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, -0x1

    if-eq v5, v3, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v15, v15, 0x2

    if-ne v11, v9, :cond_7

    move v5, v15

    :goto_6
    const/16 v14, 0x10

    goto/16 :goto_f

    :cond_7
    move v14, v11

    move v5, v15

    :goto_7
    const/4 v3, 0x1

    goto/16 :goto_c

    :cond_8
    if-eqz v15, :cond_16

    const/4 v3, 0x1

    invoke-virtual {v7, v14, v10, v8, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v11

    if-eqz v11, :cond_9

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_c

    :cond_9
    const-string v11, "."

    invoke-virtual {v7, v14, v11, v8, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v3, v15, -0x2

    move v12, v3

    move/from16 v11, v17

    :goto_8
    if-ge v11, v9, :cond_13

    const/16 v14, 0x10

    if-ne v12, v14, :cond_a

    goto :goto_b

    :cond_a
    if-eq v12, v3, :cond_c

    invoke-virtual {v7, v11}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v8, 0x2e

    if-eq v14, v8, :cond_b

    goto :goto_b

    :cond_b
    add-int/lit8 v11, v11, 0x1

    :cond_c
    move v8, v11

    const/4 v14, 0x0

    :goto_9
    move/from16 v18, v3

    if-ge v8, v9, :cond_10

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move/from16 v19, v5

    const/16 v5, 0x30

    if-lt v3, v5, :cond_11

    move/from16 v20, v5

    const/16 v5, 0x39

    if-le v3, v5, :cond_d

    goto :goto_a

    :cond_d
    if-nez v14, :cond_e

    if-eq v11, v8, :cond_e

    goto :goto_b

    :cond_e
    mul-int/lit8 v14, v14, 0xa

    add-int/2addr v14, v3

    add-int/lit8 v14, v14, -0x30

    const/16 v3, 0xff

    if-le v14, v3, :cond_f

    goto :goto_b

    :cond_f
    add-int/lit8 v8, v8, 0x1

    move/from16 v3, v18

    move/from16 v5, v19

    goto :goto_9

    :cond_10
    move/from16 v19, v5

    :cond_11
    :goto_a
    sub-int v3, v8, v11

    if-nez v3, :cond_12

    goto :goto_b

    :cond_12
    add-int/lit8 v3, v12, 0x1

    int-to-byte v5, v14

    aput-byte v5, v13, v12

    move v12, v3

    move v11, v8

    move/from16 v3, v18

    move/from16 v5, v19

    const/4 v8, 0x0

    goto :goto_8

    :cond_13
    move/from16 v19, v5

    add-int/lit8 v3, v15, 0x2

    if-eq v12, v3, :cond_15

    :cond_14
    :goto_b
    move-object/from16 v5, v16

    const/4 v3, 0x0

    goto/16 :goto_11

    :cond_15
    add-int/lit8 v15, v15, 0x2

    move/from16 v5, v19

    goto/16 :goto_6

    :cond_16
    move/from16 v19, v5

    goto/16 :goto_7

    :goto_c
    move v8, v14

    const/4 v11, 0x0

    :goto_d
    if-ge v8, v9, :cond_18

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v18

    invoke-static/range {v18 .. v18}, Lez3;->a(C)I

    move-result v3

    move/from16 v18, v12

    const/4 v12, -0x1

    if-ne v3, v12, :cond_17

    goto :goto_e

    :cond_17
    shl-int/lit8 v11, v11, 0x4

    add-int/2addr v11, v3

    add-int/lit8 v8, v8, 0x1

    move/from16 v12, v18

    const/4 v3, 0x1

    goto :goto_d

    :cond_18
    move/from16 v18, v12

    :goto_e
    sub-int v3, v8, v14

    if-eqz v3, :cond_14

    const/4 v12, 0x4

    if-le v3, v12, :cond_19

    goto :goto_b

    :cond_19
    add-int/lit8 v3, v15, 0x1

    ushr-int/lit8 v12, v11, 0x8

    move/from16 v19, v3

    const/16 v3, 0xff

    and-int/2addr v3, v12

    int-to-byte v3, v3

    aput-byte v3, v13, v15

    add-int/lit8 v15, v15, 0x2

    and-int/lit16 v3, v11, 0xff

    int-to-byte v3, v3

    aput-byte v3, v13, v19

    move/from16 v17, v14

    const/4 v3, -0x1

    const/16 v12, 0x10

    move v14, v8

    const/4 v8, 0x0

    goto/16 :goto_4

    :cond_1a
    move/from16 v19, v5

    move v14, v12

    :goto_f
    if-eq v15, v14, :cond_1c

    const/4 v12, -0x1

    if-ne v5, v12, :cond_1b

    goto :goto_b

    :cond_1b
    sub-int v3, v15, v5

    rsub-int/lit8 v7, v3, 0x10

    invoke-static {v13, v5, v13, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    rsub-int/lit8 v12, v15, 0x10

    add-int/2addr v12, v5

    const/4 v3, 0x0

    invoke-static {v13, v5, v12, v3}, Ljava/util/Arrays;->fill([BIIB)V

    goto :goto_10

    :cond_1c
    const/4 v3, 0x0

    :goto_10
    :try_start_0
    invoke-static {v13}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v5
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_11
    if-nez v5, :cond_1e

    :catch_0
    :cond_1d
    :goto_12
    move-object/from16 v3, v16

    goto/16 :goto_17

    :cond_1e
    invoke-virtual {v5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v5

    array-length v7, v5

    const/16 v14, 0x10

    if-ne v7, v14, :cond_26

    move v8, v3

    move v9, v8

    const/4 v7, -0x1

    :goto_13
    array-length v11, v5

    if-ge v8, v11, :cond_21

    move v11, v8

    :goto_14
    if-ge v11, v14, :cond_1f

    aget-byte v12, v5, v11

    if-nez v12, :cond_1f

    add-int/lit8 v12, v11, 0x1

    aget-byte v12, v5, v12

    if-nez v12, :cond_1f

    add-int/lit8 v11, v11, 0x2

    const/16 v14, 0x10

    goto :goto_14

    :cond_1f
    sub-int v12, v11, v8

    if-le v12, v9, :cond_20

    move v7, v8

    move v9, v12

    :cond_20
    add-int/lit8 v8, v11, 0x2

    const/16 v14, 0x10

    goto :goto_13

    :cond_21
    new-instance v8, Lbu0;

    invoke-direct {v8}, Lbu0;-><init>()V

    :cond_22
    :goto_15
    array-length v11, v5

    if-ge v3, v11, :cond_25

    const/16 v11, 0x3a

    if-ne v3, v7, :cond_23

    invoke-virtual {v8, v11}, Lbu0;->A0(I)V

    add-int/2addr v3, v9

    const/16 v14, 0x10

    if-ne v3, v14, :cond_22

    invoke-virtual {v8, v11}, Lbu0;->A0(I)V

    goto :goto_15

    :cond_23
    const/16 v14, 0x10

    if-lez v3, :cond_24

    invoke-virtual {v8, v11}, Lbu0;->A0(I)V

    :cond_24
    aget-byte v11, v5, v3

    const/16 v12, 0xff

    and-int/2addr v11, v12

    shl-int/lit8 v11, v11, 0x8

    add-int/lit8 v13, v3, 0x1

    aget-byte v13, v5, v13

    and-int/2addr v13, v12

    or-int/2addr v11, v13

    int-to-long v12, v11

    invoke-virtual {v8, v12, v13}, Lbu0;->C0(J)V

    add-int/lit8 v3, v3, 0x2

    goto :goto_15

    :cond_25
    invoke-virtual {v8}, Lbu0;->q0()Ljava/lang/String;

    move-result-object v3

    goto :goto_17

    :cond_26
    invoke-static {}, Lxp;->g()V

    return-object v16

    :catch_1
    invoke-static {}, Lxp;->g()V

    return-object v16

    :cond_27
    move v3, v8

    const/16 v16, 0x0

    :try_start_1
    invoke-static {v7}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_28

    goto/16 :goto_12

    :cond_28
    move v8, v3

    :goto_16
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v8, v3, :cond_2b

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v7, 0x1f

    if-le v3, v7, :cond_1d

    const/16 v7, 0x7f

    if-lt v3, v7, :cond_29

    goto/16 :goto_12

    :cond_29
    const-string v7, " #%/:?@[\\]"

    invoke-virtual {v7, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v12, -0x1

    if-eq v3, v12, :cond_2a

    goto/16 :goto_12

    :cond_2a
    add-int/lit8 v8, v8, 0x1

    goto :goto_16

    :cond_2b
    move-object v3, v5

    :goto_17
    if-eqz v3, :cond_30

    iput-object v3, v2, Lez3$a;->b:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    if-lez v3, :cond_2f

    const v4, 0xffff

    if-gt v3, v4, :cond_2f

    iput v3, v2, Lez3$a;->c:I

    iget-object v3, v2, Lez3$a;->b:Ljava/lang/String;

    if-eqz v3, :cond_2e

    new-instance v3, Lez3;

    invoke-direct {v3, v2}, Lez3;-><init>(Lez3$a;)V

    new-instance v2, La37$a;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v4, Liv3$a;

    invoke-direct {v4}, Liv3$a;-><init>()V

    iput-object v4, v2, La37$a;->b:Liv3$a;

    iput-object v3, v2, La37$a;->a:Lez3;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lez3;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lez3;->b:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Host"

    invoke-virtual {v2, v4, v3}, La37$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "User-Agent"

    move-object/from16 v4, p0

    iget-object v4, v4, Llv5;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, La37$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2c

    if-eqz v1, :cond_2c

    const-string v3, "Basic "

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISO-8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lgx0;->q([B)Lgx0;

    move-result-object v0

    invoke-virtual {v0}, Lgx0;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    const-string v1, "Proxy-Authorization"

    invoke-virtual {v2, v1, v0}, La37$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    :catch_2
    invoke-static {}, Lxp;->g()V

    return-object v16

    :cond_2c
    :goto_18
    iget-object v0, v2, La37$a;->a:Lez3;

    if-eqz v0, :cond_2d

    new-instance v0, La37;

    invoke-direct {v0, v2}, La37;-><init>(La37$a;)V

    return-object v0

    :cond_2d
    const-string v0, "url == null"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v16

    :cond_2e
    invoke-static {v6}, Lah;->f(Ljava/lang/String;)V

    return-object v16

    :cond_2f
    const-string v0, "unexpected port: "

    invoke-static {v3, v0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-object v16

    :cond_30
    const-string v0, "unexpected host: "

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-object v16

    :cond_31
    const/16 v16, 0x0

    invoke-static {v6}, Lfg;->c(Ljava/lang/String;)V

    return-object v16
.end method

.method public final b(Lra5;Lla5;Lio/grpc/b;[Lio/grpc/c;)Lcm1;
    .locals 15

    move-object/from16 v2, p2

    move-object/from16 v0, p4

    const-string v1, "method"

    move-object/from16 v3, p1

    invoke-static {v3, v1}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "headers"

    invoke-static {v2, v1}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Llv5;->w:Lio/grpc/a;

    new-instance v11, Lg88;

    invoke-direct {v11, v0}, Lg88;-><init>([Ly14;)V

    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v0, v5

    invoke-virtual {v6, v1, v2}, Lio/grpc/c;->Z(Lio/grpc/a;Lla5;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget-object v14, p0, Llv5;->m:Ljava/lang/Object;

    monitor-enter v14

    :try_start_0
    new-instance v0, Lkv5;

    iget-object v3, p0, Llv5;->k:Lj13;

    iget-object v5, p0, Llv5;->l:Li06;

    iget-object v6, p0, Llv5;->m:Ljava/lang/Object;

    iget v7, p0, Llv5;->t:I

    iget v8, p0, Llv5;->h:I

    iget-object v9, p0, Llv5;->d:Ljava/lang/String;

    iget-object v10, p0, Llv5;->e:Ljava/lang/String;

    iget-object v12, p0, Llv5;->P:Lg39;

    move-object v4, p0

    move-object/from16 v1, p1

    move-object/from16 v13, p3

    invoke-direct/range {v0 .. v13}, Lkv5;-><init>(Lra5;Lla5;Lj13;Llv5;Li06;Ljava/lang/Object;IILjava/lang/String;Ljava/lang/String;Lg88;Lg39;Lio/grpc/b;)V

    monitor-exit v14

    return-object v0

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final c()Lm94;
    .locals 0

    iget-object p0, p0, Llv5;->n:Lm94;

    return-object p0
.end method

.method public final d(Lnz4$a;)Ljava/lang/Runnable;
    .locals 7

    check-cast p1, Lp94$f;

    iput-object p1, p0, Llv5;->j:Lp94$f;

    iget-boolean p1, p0, Llv5;->K:Z

    if-eqz p1, :cond_0

    new-instance v0, Lif4;

    new-instance v1, Lif4$c;

    invoke-direct {v1, p0}, Lif4$c;-><init>(Llv5;)V

    iget-object v2, p0, Llv5;->s:Ljava/util/concurrent/ScheduledExecutorService;

    iget-wide v3, p0, Llv5;->L:J

    iget-wide v5, p0, Llv5;->M:J

    invoke-direct/range {v0 .. v6}, Lif4;-><init>(Lif4$c;Ljava/util/concurrent/ScheduledExecutorService;JJ)V

    iput-object v0, p0, Llv5;->J:Lif4;

    monitor-enter v0

    monitor-exit v0

    :cond_0
    iget-object p1, p0, Llv5;->r:Loq7;

    new-instance v4, Lzs;

    invoke-direct {v4, p1, p0}, Lzs;-><init>(Loq7;Llv5;)V

    iget-object p1, p0, Llv5;->i:Ley3;

    new-instance v0, Lhy6;

    invoke-direct {v0, v4}, Lhy6;-><init>(Ls18;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ley3$d;

    invoke-direct {p1, v0}, Ley3$d;-><init>(Lhy6;)V

    new-instance v0, Lzs$d;

    invoke-direct {v0, v4, p1}, Lzs$d;-><init>(Lzs;Lvk3;)V

    iget-object p1, p0, Llv5;->m:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    new-instance v1, Lj13;

    invoke-direct {v1, p0, v0}, Lj13;-><init>(Llv5;Lzs$d;)V

    iput-object v1, p0, Llv5;->k:Lj13;

    new-instance v0, Li06;

    invoke-direct {v0, p0, v1}, Li06;-><init>(Llv5;Lj13;)V

    iput-object v0, p0, Llv5;->l:Li06;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 p1, 0x1

    invoke-direct {v2, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v5, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v3, Ljava/util/concurrent/CyclicBarrier;

    const/4 p1, 0x2

    invoke-direct {v3, p1}, Ljava/util/concurrent/CyclicBarrier;-><init>(I)V

    iget-object p1, p0, Llv5;->r:Loq7;

    new-instance v0, Llv5$b;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Llv5$b;-><init>(Llv5;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CyclicBarrier;Lzs;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p1, v0}, Loq7;->execute(Ljava/lang/Runnable;)V

    iget-object p0, v1, Llv5;->q:Ljava/util/concurrent/Executor;

    new-instance p1, Llv5$c;

    invoke-direct {p1, v3, v5}, Llv5$c;-><init>(Ljava/util/concurrent/CyclicBarrier;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :try_start_1
    invoke-virtual {v1}, Llv5;->o()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object p0, v1, Llv5;->r:Loq7;

    new-instance p1, Llv5$d;

    invoke-direct {p1, v1}, Llv5$d;-><init>(Llv5;)V

    invoke-virtual {p0, p1}, Loq7;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final e(Lh88;)V
    .locals 3

    iget-object v0, p0, Llv5;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Llv5;->x:Lh88;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Llv5;->x:Lh88;

    iget-object v1, p0, Llv5;->j:Lp94$f;

    sget-object v2, Lcz7;->SUBCHANNEL_SHUTDOWN:Lcz7;

    invoke-virtual {v1, p1, v2}, Lp94$f;->d(Lh88;Lmn2;)V

    invoke-virtual {p0}, Llv5;->t()V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final f(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;
    .locals 6

    const-string v0, "\r\n"

    const-string v1, "CONNECT "

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v4, p0, Llv5;->C:Ljavax/net/SocketFactory;

    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p2

    invoke-virtual {v4, v3, p2}, Ljavax/net/SocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p2

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_9

    :cond_0
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p2

    invoke-virtual {v4, v3, p2}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    const/4 v3, 0x1

    :try_start_2
    invoke-virtual {p2, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    iget v3, p0, Llv5;->U:I

    invoke-virtual {p2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-static {p2}, Lvp3;->f(Ljava/net/Socket;)Lct;

    move-result-object v3

    invoke-static {p2}, Lvp3;->e(Ljava/net/Socket;)Lbt;

    move-result-object v4

    new-instance v5, Lhy6;

    invoke-direct {v5, v4}, Lhy6;-><init>(Ls18;)V

    invoke-virtual {p0, p1, p3, p4}, Llv5;->a(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)La37;

    move-result-object p0

    iget-object p1, p0, La37;->b:Liv3;

    iget-object p1, p1, Liv3;->a:[Ljava/lang/String;

    iget-object p0, p0, La37;->a:Lez3;

    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object p3, p0, Lez3;->a:Ljava/lang/String;

    iget p0, p0, Lez3;->b:I

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " HTTP/1.1"

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    invoke-virtual {v5, v0}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    array-length p0, p1

    div-int/lit8 p0, p0, 0x2

    const/4 p3, 0x0

    move p4, p3

    :goto_1
    if-ge p4, p0, :cond_5

    mul-int/lit8 v1, p4, 0x2

    if-ltz v1, :cond_2

    array-length v4, p1

    if-lt v1, v4, :cond_1

    goto :goto_3

    :cond_1
    aget-object v4, p1, v1

    goto :goto_4

    :goto_2
    move-object v2, p2

    goto/16 :goto_9

    :cond_2
    :goto_3
    move-object v4, v2

    :goto_4
    invoke-virtual {v5, v4}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    const-string v4, ": "

    invoke-virtual {v5, v4}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    add-int/lit8 v1, v1, 0x1

    if-ltz v1, :cond_4

    array-length v4, p1

    if-lt v1, v4, :cond_3

    goto :goto_5

    :cond_3
    aget-object v1, p1, v1

    goto :goto_6

    :cond_4
    :goto_5
    move-object v1, v2

    :goto_6
    invoke-interface {v5, v1}, Lvu0;->l(Ljava/lang/String;)Lvu0;

    invoke-interface {v5, v0}, Lvu0;->l(Ljava/lang/String;)Lvu0;

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_5
    invoke-virtual {v5, v0}, Lhy6;->l(Ljava/lang/String;)Lvu0;

    invoke-virtual {v5}, Lhy6;->flush()V

    invoke-static {v3}, Llv5;->n(Lct;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ll88;->a(Ljava/lang/String;)Ll88;

    move-result-object p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    iget p1, p0, Ll88;->b:I

    :goto_7
    :try_start_3
    invoke-static {v3}, Llv5;->n(Lct;)Ljava/lang/String;

    move-result-object p4

    const-string v0, ""

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_6

    goto :goto_7

    :cond_6
    const/16 p4, 0xc8

    if-lt p1, p4, :cond_7

    const/16 p4, 0x12c

    if-ge p1, p4, :cond_7

    invoke-virtual {p2, p3}, Ljava/net/Socket;->setSoTimeout(I)V

    return-object p2

    :cond_7
    new-instance p3, Lbu0;

    invoke-direct {p3}, Lbu0;-><init>()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    invoke-virtual {p2}, Ljava/net/Socket;->shutdownOutput()V

    const-wide/16 v0, 0x400

    invoke-virtual {v3, p3, v0, v1}, Lct;->t0(Lbu0;J)J
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_8

    :catch_2
    move-exception p4

    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to read body: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lbu0;->I0(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_8
    :try_start_6
    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    :try_start_7
    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object p0, p0, Ll88;->c:Ljava/lang/String;

    invoke-virtual {p3}, Lbu0;->q0()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Response returned from proxy was not successful (expected 2xx, got "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "). Response body:\n"

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lh88;->m:Lh88;

    invoke-virtual {p1, p0}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object p0

    new-instance p1, Lio/grpc/StatusException;

    invoke-direct {p1, p0}, Lio/grpc/StatusException;-><init>(Lh88;)V

    throw p1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :goto_9
    if-eqz v2, :cond_8

    invoke-static {v2}, Lvs3;->b(Ljava/io/Closeable;)V

    :cond_8
    sget-object p1, Lh88;->m:Lh88;

    const-string p2, "Failed trying to connect with proxy"

    invoke-virtual {p1, p2}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object p1

    invoke-virtual {p1, p0}, Lh88;->g(Ljava/lang/Throwable;)Lh88;

    move-result-object p0

    new-instance p1, Lio/grpc/StatusException;

    invoke-direct {p1, p0}, Lio/grpc/StatusException;-><init>(Lh88;)V

    throw p1
.end method

.method public final g(ILh88;Ldm1$a;ZLq03;Lla5;)V
    .locals 3

    iget-object v0, p0, Llv5;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Llv5;->p:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkv5;

    if-eqz v1, :cond_4

    if-eqz p5, :cond_0

    iget-object p5, p0, Llv5;->k:Lj13;

    sget-object v2, Lq03;->CANCEL:Lq03;

    invoke-virtual {p5, p1, v2}, Lj13;->h0(ILq03;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    iget-object p1, v1, Lkv5;->n:Lkv5$b;

    if-eqz p6, :cond_1

    goto :goto_1

    :cond_1
    new-instance p6, Lla5;

    invoke-direct {p6}, Lla5;-><init>()V

    :goto_1
    invoke-virtual {p1, p2, p3, p4, p6}, Lt$b;->i(Lh88;Ldm1$a;ZLla5;)V

    :cond_2
    invoke-virtual {p0}, Llv5;->r()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Llv5;->t()V

    :cond_3
    invoke-virtual {p0, v1}, Llv5;->l(Lkv5;)V

    :cond_4
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getAttributes()Lio/grpc/a;
    .locals 0

    iget-object p0, p0, Llv5;->w:Lio/grpc/a;

    return-object p0
.end method

.method public final h()[Li06$b;
    .locals 6

    iget-object v0, p0, Llv5;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Llv5;->p:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v1, v1, [Li06$b;

    iget-object p0, p0, Llv5;->p:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkv5;

    add-int/lit8 v4, v2, 0x1

    iget-object v3, v3, Lkv5;->n:Lkv5$b;

    iget-object v5, v3, Lkv5$b;->x:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, v3, Lkv5$b;->K:Li06$b;

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    aput-object v3, v1, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v2, v4

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :cond_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final i()I
    .locals 3

    iget-object v0, p0, Llv5;->d:Ljava/lang/String;

    invoke-static {v0}, Lvs3;->a(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Llv5;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p0

    return p0
.end method

.method public final j()Lh88;
    .locals 2

    iget-object v0, p0, Llv5;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Llv5;->x:Lh88;

    if-eqz p0, :cond_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object p0, Lh88;->m:Lh88;

    const-string v1, "Connection closed"

    invoke-virtual {p0, v1}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final k(I)Z
    .locals 1

    iget-object v0, p0, Llv5;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Llv5;->o:I

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    and-int/2addr p1, p0

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final l(Lkv5;)V
    .locals 4

    iget-boolean v0, p0, Llv5;->B:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Llv5;->H:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Llv5;->p:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Llv5;->B:Z

    iget-object v0, p0, Llv5;->J:Lif4;

    if-eqz v0, :cond_3

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lif4;->d:Lif4$d;

    sget-object v3, Lif4$d;->PING_SCHEDULED:Lif4$d;

    if-eq v2, v3, :cond_0

    sget-object v3, Lif4$d;->PING_DELAYED:Lif4$d;

    if-ne v2, v3, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v2, Lif4$d;->IDLE:Lif4$d;

    iput-object v2, v0, Lif4;->d:Lif4$d;

    :cond_1
    sget-object v3, Lif4$d;->PING_SENT:Lif4$d;

    if-ne v2, v3, :cond_2

    sget-object v2, Lif4$d;->IDLE_AND_PING_SENT:Lif4$d;

    iput-object v2, v0, Lif4;->d:Lif4$d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v0

    goto :goto_2

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_2
    iget-boolean v0, p1, Lt;->e:Z

    if-eqz v0, :cond_4

    iget-object p0, p0, Llv5;->S:Llv5$a;

    invoke-virtual {p0, p1, v1}, Lu1;->o(Ljava/lang/Object;Z)V

    :cond_4
    return-void
.end method

.method public final m(Ljava/lang/Exception;)V
    .locals 2

    sget-object v0, Lh88;->m:Lh88;

    invoke-virtual {v0, p1}, Lh88;->g(Ljava/lang/Throwable;)Lh88;

    move-result-object p1

    const/4 v0, 0x0

    sget-object v1, Lq03;->INTERNAL_ERROR:Lq03;

    invoke-virtual {p0, v0, v1, p1}, Llv5;->q(ILq03;Lh88;)V

    return-void
.end method

.method public final o()V
    .locals 4

    iget-object v0, p0, Llv5;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Llv5;->k:Lj13;

    invoke-virtual {v1}, Lj13;->u()V

    new-instance v1, Lpr7;

    invoke-direct {v1}, Lpr7;-><init>()V

    iget v2, p0, Llv5;->h:I

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2}, Lpr7;->a(II)V

    iget-object v2, p0, Llv5;->k:Lj13;

    invoke-virtual {v2, v1}, Lj13;->z(Lpr7;)V

    iget v1, p0, Llv5;->h:I

    const v2, 0xffff

    if-le v1, v2, :cond_0

    iget-object p0, p0, Llv5;->k:Lj13;

    sub-int/2addr v1, v2

    int-to-long v1, v1

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1, v2}, Lj13;->T(IJ)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final p(Lh88;)V
    .locals 7

    invoke-virtual {p0, p1}, Llv5;->e(Lh88;)V

    iget-object v0, p0, Llv5;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Llv5;->p:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkv5;

    iget-object v3, v3, Lkv5;->n:Lkv5$b;

    new-instance v4, Lla5;

    invoke-direct {v4}, Lla5;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5, v4}, Lt$b;->j(Lh88;ZLla5;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkv5;

    invoke-virtual {p0, v2}, Llv5;->l(Lkv5;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Llv5;->H:Ljava/util/LinkedList;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkv5;

    iget-object v3, v2, Lkv5;->n:Lkv5$b;

    sget-object v4, Ldm1$a;->MISCARRIED:Ldm1$a;

    new-instance v5, Lla5;

    invoke-direct {v5}, Lla5;-><init>()V

    const/4 v6, 0x1

    invoke-virtual {v3, p1, v4, v6, v5}, Lt$b;->i(Lh88;Ldm1$a;ZLla5;)V

    invoke-virtual {p0, v2}, Llv5;->l(Lkv5;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Llv5;->H:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    invoke-virtual {p0}, Llv5;->t()V

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final q(ILq03;Lh88;)V
    .locals 7

    iget-object v0, p0, Llv5;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Llv5;->x:Lh88;

    if-nez v1, :cond_1

    iput-object p3, p0, Llv5;->x:Lh88;

    if-nez p2, :cond_0

    sget-object v1, Lvs3$g;->NO_ERROR:Lvs3$g;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    iget v1, p2, Lq03;->httpCode:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lvs3$g;->a(J)Lvs3$g;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Llv5;->j:Lp94$f;

    new-instance v3, Lhr3;

    invoke-direct {v3, v1}, Lhr3;-><init>(Lvs3$g;)V

    invoke-virtual {v2, p3, v3}, Lp94$f;->d(Lh88;Lmn2;)V

    :cond_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    iget-boolean v3, p0, Llv5;->y:Z

    if-nez v3, :cond_2

    iput-boolean v1, p0, Llv5;->y:Z

    iget-object v3, p0, Llv5;->k:Lj13;

    new-array v4, v2, [B

    invoke-virtual {v3, p2, v4}, Lj13;->g0(Lq03;[B)V

    :cond_2
    iget-object p2, p0, Llv5;->p:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, p1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkv5;

    iget-object v4, v4, Lkv5;->n:Lkv5$b;

    sget-object v5, Ldm1$a;->REFUSED:Ldm1$a;

    new-instance v6, Lla5;

    invoke-direct {v6}, Lla5;-><init>()V

    invoke-virtual {v4, p3, v5, v2, v6}, Lt$b;->i(Lh88;Ldm1$a;ZLla5;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkv5;

    invoke-virtual {p0, v3}, Llv5;->l(Lkv5;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Llv5;->H:Ljava/util/LinkedList;

    invoke-interface {p1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkv5;

    iget-object v2, p2, Lkv5;->n:Lkv5$b;

    sget-object v3, Ldm1$a;->MISCARRIED:Ldm1$a;

    new-instance v4, Lla5;

    invoke-direct {v4}, Lla5;-><init>()V

    invoke-virtual {v2, p3, v3, v1, v4}, Lt$b;->i(Lh88;Ldm1$a;ZLla5;)V

    invoke-virtual {p0, p2}, Llv5;->l(Lkv5;)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Llv5;->H:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    invoke-virtual {p0}, Llv5;->t()V

    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final r()Z
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Llv5;->H:Ljava/util/LinkedList;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Llv5;->p:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    iget v3, p0, Llv5;->G:I

    if-ge v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkv5;

    invoke-virtual {p0, v0}, Llv5;->s(Lkv5;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final s(Lkv5;)V
    .locals 7

    iget-object v0, p1, Lkv5;->n:Lkv5$b;

    iget v0, v0, Lkv5$b;->L:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v4, "StreamId already assigned"

    invoke-static {v0, v4}, Lo8;->s(ZLjava/lang/Object;)V

    iget-object v0, p0, Llv5;->p:Ljava/util/HashMap;

    iget v4, p0, Llv5;->o:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Llv5;->B:Z

    if-nez v0, :cond_1

    iput-boolean v2, p0, Llv5;->B:Z

    iget-object v0, p0, Llv5;->J:Lif4;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lif4;->b()V

    :cond_1
    iget-boolean v0, p1, Lt;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Llv5;->S:Llv5$a;

    invoke-virtual {v0, p1, v2}, Lu1;->o(Ljava/lang/Object;Z)V

    :cond_2
    iget-object v0, p1, Lkv5;->n:Lkv5$b;

    iget v4, p0, Llv5;->o:I

    iget v5, v0, Lkv5$b;->L:I

    if-ne v5, v3, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    const-string v5, "the stream has been started with id %s"

    invoke-static {v4, v5, v3}, Lo8;->p(ILjava/lang/String;Z)V

    iput v4, v0, Lkv5$b;->L:I

    iget-object v3, v0, Lkv5$b;->G:Li06;

    new-instance v5, Li06$b;

    iget v6, v3, Li06;->c:I

    invoke-direct {v5, v3, v4, v6, v0}, Li06$b;-><init>(Li06;IILi06$a;)V

    iput-object v5, v0, Lkv5$b;->K:Li06$b;

    iget-object v3, v0, Lkv5$b;->M:Lkv5;

    iget-object v3, v3, Lkv5;->n:Lkv5$b;

    iget-object v4, v3, Lt$b;->k:Ldm1;

    if-eqz v4, :cond_4

    move v4, v2

    goto :goto_2

    :cond_4
    move v4, v1

    :goto_2
    invoke-static {v4}, Lo8;->r(Z)V

    iget-object v4, v3, Lt1$a;->b:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-boolean v5, v3, Lt1$a;->f:Z

    xor-int/2addr v5, v2

    const-string v6, "Already allocated"

    invoke-static {v5, v6}, Lo8;->s(ZLjava/lang/Object;)V

    iput-boolean v2, v3, Lt1$a;->f:Z

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Lt1$a;->f()V

    iget-object v2, v3, Lt1$a;->c:Lg39;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lg39;->a:Lpv8;

    invoke-interface {v2}, Lpv8;->b()J

    iget-boolean v2, v0, Lkv5$b;->I:Z

    if-eqz v2, :cond_7

    iget-object v2, v0, Lkv5$b;->F:Lj13;

    iget-object v3, v0, Lkv5$b;->M:Lkv5;

    iget-boolean v3, v3, Lkv5;->q:Z

    iget v4, v0, Lkv5$b;->L:I

    iget-object v5, v0, Lkv5$b;->y:Ljava/util/ArrayList;

    invoke-virtual {v2, v4, v5, v3}, Lj13;->x(ILjava/util/List;Z)V

    iget-object v2, v0, Lkv5$b;->M:Lkv5;

    iget-object v2, v2, Lkv5;->l:Lg88;

    iget-object v2, v2, Lg88;->a:[Ly14;

    array-length v3, v2

    move v4, v1

    :goto_3
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    check-cast v5, Lio/grpc/c;

    invoke-virtual {v5}, Lio/grpc/c;->Y()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    iput-object v2, v0, Lkv5$b;->y:Ljava/util/ArrayList;

    iget-object v2, v0, Lkv5$b;->z:Lbu0;

    iget-wide v3, v2, Lbu0;->c:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_6

    iget-object v3, v0, Lkv5$b;->G:Li06;

    iget-boolean v4, v0, Lkv5$b;->A:Z

    iget-object v5, v0, Lkv5$b;->K:Li06$b;

    iget-boolean v6, v0, Lkv5$b;->B:Z

    invoke-virtual {v3, v4, v5, v2, v6}, Li06;->a(ZLi06$b;Lbu0;Z)V

    :cond_6
    iput-boolean v1, v0, Lkv5$b;->I:Z

    :cond_7
    iget-object v0, p1, Lkv5;->j:Lra5;

    iget-object v0, v0, Lra5;->a:Lra5$a;

    sget-object v1, Lra5$a;->UNARY:Lra5$a;

    if-eq v0, v1, :cond_8

    sget-object v1, Lra5$a;->SERVER_STREAMING:Lra5$a;

    if-ne v0, v1, :cond_9

    :cond_8
    iget-boolean p1, p1, Lkv5;->q:Z

    if-eqz p1, :cond_a

    :cond_9
    iget-object p1, p0, Llv5;->k:Lj13;

    invoke-virtual {p1}, Lj13;->flush()V

    :cond_a
    iget p1, p0, Llv5;->o:I

    const v0, 0x7ffffffd

    if-lt p1, v0, :cond_b

    const p1, 0x7fffffff

    iput p1, p0, Llv5;->o:I

    sget-object v0, Lq03;->NO_ERROR:Lq03;

    sget-object v1, Lh88;->m:Lh88;

    const-string v2, "Stream ids exhausted"

    invoke-virtual {v1, v2}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Llv5;->q(ILq03;Lh88;)V

    return-void

    :cond_b
    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Llv5;->o:I

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final t()V
    .locals 9

    iget-object v0, p0, Llv5;->x:Lh88;

    if-eqz v0, :cond_9

    iget-object v0, p0, Llv5;->p:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Llv5;->H:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-boolean v0, p0, Llv5;->A:Z

    if-eqz v0, :cond_1

    goto/16 :goto_7

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Llv5;->A:Z

    iget-object v1, p0, Llv5;->J:Lif4;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    monitor-enter v1

    :try_start_0
    iget-object v4, v1, Lif4;->d:Lif4$d;

    sget-object v5, Lif4$d;->DISCONNECTED:Lif4$d;

    if-eq v4, v5, :cond_3

    iput-object v5, v1, Lif4;->d:Lif4$d;

    iget-object v4, v1, Lif4;->e:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v4, :cond_2

    invoke-interface {v4, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v4, v1, Lif4;->f:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v4, :cond_3

    invoke-interface {v4, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iput-object v2, v1, Lif4;->f:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v1

    goto :goto_2

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    :goto_2
    iget-object v1, p0, Llv5;->z:Lty3;

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Llv5;->j()Lh88;

    move-result-object v4

    monitor-enter v1

    :try_start_2
    iget-boolean v5, v1, Lty3;->d:Z

    if-eqz v5, :cond_5

    monitor-exit v1

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_5

    :cond_5
    iput-boolean v0, v1, Lty3;->d:Z

    iput-object v4, v1, Lty3;->e:Lh88;

    iget-object v5, v1, Lty3;->c:Ljava/util/LinkedHashMap;

    iput-object v2, v1, Lty3;->c:Ljava/util/LinkedHashMap;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lem1$a;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Executor;

    new-instance v7, Lsy3;

    invoke-direct {v7, v6, v4}, Lsy3;-><init>(Lem1$a;Lh88;)V

    :try_start_3
    invoke-interface {v5, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v5

    sget-object v6, Lty3;->g:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v8, "Failed to execute PingCallback"

    invoke-virtual {v6, v7, v8, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    :goto_4
    iput-object v2, p0, Llv5;->z:Lty3;

    goto :goto_6

    :goto_5
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :cond_7
    :goto_6
    iget-boolean v1, p0, Llv5;->y:Z

    if-nez v1, :cond_8

    iput-boolean v0, p0, Llv5;->y:Z

    iget-object v0, p0, Llv5;->k:Lj13;

    sget-object v1, Lq03;->NO_ERROR:Lq03;

    new-array v2, v3, [B

    invoke-virtual {v0, v1, v2}, Lj13;->g0(Lq03;[B)V

    :cond_8
    iget-object p0, p0, Llv5;->k:Lj13;

    invoke-virtual {p0}, Lj13;->close()V

    :cond_9
    :goto_7
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lod5;->b(Ljava/lang/Object;)Lod5$a;

    move-result-object v0

    iget-object v1, p0, Llv5;->n:Lm94;

    iget-wide v1, v1, Lm94;->c:J

    const-string v3, "logId"

    invoke-virtual {v0, v1, v2, v3}, Lod5$a;->b(JLjava/lang/String;)V

    const-string v1, "address"

    iget-object p0, p0, Llv5;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, p0, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lod5$a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
