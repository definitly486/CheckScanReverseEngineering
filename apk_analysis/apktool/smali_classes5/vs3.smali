.class public final Lvs3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvs3$h;,
        Lvs3$g;,
        Lvs3$f;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lh88$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lla5$b;

.field public static final d:Lla5$b;

.field public static final e:Lla5$f;

.field public static final f:Lla5$b;

.field public static final g:Lla5$f;

.field public static final h:Lla5$b;

.field public static final i:Lla5$b;

.field public static final j:Lla5$b;

.field public static final k:Lla5$b;

.field public static final l:J

.field public static final m:Lat6;

.field public static final n:Lio/grpc/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/b$b<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final o:Lvs3$a;

.field public static final p:Lvs3$b;

.field public static final q:Lvs3$c;

.field public static final r:Lvs3$d;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-class v0, Lvs3;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lvs3;->a:Ljava/util/logging/Logger;

    sget-object v0, Lh88$a;->OK:Lh88$a;

    sget-object v1, Lh88$a;->INVALID_ARGUMENT:Lh88$a;

    sget-object v2, Lh88$a;->NOT_FOUND:Lh88$a;

    sget-object v3, Lh88$a;->ALREADY_EXISTS:Lh88$a;

    sget-object v4, Lh88$a;->FAILED_PRECONDITION:Lh88$a;

    sget-object v5, Lh88$a;->ABORTED:Lh88$a;

    sget-object v6, Lh88$a;->OUT_OF_RANGE:Lh88$a;

    sget-object v7, Lh88$a;->DATA_LOSS:Lh88$a;

    filled-new-array/range {v1 .. v7}, [Lh88$a;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lvs3;->b:Ljava/util/Set;

    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    new-instance v0, Lvs3$h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lla5$b;

    const-string v2, "grpc-timeout"

    invoke-direct {v1, v2, v0}, Lla5$b;-><init>(Ljava/lang/String;Lla5$c;)V

    sput-object v1, Lvs3;->c:Lla5$b;

    sget-object v0, Lla5;->d:Lla5$a;

    new-instance v1, Lla5$b;

    const-string v2, "grpc-encoding"

    invoke-direct {v1, v2, v0}, Lla5$b;-><init>(Ljava/lang/String;Lla5$c;)V

    sput-object v1, Lvs3;->d:Lla5$b;

    new-instance v1, Lvs3$f;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const-string v2, "grpc-accept-encoding"

    invoke-static {v2, v1}, Ln94;->a(Ljava/lang/String;Ln94$a;)Lla5$f;

    move-result-object v1

    sput-object v1, Lvs3;->e:Lla5$f;

    new-instance v1, Lla5$b;

    const-string v2, "content-encoding"

    invoke-direct {v1, v2, v0}, Lla5$b;-><init>(Ljava/lang/String;Lla5$c;)V

    sput-object v1, Lvs3;->f:Lla5$b;

    new-instance v1, Lvs3$f;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const-string v2, "accept-encoding"

    invoke-static {v2, v1}, Ln94;->a(Ljava/lang/String;Ln94$a;)Lla5$f;

    move-result-object v1

    sput-object v1, Lvs3;->g:Lla5$f;

    new-instance v1, Lla5$b;

    const-string v2, "content-length"

    invoke-direct {v1, v2, v0}, Lla5$b;-><init>(Ljava/lang/String;Lla5$c;)V

    sput-object v1, Lvs3;->h:Lla5$b;

    new-instance v1, Lla5$b;

    const-string v2, "content-type"

    invoke-direct {v1, v2, v0}, Lla5$b;-><init>(Ljava/lang/String;Lla5$c;)V

    sput-object v1, Lvs3;->i:Lla5$b;

    new-instance v1, Lla5$b;

    const-string v2, "te"

    invoke-direct {v1, v2, v0}, Lla5$b;-><init>(Ljava/lang/String;Lla5$c;)V

    sput-object v1, Lvs3;->j:Lla5$b;

    new-instance v1, Lla5$b;

    const-string v2, "user-agent"

    invoke-direct {v1, v2, v0}, Lla5$b;-><init>(Ljava/lang/String;Lla5$c;)V

    sput-object v1, Lvs3;->k:Lla5$b;

    const/16 v0, 0x2c

    invoke-static {v0}, Lk68;->a(C)Lk68;

    sget-object v0, Ly91$n;->d:Ly91$n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide v0, 0x4a817c800L

    sput-wide v0, Lvs3;->l:J

    new-instance v0, Lat6;

    invoke-direct {v0}, Lat6;-><init>()V

    sput-object v0, Lvs3;->m:Lat6;

    new-instance v0, Lio/grpc/b$b;

    const-string v1, "io.grpc.internal.CALL_OPTIONS_RPC_OWNED_BY_BALANCER"

    invoke-direct {v0, v1}, Lio/grpc/b$b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lvs3;->n:Lio/grpc/b$b;

    new-instance v0, Lvs3$a;

    invoke-direct {v0}, Lio/grpc/c;-><init>()V

    sput-object v0, Lvs3;->o:Lvs3$a;

    new-instance v0, Lvs3$b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lvs3;->p:Lvs3$b;

    new-instance v0, Lvs3$c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lvs3;->q:Lvs3$c;

    new-instance v0, Lvs3$d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lvs3;->r:Lvs3$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/net/URI;
    .locals 7

    const-string v0, "authority"

    invoke-static {p0, v0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    :try_start_0
    new-instance v1, Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v3, p0

    :try_start_1
    invoke-direct/range {v1 .. v6}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    :goto_0
    move-object p0, v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v3, p0

    goto :goto_0

    :goto_1
    const-string v0, "Invalid authority: "

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/io/Closeable;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v1, "exception caught in closeQuietly"

    sget-object v2, Lvs3;->a:Ljava/util/logging/Logger;

    invoke-virtual {v2, v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Lio/grpc/b;Lla5;IZZ)[Lio/grpc/c;
    .locals 4

    iget-object v0, p0, Lio/grpc/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Lio/grpc/c;

    sget-object v3, Lio/grpc/b;->h:Lio/grpc/b;

    new-instance v3, Lio/grpc/c$b;

    invoke-direct {v3, p0, p2, p3, p4}, Lio/grpc/c$b;-><init>(Lio/grpc/b;IZZ)V

    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-ge p0, p2, :cond_0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/grpc/c$a;

    invoke-virtual {p2, v3, p1}, Lio/grpc/c$a;->a(Lio/grpc/c$b;Lla5;)Lio/grpc/c;

    move-result-object p2

    aput-object p2, v2, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    sget-object p0, Lvs3;->o:Lvs3$a;

    aput-object p0, v2, v1

    return-object v2
.end method

.method public static d(Ljava/lang/String;)Lmt8;
    .locals 5

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v2, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    new-instance v3, Lmt8;

    invoke-direct {v3, v1, p0, v2, v0}, Lmt8;-><init>(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/Boolean;)V

    return-object v3
.end method

.method public static e(Lio/grpc/h$g;Z)Lem1;
    .locals 3

    iget-object v0, p0, Lio/grpc/h$g;->a:Lio/grpc/h$j;

    iget-object v1, p0, Lio/grpc/h$g;->c:Lh88;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/grpc/h$j;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz29;

    invoke-interface {v0}, Lz29;->a()Lnz4;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    iget-object p0, p0, Lio/grpc/h$g;->b:Lio/grpc/c$a;

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    new-instance p1, Lvs3$e;

    invoke-direct {p1, p0, v0}, Lvs3$e;-><init>(Lio/grpc/c$a;Lem1;)V

    return-object p1

    :cond_2
    invoke-virtual {v1}, Lh88;->f()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean p0, p0, Lio/grpc/h$g;->d:Z

    if-eqz p0, :cond_3

    new-instance p0, Lj53;

    invoke-static {v1}, Lvs3;->g(Lh88;)Lh88;

    move-result-object p1

    sget-object v0, Ldm1$a;->DROPPED:Ldm1$a;

    invoke-direct {p0, p1, v0}, Lj53;-><init>(Lh88;Ldm1$a;)V

    return-object p0

    :cond_3
    if-nez p1, :cond_4

    new-instance p0, Lj53;

    invoke-static {v1}, Lvs3;->g(Lh88;)Lh88;

    move-result-object p1

    sget-object v0, Ldm1$a;->PROCESSED:Ldm1$a;

    invoke-direct {p0, p1, v0}, Lj53;-><init>(Lh88;Ldm1$a;)V

    return-object p0

    :cond_4
    return-object v2
.end method

.method public static f(I)Lh88;
    .locals 3

    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    const/16 v0, 0xc8

    if-ge p0, v0, :cond_0

    sget-object v0, Lh88$a;->INTERNAL:Lh88$a;

    goto :goto_0

    :cond_0
    const/16 v0, 0x190

    if-eq p0, v0, :cond_5

    const/16 v0, 0x191

    if-eq p0, v0, :cond_4

    const/16 v0, 0x193

    if-eq p0, v0, :cond_3

    const/16 v0, 0x194

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1ad

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1af

    if-eq p0, v0, :cond_5

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lh88$a;->UNKNOWN:Lh88$a;

    goto :goto_0

    :cond_1
    :pswitch_0
    sget-object v0, Lh88$a;->UNAVAILABLE:Lh88$a;

    goto :goto_0

    :cond_2
    sget-object v0, Lh88$a;->UNIMPLEMENTED:Lh88$a;

    goto :goto_0

    :cond_3
    sget-object v0, Lh88$a;->PERMISSION_DENIED:Lh88$a;

    goto :goto_0

    :cond_4
    sget-object v0, Lh88$a;->UNAUTHENTICATED:Lh88$a;

    goto :goto_0

    :cond_5
    sget-object v0, Lh88$a;->INTERNAL:Lh88$a;

    :goto_0
    invoke-virtual {v0}, Lh88$a;->a()Lh88;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HTTP status code "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1f6
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static g(Lh88;)Lh88;
    .locals 3

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo8;->e(Z)V

    sget-object v0, Lvs3;->b:Ljava/util/Set;

    iget-object v1, p0, Lh88;->a:Lh88$a;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lh88;->l:Lh88;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Inappropriate status code from control plane: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lh88;->a:Lh88$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lh88;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v0

    iget-object p0, p0, Lh88;->c:Ljava/lang/Throwable;

    invoke-virtual {v0, p0}, Lh88;->g(Ljava/lang/Throwable;)Lh88;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static h(Lh88$a;Ljava/lang/String;Lh88;)Lh88;
    .locals 3

    invoke-virtual {p0}, Lh88$a;->a()Lh88;

    move-result-object p0

    const-string v0, ": "

    invoke-static {p1, v0}, Lfh;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p2, Lh88;->b:Ljava/lang/String;

    iget-object v2, p2, Lh88;->a:Lh88$a;

    if-nez v1, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lh88;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object p0

    iget-object p1, p2, Lh88;->c:Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lh88;->g(Ljava/lang/Throwable;)Lh88;

    move-result-object p0

    return-object p0
.end method
