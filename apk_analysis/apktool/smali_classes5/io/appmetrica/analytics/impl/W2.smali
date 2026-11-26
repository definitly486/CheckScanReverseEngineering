.class public abstract Lio/appmetrica/analytics/impl/W2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Ra;


# static fields
.field public static final n:Ljava/util/HashSet;

.field public static final o:Lio/appmetrica/analytics/impl/U2;


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Lio/appmetrica/analytics/impl/Mh;

.field protected final c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

.field protected final d:Lio/appmetrica/analytics/impl/do;

.field protected final e:Lio/appmetrica/analytics/impl/Hg;

.field protected final f:Lio/appmetrica/analytics/impl/I6;

.field public final g:Lio/appmetrica/analytics/impl/g0;

.field protected final h:Lio/appmetrica/analytics/impl/Ei;

.field public i:Lio/appmetrica/analytics/impl/Cb;

.field public final j:Lio/appmetrica/analytics/impl/Qf;

.field public final k:Lio/appmetrica/analytics/impl/Z9;

.field public final l:Lio/appmetrica/analytics/impl/Ve;

.field public final m:Lio/appmetrica/analytics/impl/rn;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lio/appmetrica/analytics/impl/W2;->n:Ljava/util/HashSet;

    new-instance v0, Lio/appmetrica/analytics/impl/U2;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/U2;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/impl/W2;->o:Lio/appmetrica/analytics/impl/U2;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Ei;Lio/appmetrica/analytics/impl/Mh;Lio/appmetrica/analytics/impl/Z9;Lio/appmetrica/analytics/impl/E6;Lio/appmetrica/analytics/impl/do;Lio/appmetrica/analytics/impl/Hg;Lio/appmetrica/analytics/impl/I6;Lio/appmetrica/analytics/impl/g0;Lio/appmetrica/analytics/impl/Ve;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/W2;->a:Landroid/content/Context;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/W2;->h:Lio/appmetrica/analytics/impl/Ei;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    iput-object p4, p0, Lio/appmetrica/analytics/impl/W2;->k:Lio/appmetrica/analytics/impl/Z9;

    iput-object p6, p0, Lio/appmetrica/analytics/impl/W2;->d:Lio/appmetrica/analytics/impl/do;

    iput-object p7, p0, Lio/appmetrica/analytics/impl/W2;->e:Lio/appmetrica/analytics/impl/Hg;

    iput-object p8, p0, Lio/appmetrica/analytics/impl/W2;->f:Lio/appmetrica/analytics/impl/I6;

    iput-object p9, p0, Lio/appmetrica/analytics/impl/W2;->g:Lio/appmetrica/analytics/impl/g0;

    iput-object p10, p0, Lio/appmetrica/analytics/impl/W2;->l:Lio/appmetrica/analytics/impl/Ve;

    invoke-virtual {p3}, Lio/appmetrica/analytics/impl/V3;->b()Lio/appmetrica/analytics/internal/CounterConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Lio/appmetrica/analytics/internal/CounterConfiguration;->getApiKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/appmetrica/analytics/coreutils/internal/logger/LoggerStorage;->getOrCreatePublicLogger(Ljava/lang/String;)Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object p2

    iput-object p2, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    invoke-virtual {p3}, Lio/appmetrica/analytics/impl/V3;->b()Lio/appmetrica/analytics/internal/CounterConfiguration;

    move-result-object p3

    invoke-virtual {p3}, Lio/appmetrica/analytics/internal/CounterConfiguration;->isLogEnabled()Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p3}, Lio/appmetrica/analytics/impl/l3;->a(Ljava/lang/Boolean;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->setEnabled(Z)V

    :cond_0
    iput-object p5, p0, Lio/appmetrica/analytics/impl/W2;->j:Lio/appmetrica/analytics/impl/Qf;

    new-instance p2, Lio/appmetrica/analytics/impl/rn;

    invoke-direct {p2, p1}, Lio/appmetrica/analytics/impl/rn;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lio/appmetrica/analytics/impl/W2;->m:Lio/appmetrica/analytics/impl/rn;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)Lio/appmetrica/analytics/impl/co;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    move-object v1, p1

    goto :goto_0

    .line 164
    :cond_0
    instance-of v1, p1, Lio/appmetrica/analytics/impl/c2;

    if-eqz v1, :cond_1

    .line 165
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v1, p1

    move-object p1, v0

    .line 166
    :goto_0
    new-instance v2, Lio/appmetrica/analytics/impl/Y;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/W2;->j:Lio/appmetrica/analytics/impl/Qf;

    .line 167
    invoke-interface {v3}, Lio/appmetrica/analytics/impl/Qf;->a()Ljava/lang/String;

    move-result-object v3

    .line 168
    invoke-direct {v2, v0, v0, v3}, Lio/appmetrica/analytics/impl/Y;-><init>(Lio/appmetrica/analytics/impl/Kn;Ljava/util/ArrayList;Ljava/lang/String;)V

    if-nez p1, :cond_2

    goto :goto_1

    .line 169
    :cond_2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_1
    iget-object p1, p0, Lio/appmetrica/analytics/impl/W2;->k:Lio/appmetrica/analytics/impl/Z9;

    .line 170
    iget-object p1, p1, Lio/appmetrica/analytics/impl/Z9;->b:Lio/appmetrica/analytics/impl/kn;

    .line 171
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Ki;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 172
    iget-object p0, p0, Lio/appmetrica/analytics/impl/W2;->k:Lio/appmetrica/analytics/impl/Z9;

    .line 173
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Z9;->c:Lio/appmetrica/analytics/impl/j3;

    .line 174
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Ki;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    .line 175
    invoke-static {v1, v2, v0, p1, p0}, Lio/appmetrica/analytics/impl/fo;->a(Ljava/lang/Throwable;Lio/appmetrica/analytics/impl/Y;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;)Lio/appmetrica/analytics/impl/co;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/Y;)V
    .locals 10

    new-instance v0, Lio/appmetrica/analytics/impl/f0;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/W2;->k:Lio/appmetrica/analytics/impl/Z9;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/Z9;->b:Lio/appmetrica/analytics/impl/kn;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Ki;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/W2;->k:Lio/appmetrica/analytics/impl/Z9;

    iget-object v2, v2, Lio/appmetrica/analytics/impl/Z9;->c:Lio/appmetrica/analytics/impl/j3;

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/Ki;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-direct {v0, p1, v1, v2}, Lio/appmetrica/analytics/impl/f0;-><init>(Lio/appmetrica/analytics/impl/Y;Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/W2;->h:Lio/appmetrica/analytics/impl/Ei;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/W2;->g:Lio/appmetrica/analytics/impl/g0;

    invoke-virtual {v2, v0}, Lio/appmetrica/analytics/impl/g0;->a(Lio/appmetrica/analytics/impl/f0;)Lio/appmetrica/analytics/impl/d6;

    move-result-object v0

    invoke-static {v0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object v0

    iget-object v2, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    sget-object v3, Lio/appmetrica/analytics/impl/I9;->a:Ljava/util/Set;

    new-instance v3, Lio/appmetrica/analytics/impl/a4;

    sget-object v4, Lio/appmetrica/analytics/impl/pb;->c:Lio/appmetrica/analytics/impl/pb;

    const/16 v4, 0x1750

    const-string v5, ""

    invoke-direct {v3, v0, v5, v4, v2}, Lio/appmetrica/analytics/impl/a4;-><init>([BLjava/lang/String;ILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v0}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Mh;)Lio/appmetrica/analytics/impl/a6;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Mh;ILjava/util/Map;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ANR was reported "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lio/appmetrica/analytics/impl/Y;->a:Lio/appmetrica/analytics/impl/Kn;

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Thread[name="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lio/appmetrica/analytics/impl/Kn;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",tid={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lio/appmetrica/analytics/impl/Kn;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", priority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lio/appmetrica/analytics/impl/Kn;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", group="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/Kn;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}] at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lio/appmetrica/analytics/impl/Kn;->f:Ljava/util/List;

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const-string v4, "\n"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lqn1;->a0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ILnl3;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/co;)V
    .locals 4

    .line 176
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/W2;->pauseSession()V

    .line 177
    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->h:Lio/appmetrica/analytics/impl/Ei;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    .line 178
    invoke-virtual {v0, p1, v1}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/co;Lio/appmetrica/analytics/impl/Mh;)Lio/appmetrica/analytics/impl/Ch;

    move-result-object v1

    .line 179
    iget-object v2, v1, Lio/appmetrica/analytics/impl/Ch;->e:Lio/appmetrica/analytics/impl/Mh;

    .line 180
    iget-object v3, v0, Lio/appmetrica/analytics/impl/Ei;->e:Lio/appmetrica/analytics/impl/fm;

    if-eqz v3, :cond_0

    .line 181
    iget-object v2, v2, Lio/appmetrica/analytics/impl/V3;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    .line 182
    check-cast v3, Lio/appmetrica/analytics/impl/em;

    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/em;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/appmetrica/analytics/internal/CounterConfiguration;->setUuid(Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    :goto_0
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ei;->c:Lio/appmetrica/analytics/impl/Gi;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/Gi;->b(Lio/appmetrica/analytics/impl/Ch;)V

    .line 185
    iget-object p0, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unhandled exception received: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 186
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 187
    iget-object v1, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    if-eqz v0, :cond_0

    .line 188
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Invalid Error Environment (key,value) pair: (%s,%s)."

    invoke-virtual {v1, p1, p0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 189
    :cond_0
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Put error environment pair <%s, %s>"

    invoke-virtual {v1, v2, v0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    iget-object p0, p0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    monitor-enter p0

    .line 191
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mh;->c:Lio/appmetrica/analytics/impl/O8;

    .line 192
    iget-object v1, v0, Lio/appmetrica/analytics/impl/O8;->b:Lio/appmetrica/analytics/impl/Kl;

    .line 193
    iget-object v0, v0, Lio/appmetrica/analytics/impl/O8;->a:Lio/appmetrica/analytics/impl/Sc;

    if-eqz v0, :cond_3

    .line 194
    iget-object v2, v1, Lio/appmetrica/analytics/impl/Kl;->a:Lio/appmetrica/analytics/coreutils/internal/limitation/MapTrimmers;

    .line 195
    invoke-virtual {v2}, Lio/appmetrica/analytics/coreutils/internal/limitation/MapTrimmers;->getKeyTrimmer()Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 196
    iget-object v2, v1, Lio/appmetrica/analytics/impl/Kl;->a:Lio/appmetrica/analytics/coreutils/internal/limitation/MapTrimmers;

    invoke-virtual {v2}, Lio/appmetrica/analytics/coreutils/internal/limitation/MapTrimmers;->getValueTrimmer()Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;

    move-result-object v2

    invoke-virtual {v2, p2}, Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 197
    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 198
    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 199
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 200
    :cond_1
    :goto_0
    invoke-virtual {v1, v0, p1, p2}, Lio/appmetrica/analytics/impl/Kl;->a(Lio/appmetrica/analytics/impl/Sc;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_4

    .line 201
    invoke-virtual {v1, v0, p1, p2}, Lio/appmetrica/analytics/impl/Kl;->a(Lio/appmetrica/analytics/impl/Sc;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 202
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    .line 204
    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 161
    invoke-static {p1}, Lio/appmetrica/analytics/impl/xo;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 163
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lio/appmetrica/analytics/impl/W2;->putAppEnvironmentValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .line 77
    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->h:Lio/appmetrica/analytics/impl/Ei;

    .line 78
    invoke-static {p1}, Lio/appmetrica/analytics/impl/a6;->a(Ljava/lang/String;)Lio/appmetrica/analytics/impl/a6;

    move-result-object p1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    .line 79
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    invoke-static {p1, p0}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Mh;)Lio/appmetrica/analytics/impl/a6;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 81
    invoke-virtual {v0, p1, p0, v2, v1}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Mh;ILjava/util/Map;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Event received: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". With value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->h:Lio/appmetrica/analytics/impl/Ei;

    iget-object v6, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    sget-object v1, Lio/appmetrica/analytics/impl/I9;->a:Ljava/util/Set;

    new-instance v1, Lio/appmetrica/analytics/impl/a4;

    sget-object v2, Lio/appmetrica/analytics/impl/pb;->c:Lio/appmetrica/analytics/impl/pb;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v3, p1

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lio/appmetrica/analytics/impl/a4;-><init>(Ljava/lang/String;Ljava/lang/String;IILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    sget-object p1, Lio/appmetrica/analytics/impl/y9;->c:Lio/appmetrica/analytics/impl/y9;

    iput-object p1, v1, Lio/appmetrica/analytics/impl/a6;->l:Lio/appmetrica/analytics/impl/y9;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Mh;)Lio/appmetrica/analytics/impl/a6;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, v1, p2}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Mh;ILjava/util/Map;)V

    return-void
.end method

.method public final b(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 74
    invoke-static {p1}, Lio/appmetrica/analytics/impl/xo;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 76
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lio/appmetrica/analytics/impl/W2;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 0

    .line 82
    iget-object p0, p0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Mh;->f()Z

    move-result p0

    return p0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Mh;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->h:Lio/appmetrica/analytics/impl/Ei;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ei;->d:Lio/appmetrica/analytics/impl/s0;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/s0;->d()V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->i:Lio/appmetrica/analytics/impl/Cb;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/Cb;->a:Landroid/os/Handler;

    iget-object v2, v0, Lio/appmetrica/analytics/impl/Cb;->b:Lio/appmetrica/analytics/impl/W2;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Cb;->c:Lio/appmetrica/analytics/impl/Db;

    iget-object v2, v2, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    iget-object v2, v2, Lio/appmetrica/analytics/impl/V3;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-virtual {v2}, Lio/appmetrica/analytics/internal/CounterConfiguration;->getApiKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/Mh;->e:Z

    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->h:Lio/appmetrica/analytics/impl/Ei;

    iget-object v7, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    sget-object v2, Lio/appmetrica/analytics/impl/I9;->a:Ljava/util/Set;

    new-instance v2, Lio/appmetrica/analytics/impl/a4;

    sget-object v3, Lio/appmetrica/analytics/impl/pb;->c:Lio/appmetrica/analytics/impl/pb;

    const-string v3, ""

    const/4 v6, 0x0

    const/4 v5, 0x3

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lio/appmetrica/analytics/impl/a4;-><init>(Ljava/lang/String;Ljava/lang/String;IILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p0}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Mh;)Lio/appmetrica/analytics/impl/a6;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p0, v1, v2}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Mh;ILjava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final clearAppEnvironment()V
    .locals 8

    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Clear app environment"

    invoke-virtual {v0, v2, v1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->h:Lio/appmetrica/analytics/impl/Ei;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lio/appmetrica/analytics/impl/a4;->n()Lio/appmetrica/analytics/impl/a6;

    move-result-object v2

    new-instance v1, Lio/appmetrica/analytics/impl/Ch;

    new-instance v6, Lio/appmetrica/analytics/impl/Mh;

    new-instance v3, Lio/appmetrica/analytics/impl/Pf;

    iget-object v4, p0, Lio/appmetrica/analytics/impl/V3;->a:Lio/appmetrica/analytics/impl/Pf;

    invoke-direct {v3, v4}, Lio/appmetrica/analytics/impl/Pf;-><init>(Lio/appmetrica/analytics/impl/Pf;)V

    new-instance v4, Lio/appmetrica/analytics/internal/CounterConfiguration;

    iget-object v5, p0, Lio/appmetrica/analytics/impl/V3;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-direct {v4, v5}, Lio/appmetrica/analytics/internal/CounterConfiguration;-><init>(Lio/appmetrica/analytics/internal/CounterConfiguration;)V

    iget-object v5, p0, Lio/appmetrica/analytics/impl/Mh;->c:Lio/appmetrica/analytics/impl/O8;

    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lio/appmetrica/analytics/impl/Mh;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-direct {v6, v3, v4, v5, v7}, Lio/appmetrica/analytics/impl/Mh;-><init>(Lio/appmetrica/analytics/impl/Pf;Lio/appmetrica/analytics/internal/CounterConfiguration;Lio/appmetrica/analytics/impl/O8;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v6}, Lio/appmetrica/analytics/impl/Ch;-><init>(Lio/appmetrica/analytics/impl/a6;ZILjava/util/HashMap;Lio/appmetrica/analytics/impl/Mh;)V

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/Ch;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->h:Lio/appmetrica/analytics/impl/Ei;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ei;->d:Lio/appmetrica/analytics/impl/s0;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/s0;->c()V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->i:Lio/appmetrica/analytics/impl/Cb;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/Cb;->a:Landroid/os/Handler;

    iget-object v2, v0, Lio/appmetrica/analytics/impl/Cb;->b:Lio/appmetrica/analytics/impl/W2;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Cb;->c:Lio/appmetrica/analytics/impl/Db;

    invoke-static {v1, v2, v0}, Lio/appmetrica/analytics/impl/Cb;->a(Landroid/os/Handler;Lio/appmetrica/analytics/impl/W2;Ljava/lang/Runnable;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->h:Lio/appmetrica/analytics/impl/Ei;

    iget-object v6, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    sget-object v1, Lio/appmetrica/analytics/impl/I9;->a:Ljava/util/Set;

    new-instance v1, Lio/appmetrica/analytics/impl/a4;

    sget-object v2, Lio/appmetrica/analytics/impl/pb;->c:Lio/appmetrica/analytics/impl/pb;

    const-string v2, ""

    const/4 v5, 0x0

    const/16 v4, 0x1900

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lio/appmetrica/analytics/impl/a4;-><init>(Ljava/lang/String;Ljava/lang/String;IILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    iget-object p1, p0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Mh;)Lio/appmetrica/analytics/impl/a6;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v3, v2}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Mh;ILjava/util/Map;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/appmetrica/analytics/impl/Mh;->e:Z

    return-void
.end method

.method public final getPluginExtension()Lio/appmetrica/analytics/plugins/IPluginReporter;
    .locals 0

    return-object p0
.end method

.method public j()Ljava/lang/String;
    .locals 0

    const-string p0, "[BaseReporter]"

    return-object p0
.end method

.method public k()V
    .locals 10

    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->h:Lio/appmetrica/analytics/impl/Ei;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Mh;->d:Lio/appmetrica/analytics/impl/Hf;

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Mh;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    iget-object v3, p0, Lio/appmetrica/analytics/impl/V3;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-virtual {v3}, Lio/appmetrica/analytics/internal/CounterConfiguration;->getApiKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/appmetrica/analytics/coreutils/internal/logger/LoggerStorage;->getOrCreatePublicLogger(Ljava/lang/String;)Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v9

    sget-object v3, Lio/appmetrica/analytics/impl/I9;->a:Ljava/util/Set;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    if-eqz v1, :cond_0

    iget-object v1, v1, Lio/appmetrica/analytics/impl/Hf;->a:Lio/appmetrica/analytics/impl/Df;

    if-eqz v1, :cond_0

    :try_start_1
    const-string v4, "preloadInfo"

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Df;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_0
    new-instance v4, Lio/appmetrica/analytics/impl/a4;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    sget-object v1, Lio/appmetrica/analytics/impl/pb;->c:Lio/appmetrica/analytics/impl/pb;

    const/16 v7, 0x1800

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v9}, Lio/appmetrica/analytics/impl/a4;-><init>(Ljava/lang/String;Ljava/lang/String;IILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    invoke-virtual {v4, v2}, Lio/appmetrica/analytics/impl/a4;->c(Ljava/lang/String;)V

    invoke-static {v4, p0}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Mh;)Lio/appmetrica/analytics/impl/a6;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p0, v3, v2}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Mh;ILjava/util/Map;)V

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final pauseSession()V
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Pause session"

    invoke-virtual {v0, v2, v1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/W2;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final putAppEnvironmentValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    if-eqz v0, :cond_0

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Invalid App Environment (key,value) pair: (%s,%s)."

    invoke-virtual {v1, p1, p0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Put app environment: <%s, %s>"

    invoke-virtual {v1, v2, v0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->h:Lio/appmetrica/analytics/impl/Ei;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lio/appmetrica/analytics/impl/a4;->b(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/impl/a6;

    move-result-object v2

    new-instance v1, Lio/appmetrica/analytics/impl/Ch;

    new-instance v6, Lio/appmetrica/analytics/impl/Mh;

    new-instance p1, Lio/appmetrica/analytics/impl/Pf;

    iget-object p2, p0, Lio/appmetrica/analytics/impl/V3;->a:Lio/appmetrica/analytics/impl/Pf;

    invoke-direct {p1, p2}, Lio/appmetrica/analytics/impl/Pf;-><init>(Lio/appmetrica/analytics/impl/Pf;)V

    new-instance p2, Lio/appmetrica/analytics/internal/CounterConfiguration;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/V3;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-direct {p2, v3}, Lio/appmetrica/analytics/internal/CounterConfiguration;-><init>(Lio/appmetrica/analytics/internal/CounterConfiguration;)V

    iget-object v3, p0, Lio/appmetrica/analytics/impl/Mh;->c:Lio/appmetrica/analytics/impl/O8;

    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lio/appmetrica/analytics/impl/Mh;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-direct {v6, p1, p2, v3, v4}, Lio/appmetrica/analytics/impl/Mh;-><init>(Lio/appmetrica/analytics/impl/Pf;Lio/appmetrica/analytics/internal/CounterConfiguration;Lio/appmetrica/analytics/impl/O8;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v6}, Lio/appmetrica/analytics/impl/Ch;-><init>(Lio/appmetrica/analytics/impl/a6;ZILjava/util/HashMap;Lio/appmetrica/analytics/impl/Mh;)V

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/Ch;)V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p0

    throw p1
.end method

.method public final reportAdRevenue(Lio/appmetrica/analytics/AdRevenue;)V
    .locals 1

    const/4 v0, 0x0

    .line 238
    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/impl/W2;->reportAdRevenue(Lio/appmetrica/analytics/AdRevenue;Z)V

    return-void
.end method

.method public final reportAdRevenue(Lio/appmetrica/analytics/AdRevenue;Z)V
    .locals 10

    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->h:Lio/appmetrica/analytics/impl/Ei;

    new-instance v1, Lio/appmetrica/analytics/impl/F;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/W2;->m:Lio/appmetrica/analytics/impl/rn;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    invoke-direct {v1, p1, p2, v2, v3}, Lio/appmetrica/analytics/impl/F;-><init>(Lio/appmetrica/analytics/AdRevenue;ZLio/appmetrica/analytics/impl/rn;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    iget-object v2, p0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v2, Lio/appmetrica/analytics/impl/V3;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-virtual {v3}, Lio/appmetrica/analytics/internal/CounterConfiguration;->getApiKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/appmetrica/analytics/coreutils/internal/logger/LoggerStorage;->getOrCreatePublicLogger(Ljava/lang/String;)Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v3

    invoke-static {v3, v1}, Lio/appmetrica/analytics/impl/a4;->a(Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Lio/appmetrica/analytics/impl/F;)Lio/appmetrica/analytics/impl/a4;

    move-result-object v5

    new-instance v4, Lio/appmetrica/analytics/impl/Ch;

    new-instance v9, Lio/appmetrica/analytics/impl/Mh;

    new-instance v1, Lio/appmetrica/analytics/impl/Pf;

    iget-object v3, v2, Lio/appmetrica/analytics/impl/V3;->a:Lio/appmetrica/analytics/impl/Pf;

    invoke-direct {v1, v3}, Lio/appmetrica/analytics/impl/Pf;-><init>(Lio/appmetrica/analytics/impl/Pf;)V

    new-instance v3, Lio/appmetrica/analytics/internal/CounterConfiguration;

    iget-object v6, v2, Lio/appmetrica/analytics/impl/V3;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-direct {v3, v6}, Lio/appmetrica/analytics/internal/CounterConfiguration;-><init>(Lio/appmetrica/analytics/internal/CounterConfiguration;)V

    iget-object v6, v2, Lio/appmetrica/analytics/impl/Mh;->c:Lio/appmetrica/analytics/impl/O8;

    monitor-enter v2

    :try_start_0
    iget-object v7, v2, Lio/appmetrica/analytics/impl/Mh;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    invoke-direct {v9, v1, v3, v6, v7}, Lio/appmetrica/analytics/impl/Mh;-><init>(Lio/appmetrica/analytics/impl/Pf;Lio/appmetrica/analytics/internal/CounterConfiguration;Lio/appmetrica/analytics/impl/O8;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v9}, Lio/appmetrica/analytics/impl/Ch;-><init>(Lio/appmetrica/analytics/impl/a6;ZILjava/util/HashMap;Lio/appmetrica/analytics/impl/Mh;)V

    invoke-virtual {v0, v4}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/Ch;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdRevenue Received: AdRevenue{adRevenue="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lio/appmetrica/analytics/AdRevenue;->adRevenue:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currency=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lio/appmetrica/analytics/AdRevenue;->currency:Ljava/util/Currency;

    invoke-virtual {v1}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', adType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lio/appmetrica/analytics/AdRevenue;->adType:Lio/appmetrica/analytics/AdType;

    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adNetwork=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lio/appmetrica/analytics/AdRevenue;->adNetwork:Ljava/lang/String;

    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', adUnitId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lio/appmetrica/analytics/AdRevenue;->adUnitId:Ljava/lang/String;

    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', adUnitName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lio/appmetrica/analytics/AdRevenue;->adUnitName:Ljava/lang/String;

    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', adPlacementId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lio/appmetrica/analytics/AdRevenue;->adPlacementId:Ljava/lang/String;

    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', adPlacementName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lio/appmetrica/analytics/AdRevenue;->adPlacementName:Ljava/lang/String;

    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', precision=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lio/appmetrica/analytics/AdRevenue;->precision:Ljava/lang/String;

    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', payload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lio/appmetrica/analytics/AdRevenue;->payload:Ljava/util/Map;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/ub;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", autoCollected="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v2

    throw p0
.end method

.method public final reportAnr(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lio/appmetrica/analytics/impl/i0;

    invoke-direct {v0, p0, p1}, Lio/appmetrica/analytics/impl/i0;-><init>(Lio/appmetrica/analytics/impl/j0;Ljava/util/Map;)V

    new-instance p1, Lio/appmetrica/analytics/impl/h0;

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/h0;-><init>(Lio/appmetrica/analytics/impl/i0;)V

    new-instance v0, Lio/appmetrica/analytics/impl/Aa;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Aa;-><init>()V

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object v1

    iget-object v1, v1, Lio/appmetrica/analytics/impl/p4;->a:Lio/appmetrica/analytics/impl/E6;

    invoke-interface {p1}, Lio/appmetrica/analytics/impl/Qn;->a()Ljava/lang/Thread;

    move-result-object v2

    new-instance v3, Lio/appmetrica/analytics/impl/Y;

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {p1}, Lio/appmetrica/analytics/impl/Qn;->b()[Ljava/lang/StackTraceElement;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v5, v4

    :catch_1
    :cond_0
    :goto_0
    invoke-interface {v0, v2, v5}, Lio/appmetrica/analytics/coreapi/internal/backport/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/appmetrica/analytics/impl/Kn;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lio/appmetrica/analytics/impl/Pn;

    invoke-direct {v7}, Lio/appmetrica/analytics/impl/Pn;-><init>()V

    new-instance v8, Ljava/util/TreeMap;

    invoke-direct {v8, v7}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    :try_start_2
    invoke-interface {p1}, Lio/appmetrica/analytics/impl/Qn;->c()Ljava/util/Map;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    if-eqz v4, :cond_1

    invoke-virtual {v8, v4}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    :cond_1
    invoke-virtual {v8}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Thread;

    if-eq v7, v2, :cond_2

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/StackTraceElement;

    invoke-interface {v0, v7, v4}, Lio/appmetrica/analytics/coreapi/internal/backport/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/appmetrica/analytics/impl/Kn;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {v1}, Lio/appmetrica/analytics/impl/Qf;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v5, v6, p1}, Lio/appmetrica/analytics/impl/Y;-><init>(Lio/appmetrica/analytics/impl/Kn;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lio/appmetrica/analytics/impl/W2;->a(Lio/appmetrica/analytics/impl/Y;)V

    return-void
.end method

.method public final reportECommerce(Lio/appmetrica/analytics/ecommerce/ECommerceEvent;)V
    .locals 9

    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "E-commerce event received: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/appmetrica/analytics/ecommerce/ECommerceEvent;->getPublicDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->h:Lio/appmetrica/analytics/impl/Ei;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lio/appmetrica/analytics/impl/Yf;->toProto()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/impl/Li;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/V3;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-virtual {v2}, Lio/appmetrica/analytics/internal/CounterConfiguration;->getApiKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/appmetrica/analytics/coreutils/internal/logger/LoggerStorage;->getOrCreatePublicLogger(Ljava/lang/String;)Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v2

    new-instance v4, Lio/appmetrica/analytics/impl/a4;

    invoke-direct {v4, v2}, Lio/appmetrica/analytics/impl/a4;-><init>(Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    sget-object v2, Lio/appmetrica/analytics/impl/pb;->c:Lio/appmetrica/analytics/impl/pb;

    const v2, 0xa028

    iput v2, v4, Lio/appmetrica/analytics/impl/a6;->d:I

    iget-object v2, v1, Lio/appmetrica/analytics/impl/Li;->a:Ljava/lang/Object;

    check-cast v2, Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    invoke-static {v2}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object v2

    invoke-static {v2}, Lio/appmetrica/analytics/coreutils/internal/io/Base64Utils;->compressBase64([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lio/appmetrica/analytics/impl/a4;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lio/appmetrica/analytics/impl/a6;->b:Ljava/lang/String;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/Li;->b:Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;

    invoke-interface {v1}, Lio/appmetrica/analytics/coreutils/internal/limitation/BytesTruncatedProvider;->getBytesTruncated()I

    move-result v1

    iput v1, v4, Lio/appmetrica/analytics/impl/a6;->g:I

    new-instance v3, Lio/appmetrica/analytics/impl/Ch;

    new-instance v8, Lio/appmetrica/analytics/impl/Mh;

    new-instance v1, Lio/appmetrica/analytics/impl/Pf;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/V3;->a:Lio/appmetrica/analytics/impl/Pf;

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/Pf;-><init>(Lio/appmetrica/analytics/impl/Pf;)V

    new-instance v2, Lio/appmetrica/analytics/internal/CounterConfiguration;

    iget-object v5, p0, Lio/appmetrica/analytics/impl/V3;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-direct {v2, v5}, Lio/appmetrica/analytics/internal/CounterConfiguration;-><init>(Lio/appmetrica/analytics/internal/CounterConfiguration;)V

    iget-object v5, p0, Lio/appmetrica/analytics/impl/Mh;->c:Lio/appmetrica/analytics/impl/O8;

    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lio/appmetrica/analytics/impl/Mh;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-direct {v8, v1, v2, v5, v6}, Lio/appmetrica/analytics/impl/Mh;-><init>(Lio/appmetrica/analytics/impl/Pf;Lio/appmetrica/analytics/internal/CounterConfiguration;Lio/appmetrica/analytics/impl/O8;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v8}, Lio/appmetrica/analytics/impl/Ch;-><init>(Lio/appmetrica/analytics/impl/a6;ZILjava/util/HashMap;Lio/appmetrica/analytics/impl/Mh;)V

    invoke-virtual {v0, v3}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/Ch;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p0

    throw p1

    :cond_0
    return-void
.end method

.method public final reportError(Lio/appmetrica/analytics/plugins/PluginErrorDetails;Ljava/lang/String;)V
    .locals 5

    .line 94
    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->l:Lio/appmetrica/analytics/impl/Ve;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/Ve;->a(Lio/appmetrica/analytics/plugins/PluginErrorDetails;)Lio/appmetrica/analytics/impl/co;

    move-result-object p1

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p1, v1

    .line 97
    :goto_0
    new-instance v0, Lio/appmetrica/analytics/impl/Gg;

    invoke-direct {v0, p2, p1}, Lio/appmetrica/analytics/impl/Gg;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/impl/co;)V

    .line 98
    iget-object p1, p0, Lio/appmetrica/analytics/impl/W2;->h:Lio/appmetrica/analytics/impl/Ei;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/W2;->e:Lio/appmetrica/analytics/impl/Hg;

    .line 99
    invoke-virtual {v2, v0}, Lio/appmetrica/analytics/impl/Hg;->a(Lio/appmetrica/analytics/impl/Gg;)Lio/appmetrica/analytics/impl/i6;

    move-result-object v0

    invoke-static {v0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object v0

    iget-object v2, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 100
    sget-object v3, Lio/appmetrica/analytics/impl/I9;->a:Ljava/util/Set;

    .line 101
    new-instance v3, Lio/appmetrica/analytics/impl/a4;

    sget-object v4, Lio/appmetrica/analytics/impl/pb;->c:Lio/appmetrica/analytics/impl/pb;

    const/16 v4, 0x1708

    .line 102
    invoke-direct {v3, v0, p2, v4, v2}, Lio/appmetrica/analytics/impl/a4;-><init>([BLjava/lang/String;ILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    .line 103
    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    .line 104
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    invoke-static {v3, v0}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Mh;)Lio/appmetrica/analytics/impl/a6;

    move-result-object v2

    const/4 v3, 0x1

    .line 106
    invoke-virtual {p1, v2, v0, v3, v1}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Mh;ILjava/util/Map;)V

    .line 107
    iget-object p0, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    invoke-static {p2}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Error from plugin received: %s"

    invoke-virtual {p0, p2, p1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final reportError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, p1, p2, v0}, Lio/appmetrica/analytics/impl/W2;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final reportError(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/plugins/PluginErrorDetails;)V
    .locals 5

    new-instance v0, Lio/appmetrica/analytics/impl/H6;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/W2;->l:Lio/appmetrica/analytics/impl/Ve;

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {v1, p3}, Lio/appmetrica/analytics/impl/Ve;->a(Lio/appmetrica/analytics/plugins/PluginErrorDetails;)Lio/appmetrica/analytics/impl/co;

    move-result-object p3

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p3, v2

    :goto_0
    new-instance v1, Lio/appmetrica/analytics/impl/Gg;

    invoke-direct {v1, p2, p3}, Lio/appmetrica/analytics/impl/Gg;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/impl/co;)V

    invoke-direct {v0, v1, p1}, Lio/appmetrica/analytics/impl/H6;-><init>(Lio/appmetrica/analytics/impl/Gg;Ljava/lang/String;)V

    iget-object p3, p0, Lio/appmetrica/analytics/impl/W2;->h:Lio/appmetrica/analytics/impl/Ei;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/W2;->f:Lio/appmetrica/analytics/impl/I6;

    invoke-virtual {v1, v0}, Lio/appmetrica/analytics/impl/I6;->a(Lio/appmetrica/analytics/impl/H6;)Lio/appmetrica/analytics/impl/i6;

    move-result-object v0

    invoke-static {v0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    sget-object v3, Lio/appmetrica/analytics/impl/I9;->a:Ljava/util/Set;

    new-instance v3, Lio/appmetrica/analytics/impl/a4;

    sget-object v4, Lio/appmetrica/analytics/impl/pb;->c:Lio/appmetrica/analytics/impl/pb;

    const/16 v4, 0x1708

    invoke-direct {v3, v0, p2, v4, v1}, Lio/appmetrica/analytics/impl/a4;-><init>([BLjava/lang/String;ILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v0}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Mh;)Lio/appmetrica/analytics/impl/a6;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {p3, v1, v0, v3, v2}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Mh;ILjava/util/Map;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    invoke-static {p2}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Error with identifier: %s from plugin received: %s"

    invoke-virtual {p0, p2, p1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .line 79
    new-instance v0, Lio/appmetrica/analytics/impl/H6;

    new-instance v1, Lio/appmetrica/analytics/impl/Gg;

    .line 80
    invoke-virtual {p0, p3}, Lio/appmetrica/analytics/impl/W2;->a(Ljava/lang/Throwable;)Lio/appmetrica/analytics/impl/co;

    move-result-object p3

    invoke-direct {v1, p2, p3}, Lio/appmetrica/analytics/impl/Gg;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/impl/co;)V

    invoke-direct {v0, v1, p1}, Lio/appmetrica/analytics/impl/H6;-><init>(Lio/appmetrica/analytics/impl/Gg;Ljava/lang/String;)V

    .line 81
    iget-object p3, p0, Lio/appmetrica/analytics/impl/W2;->h:Lio/appmetrica/analytics/impl/Ei;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/W2;->f:Lio/appmetrica/analytics/impl/I6;

    .line 82
    invoke-virtual {v1, v0}, Lio/appmetrica/analytics/impl/I6;->a(Lio/appmetrica/analytics/impl/H6;)Lio/appmetrica/analytics/impl/i6;

    move-result-object v0

    invoke-static {v0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 83
    sget-object v2, Lio/appmetrica/analytics/impl/I9;->a:Ljava/util/Set;

    .line 84
    new-instance v2, Lio/appmetrica/analytics/impl/a4;

    sget-object v3, Lio/appmetrica/analytics/impl/pb;->c:Lio/appmetrica/analytics/impl/pb;

    const/16 v3, 0x1708

    .line 85
    invoke-direct {v2, v0, p2, v3, v1}, Lio/appmetrica/analytics/impl/a4;-><init>([BLjava/lang/String;ILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    .line 86
    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    .line 87
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    invoke-static {v2, v0}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Mh;)Lio/appmetrica/analytics/impl/a6;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 89
    invoke-virtual {p3, v1, v0, v3, v2}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Mh;ILjava/util/Map;)V

    .line 90
    iget-object p0, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 91
    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-static {p2}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 93
    const-string p2, "Error received: id: %s, message: %s"

    invoke-virtual {p0, p2, p1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final reportError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .line 108
    new-instance v0, Lio/appmetrica/analytics/impl/Gg;

    invoke-virtual {p0, p2}, Lio/appmetrica/analytics/impl/W2;->a(Ljava/lang/Throwable;)Lio/appmetrica/analytics/impl/co;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lio/appmetrica/analytics/impl/Gg;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/impl/co;)V

    .line 109
    iget-object p2, p0, Lio/appmetrica/analytics/impl/W2;->h:Lio/appmetrica/analytics/impl/Ei;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/W2;->e:Lio/appmetrica/analytics/impl/Hg;

    .line 110
    invoke-virtual {v1, v0}, Lio/appmetrica/analytics/impl/Hg;->a(Lio/appmetrica/analytics/impl/Gg;)Lio/appmetrica/analytics/impl/i6;

    move-result-object v0

    invoke-static {v0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 111
    sget-object v2, Lio/appmetrica/analytics/impl/I9;->a:Ljava/util/Set;

    .line 112
    new-instance v2, Lio/appmetrica/analytics/impl/a4;

    sget-object v3, Lio/appmetrica/analytics/impl/pb;->c:Lio/appmetrica/analytics/impl/pb;

    const/16 v3, 0x1704

    .line 113
    invoke-direct {v2, v0, p1, v3, v1}, Lio/appmetrica/analytics/impl/a4;-><init>([BLjava/lang/String;ILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    .line 114
    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    invoke-static {v2, v0}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Mh;)Lio/appmetrica/analytics/impl/a6;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 116
    invoke-virtual {p2, v1, v0, v3, v2}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Mh;ILjava/util/Map;)V

    .line 117
    iget-object p0, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Error received: %s"

    invoke-virtual {p0, p2, p1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final reportEvent(Lio/appmetrica/analytics/ModuleEvent;)V
    .locals 5

    invoke-virtual {p1}, Lio/appmetrica/analytics/ModuleEvent;->getType()I

    move-result v0

    sget-object v1, Lio/appmetrica/analytics/impl/W2;->n:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    sget-object v1, Lio/appmetrica/analytics/impl/I9;->a:Ljava/util/Set;

    invoke-virtual {p1}, Lio/appmetrica/analytics/ModuleEvent;->getValue()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lio/appmetrica/analytics/impl/a4;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v1

    :goto_0
    invoke-virtual {p1}, Lio/appmetrica/analytics/ModuleEvent;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lio/appmetrica/analytics/impl/pb;->c:Lio/appmetrica/analytics/impl/pb;

    const/16 v4, 0x2000

    invoke-direct {v2, v1, v3, v4, v0}, Lio/appmetrica/analytics/impl/a4;-><init>([BLjava/lang/String;ILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    invoke-virtual {p1}, Lio/appmetrica/analytics/ModuleEvent;->getType()I

    move-result v0

    iput v0, v2, Lio/appmetrica/analytics/impl/a6;->e:I

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v2, Lio/appmetrica/analytics/impl/a6;->q:Ljava/lang/Integer;

    invoke-virtual {p1}, Lio/appmetrica/analytics/ModuleEvent;->getCategory()Lio/appmetrica/analytics/ModuleEvent$Category;

    move-result-object v1

    sget-object v3, Lio/appmetrica/analytics/impl/Q8;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    if-ne v1, v0, :cond_2

    sget-object v0, Lio/appmetrica/analytics/impl/y9;->d:Lio/appmetrica/analytics/impl/y9;

    goto :goto_1

    :cond_2
    invoke-static {}, Lme0;->e()V

    return-void

    :cond_3
    sget-object v0, Lio/appmetrica/analytics/impl/y9;->b:Lio/appmetrica/analytics/impl/y9;

    :goto_1
    iput-object v0, v2, Lio/appmetrica/analytics/impl/a6;->l:Lio/appmetrica/analytics/impl/y9;

    invoke-virtual {p1}, Lio/appmetrica/analytics/ModuleEvent;->getEnvironment()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lio/appmetrica/analytics/impl/ub;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lio/appmetrica/analytics/impl/a6;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lio/appmetrica/analytics/ModuleEvent;->getExtras()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lio/appmetrica/analytics/ModuleEvent;->getExtras()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v2, Lio/appmetrica/analytics/impl/a6;->p:Ljava/util/Map;

    :cond_4
    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->h:Lio/appmetrica/analytics/impl/Ei;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    invoke-virtual {p1}, Lio/appmetrica/analytics/ModuleEvent;->getServiceDataReporterType()I

    move-result v1

    invoke-virtual {p1}, Lio/appmetrica/analytics/ModuleEvent;->getAttributes()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, v2, p0, v1, p1}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Mh;ILjava/util/Map;)V

    return-void
.end method

.method public final reportEvent(Lio/appmetrica/analytics/coreapi/event/AppMetricaEvent;)V
    .locals 5

    .line 158
    invoke-virtual {p1}, Lio/appmetrica/analytics/coreapi/event/AppMetricaEvent;->getEventData()Lio/appmetrica/analytics/coreapi/internal/event/AppMetricaEventData;

    move-result-object p1

    .line 159
    invoke-virtual {p1}, Lio/appmetrica/analytics/coreapi/internal/event/AppMetricaEventData;->getType()I

    move-result v0

    .line 160
    sget-object v1, Lio/appmetrica/analytics/impl/W2;->n:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AppMetricaEvent received: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/appmetrica/analytics/coreapi/internal/event/AppMetricaEventData;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    sget-object v1, Lio/appmetrica/analytics/impl/I9;->a:Ljava/util/Set;

    .line 163
    new-instance v1, Lio/appmetrica/analytics/impl/a4;

    .line 164
    invoke-virtual {p1}, Lio/appmetrica/analytics/coreapi/internal/event/AppMetricaEventData;->getData()[B

    move-result-object v2

    .line 165
    invoke-virtual {p1}, Lio/appmetrica/analytics/coreapi/internal/event/AppMetricaEventData;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lio/appmetrica/analytics/impl/pb;->c:Lio/appmetrica/analytics/impl/pb;

    const/16 v4, 0x2000

    .line 166
    invoke-direct {v1, v2, v3, v4, v0}, Lio/appmetrica/analytics/impl/a4;-><init>([BLjava/lang/String;ILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    .line 167
    invoke-virtual {p1}, Lio/appmetrica/analytics/coreapi/internal/event/AppMetricaEventData;->getType()I

    move-result v0

    .line 168
    iput v0, v1, Lio/appmetrica/analytics/impl/a6;->e:I

    .line 169
    iget v0, v1, Lio/appmetrica/analytics/impl/a6;->g:I

    .line 170
    invoke-virtual {p1}, Lio/appmetrica/analytics/coreapi/internal/event/AppMetricaEventData;->getBytesTruncated()I

    move-result p1

    add-int/2addr p1, v0

    .line 171
    iput p1, v1, Lio/appmetrica/analytics/impl/a6;->g:I

    const/4 p1, 0x2

    .line 172
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 173
    iput-object p1, v1, Lio/appmetrica/analytics/impl/a6;->q:Ljava/lang/Integer;

    .line 174
    iget-object p1, p0, Lio/appmetrica/analytics/impl/W2;->h:Lio/appmetrica/analytics/impl/Ei;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 175
    invoke-virtual {p1, v1, p0, v2, v0}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Mh;ILjava/util/Map;)V

    return-void
.end method

.method public final reportEvent(Ljava/lang/String;)V
    .locals 7

    .line 148
    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Event received: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->h:Lio/appmetrica/analytics/impl/Ei;

    iget-object v6, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 150
    sget-object v1, Lio/appmetrica/analytics/impl/I9;->a:Ljava/util/Set;

    .line 151
    new-instance v1, Lio/appmetrica/analytics/impl/a4;

    sget-object v2, Lio/appmetrica/analytics/impl/pb;->c:Lio/appmetrica/analytics/impl/pb;

    .line 152
    const-string v2, ""

    const/4 v5, 0x0

    const/4 v4, 0x1

    move-object v3, p1

    .line 153
    invoke-direct/range {v1 .. v6}, Lio/appmetrica/analytics/impl/a4;-><init>(Ljava/lang/String;Ljava/lang/String;IILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    .line 154
    iget-object p0, p0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    .line 155
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    invoke-static {v1, p0}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Mh;)Lio/appmetrica/analytics/impl/a6;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 157
    invoke-virtual {v0, p1, p0, v2, v1}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Mh;ILjava/util/Map;)V

    return-void
.end method

.method public final reportEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 125
    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Event received: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". With value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-static {p2}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 128
    invoke-virtual {v0, v1, v2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->h:Lio/appmetrica/analytics/impl/Ei;

    iget-object v6, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 130
    sget-object v1, Lio/appmetrica/analytics/impl/I9;->a:Ljava/util/Set;

    .line 131
    new-instance v1, Lio/appmetrica/analytics/impl/a4;

    sget-object v2, Lio/appmetrica/analytics/impl/pb;->c:Lio/appmetrica/analytics/impl/pb;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v3, p1

    move-object v2, p2

    .line 132
    invoke-direct/range {v1 .. v6}, Lio/appmetrica/analytics/impl/a4;-><init>(Ljava/lang/String;Ljava/lang/String;IILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    .line 133
    iget-object p0, p0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    .line 134
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    invoke-static {v1, p0}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Mh;)Lio/appmetrica/analytics/impl/a6;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v1, 0x1

    .line 136
    invoke-virtual {v0, p1, p0, v1, p2}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Mh;ILjava/util/Map;)V

    return-void
.end method

.method public final reportEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->h:Lio/appmetrica/analytics/impl/Ei;

    iget-object v6, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 138
    sget-object v1, Lio/appmetrica/analytics/impl/I9;->a:Ljava/util/Set;

    .line 139
    new-instance v1, Lio/appmetrica/analytics/impl/a4;

    sget-object v2, Lio/appmetrica/analytics/impl/pb;->c:Lio/appmetrica/analytics/impl/pb;

    .line 140
    const-string v2, ""

    const/4 v5, 0x0

    const/4 v4, 0x1

    move-object v3, p1

    .line 141
    invoke-direct/range {v1 .. v6}, Lio/appmetrica/analytics/impl/a4;-><init>(Ljava/lang/String;Ljava/lang/String;IILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    .line 142
    iget-object p1, p0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    const/4 v2, 0x1

    .line 143
    invoke-virtual {v0, v1, p1, v2, p2}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Mh;ILjava/util/Map;)V

    .line 144
    iget-object p0, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Event received: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-static {v3}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". With value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-static {p2}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    .line 147
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final reportRevenue(Lio/appmetrica/analytics/Revenue;)V
    .locals 11

    sget-object v0, Lio/appmetrica/analytics/impl/V2;->a:Lio/appmetrica/analytics/impl/Wi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/Wi;->a(Lio/appmetrica/analytics/Revenue;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;->isValid()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->h:Lio/appmetrica/analytics/impl/Ei;

    new-instance v1, Lio/appmetrica/analytics/impl/Xi;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    invoke-direct {v1, p1, v3}, Lio/appmetrica/analytics/impl/Xi;-><init>(Lio/appmetrica/analytics/Revenue;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    iget-object v3, p0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v3, Lio/appmetrica/analytics/impl/V3;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-virtual {v4}, Lio/appmetrica/analytics/internal/CounterConfiguration;->getApiKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/appmetrica/analytics/coreutils/internal/logger/LoggerStorage;->getOrCreatePublicLogger(Ljava/lang/String;)Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v4

    invoke-static {v4, v1}, Lio/appmetrica/analytics/impl/a4;->a(Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Lio/appmetrica/analytics/impl/Xi;)Lio/appmetrica/analytics/impl/a4;

    move-result-object v6

    new-instance v5, Lio/appmetrica/analytics/impl/Ch;

    new-instance v10, Lio/appmetrica/analytics/impl/Mh;

    new-instance v1, Lio/appmetrica/analytics/impl/Pf;

    iget-object v4, v3, Lio/appmetrica/analytics/impl/V3;->a:Lio/appmetrica/analytics/impl/Pf;

    invoke-direct {v1, v4}, Lio/appmetrica/analytics/impl/Pf;-><init>(Lio/appmetrica/analytics/impl/Pf;)V

    new-instance v4, Lio/appmetrica/analytics/internal/CounterConfiguration;

    iget-object v7, v3, Lio/appmetrica/analytics/impl/V3;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-direct {v4, v7}, Lio/appmetrica/analytics/internal/CounterConfiguration;-><init>(Lio/appmetrica/analytics/internal/CounterConfiguration;)V

    iget-object v7, v3, Lio/appmetrica/analytics/impl/Mh;->c:Lio/appmetrica/analytics/impl/O8;

    monitor-enter v3

    :try_start_0
    iget-object v8, v3, Lio/appmetrica/analytics/impl/Mh;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    invoke-direct {v10, v1, v4, v7, v8}, Lio/appmetrica/analytics/impl/Mh;-><init>(Lio/appmetrica/analytics/impl/Pf;Lio/appmetrica/analytics/internal/CounterConfiguration;Lio/appmetrica/analytics/impl/O8;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v10}, Lio/appmetrica/analytics/impl/Ch;-><init>(Lio/appmetrica/analytics/impl/a6;ZILjava/util/HashMap;Lio/appmetrica/analytics/impl/Mh;)V

    invoke-virtual {v0, v5}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/Ch;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Revenue received for productID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lio/appmetrica/analytics/Revenue;->productID:Ljava/lang/String;

    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " of quantity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lio/appmetrica/analytics/Revenue;->quantity:Ljava/lang/Integer;

    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with price (in micros): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p1, Lio/appmetrica/analytics/Revenue;->priceMicros:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lio/appmetrica/analytics/Revenue;->currency:Ljava/util/Currency;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v3

    throw p0

    :cond_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Passed revenue is not valid. Reason: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final reportUnhandledException(Lio/appmetrica/analytics/plugins/PluginErrorDetails;)V
    .locals 6

    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->l:Lio/appmetrica/analytics/impl/Ve;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/Ve;->a(Lio/appmetrica/analytics/plugins/PluginErrorDetails;)Lio/appmetrica/analytics/impl/co;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/W2;->h:Lio/appmetrica/analytics/impl/Ei;

    iget-object v2, v0, Lio/appmetrica/analytics/impl/co;->a:Lio/appmetrica/analytics/impl/Un;

    const-string v3, ""

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v2, Lio/appmetrica/analytics/impl/Un;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    :goto_0
    iget-object v2, p0, Lio/appmetrica/analytics/impl/W2;->d:Lio/appmetrica/analytics/impl/do;

    invoke-virtual {v2, v0}, Lio/appmetrica/analytics/impl/do;->a(Lio/appmetrica/analytics/impl/co;)Lio/appmetrica/analytics/impl/g6;

    move-result-object v0

    invoke-static {v0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object v0

    iget-object v2, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    sget-object v4, Lio/appmetrica/analytics/impl/I9;->a:Ljava/util/Set;

    sget-object v4, Lio/appmetrica/analytics/impl/pb;->c:Lio/appmetrica/analytics/impl/pb;

    new-instance v4, Lio/appmetrica/analytics/impl/a4;

    const/16 v5, 0x1703

    invoke-direct {v4, v0, v3, v5, v2}, Lio/appmetrica/analytics/impl/a4;-><init>([BLjava/lang/String;ILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v0}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Mh;)Lio/appmetrica/analytics/impl/a6;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v0, v4, v3}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Mh;ILjava/util/Map;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    invoke-virtual {p1}, Lio/appmetrica/analytics/plugins/PluginErrorDetails;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Crash from plugin received: %s"

    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final reportUnhandledException(Ljava/lang/Throwable;)V
    .locals 4

    .line 81
    new-instance v0, Lio/appmetrica/analytics/impl/Y;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/W2;->j:Lio/appmetrica/analytics/impl/Qf;

    .line 82
    invoke-interface {v1}, Lio/appmetrica/analytics/impl/Qf;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 83
    invoke-direct {v0, v2, v2, v1}, Lio/appmetrica/analytics/impl/Y;-><init>(Lio/appmetrica/analytics/impl/Kn;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lio/appmetrica/analytics/impl/W2;->k:Lio/appmetrica/analytics/impl/Z9;

    .line 85
    iget-object v1, v1, Lio/appmetrica/analytics/impl/Z9;->b:Lio/appmetrica/analytics/impl/kn;

    .line 86
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Ki;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 87
    iget-object v3, p0, Lio/appmetrica/analytics/impl/W2;->k:Lio/appmetrica/analytics/impl/Z9;

    .line 88
    iget-object v3, v3, Lio/appmetrica/analytics/impl/Z9;->c:Lio/appmetrica/analytics/impl/j3;

    .line 89
    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/Ki;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 90
    invoke-static {p1, v0, v2, v1, v3}, Lio/appmetrica/analytics/impl/fo;->a(Ljava/lang/Throwable;Lio/appmetrica/analytics/impl/Y;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;)Lio/appmetrica/analytics/impl/co;

    move-result-object p1

    .line 91
    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->h:Lio/appmetrica/analytics/impl/Ei;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    .line 92
    invoke-virtual {v0, p1, v1}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/co;Lio/appmetrica/analytics/impl/Mh;)Lio/appmetrica/analytics/impl/Ch;

    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/Ch;)V

    .line 94
    iget-object p0, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unhandled exception received: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final reportUserProfile(Lio/appmetrica/analytics/profile/UserProfile;)V
    .locals 9

    new-instance v0, Lio/appmetrica/analytics/impl/po;

    sget-object v1, Lio/appmetrica/analytics/impl/po;->c:[I

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/po;-><init>([I)V

    invoke-virtual {p1}, Lio/appmetrica/analytics/profile/UserProfile;->getUserProfileUpdates()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/profile/UserProfileUpdate;

    invoke-virtual {v1}, Lio/appmetrica/analytics/profile/UserProfileUpdate;->getUserProfileUpdatePatcher()Lio/appmetrica/analytics/impl/qo;

    move-result-object v1

    iget-object v2, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    invoke-interface {v1, v2}, Lio/appmetrica/analytics/impl/qo;->a(Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    invoke-interface {v1, v0}, Lio/appmetrica/analytics/impl/qo;->a(Lio/appmetrica/analytics/impl/po;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lio/appmetrica/analytics/impl/uo;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/uo;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    iget-object v4, v0, Lio/appmetrica/analytics/impl/po;->a:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, v0, Lio/appmetrica/analytics/impl/po;->a:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/appmetrica/analytics/impl/ro;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lio/appmetrica/analytics/impl/ro;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/appmetrica/analytics/impl/ro;

    iput-object v0, p1, Lio/appmetrica/analytics/impl/uo;->a:[Lio/appmetrica/analytics/impl/ro;

    sget-object v0, Lio/appmetrica/analytics/impl/W2;->o:Lio/appmetrica/analytics/impl/U2;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/U2;->validate(Ljava/lang/Object;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;->isValid()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->h:Lio/appmetrica/analytics/impl/Ei;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/a4;->a(Lio/appmetrica/analytics/impl/uo;)Lio/appmetrica/analytics/impl/a6;

    move-result-object v4

    new-instance v3, Lio/appmetrica/analytics/impl/Ch;

    new-instance v8, Lio/appmetrica/analytics/impl/Mh;

    new-instance p1, Lio/appmetrica/analytics/impl/Pf;

    iget-object v5, v1, Lio/appmetrica/analytics/impl/V3;->a:Lio/appmetrica/analytics/impl/Pf;

    invoke-direct {p1, v5}, Lio/appmetrica/analytics/impl/Pf;-><init>(Lio/appmetrica/analytics/impl/Pf;)V

    new-instance v5, Lio/appmetrica/analytics/internal/CounterConfiguration;

    iget-object v6, v1, Lio/appmetrica/analytics/impl/V3;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-direct {v5, v6}, Lio/appmetrica/analytics/internal/CounterConfiguration;-><init>(Lio/appmetrica/analytics/internal/CounterConfiguration;)V

    iget-object v6, v1, Lio/appmetrica/analytics/impl/Mh;->c:Lio/appmetrica/analytics/impl/O8;

    monitor-enter v1

    :try_start_0
    iget-object v7, v1, Lio/appmetrica/analytics/impl/Mh;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-direct {v8, p1, v5, v6, v7}, Lio/appmetrica/analytics/impl/Mh;-><init>(Lio/appmetrica/analytics/impl/Pf;Lio/appmetrica/analytics/internal/CounterConfiguration;Lio/appmetrica/analytics/impl/O8;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v8}, Lio/appmetrica/analytics/impl/Ch;-><init>(Lio/appmetrica/analytics/impl/a6;ZILjava/util/HashMap;Lio/appmetrica/analytics/impl/Mh;)V

    invoke-virtual {v0, v3}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/Ch;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "User profile received"

    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1

    throw p0

    :cond_3
    iget-object p0, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "UserInfo wasn\'t sent because "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final resumeSession()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/W2;->d(Ljava/lang/String;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Resume session"

    invoke-virtual {p0, v1, v0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final sendEventsBuffer()V
    .locals 8

    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Send event buffer"

    invoke-virtual {v0, v2, v1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->h:Lio/appmetrica/analytics/impl/Ei;

    sget-object v1, Lio/appmetrica/analytics/impl/pb;->c:Lio/appmetrica/analytics/impl/pb;

    iget-object v7, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    sget-object v1, Lio/appmetrica/analytics/impl/I9;->a:Ljava/util/Set;

    new-instance v2, Lio/appmetrica/analytics/impl/a4;

    const-string v3, ""

    const/4 v6, 0x0

    const-string v4, ""

    const/16 v5, 0x100

    invoke-direct/range {v2 .. v7}, Lio/appmetrica/analytics/impl/a4;-><init>(Ljava/lang/String;Ljava/lang/String;IILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p0}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Mh;)Lio/appmetrica/analytics/impl/a6;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p0, v3, v2}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Mh;ILjava/util/Map;)V

    return-void
.end method

.method public final setDataSendingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/V3;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/internal/CounterConfiguration;->setDataSendingEnabled(Z)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Updated data sending enabled: %s"

    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final setSessionExtra(Ljava/lang/String;[B)V
    .locals 7

    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->h:Lio/appmetrica/analytics/impl/Ei;

    iget-object v6, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    sget-object v1, Lio/appmetrica/analytics/impl/I9;->a:Ljava/util/Set;

    new-instance v1, Lio/appmetrica/analytics/impl/a4;

    sget-object v2, Lio/appmetrica/analytics/impl/pb;->c:Lio/appmetrica/analytics/impl/pb;

    const-string v2, ""

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x2001

    invoke-direct/range {v1 .. v6}, Lio/appmetrica/analytics/impl/a4;-><init>(Ljava/lang/String;Ljava/lang/String;IILio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    if-nez p2, :cond_0

    const/4 p2, 0x0

    new-array p2, p2, [B

    :cond_0
    invoke-static {p1, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, v1, Lio/appmetrica/analytics/impl/a6;->p:Ljava/util/Map;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Mh;)Lio/appmetrica/analytics/impl/a6;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, v1, p2}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Mh;ILjava/util/Map;)V

    return-void
.end method

.method public final setUserProfileID(Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lio/appmetrica/analytics/impl/W2;->h:Lio/appmetrica/analytics/impl/Ei;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/W2;->b:Lio/appmetrica/analytics/impl/Mh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lio/appmetrica/analytics/impl/V3;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-virtual {v2}, Lio/appmetrica/analytics/internal/CounterConfiguration;->getApiKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/appmetrica/analytics/coreutils/internal/logger/LoggerStorage;->getOrCreatePublicLogger(Ljava/lang/String;)Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v2

    new-instance v4, Lio/appmetrica/analytics/impl/a4;

    invoke-direct {v4, v2}, Lio/appmetrica/analytics/impl/a4;-><init>(Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    sget-object v2, Lio/appmetrica/analytics/impl/pb;->c:Lio/appmetrica/analytics/impl/pb;

    const v2, 0xa002

    iput v2, v4, Lio/appmetrica/analytics/impl/a6;->d:I

    invoke-virtual {v4, p1}, Lio/appmetrica/analytics/impl/a4;->c(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Lio/appmetrica/analytics/impl/a4;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lio/appmetrica/analytics/impl/a6;->b:Ljava/lang/String;

    new-instance v3, Lio/appmetrica/analytics/impl/Ch;

    new-instance v8, Lio/appmetrica/analytics/impl/Mh;

    new-instance v2, Lio/appmetrica/analytics/impl/Pf;

    iget-object v5, v1, Lio/appmetrica/analytics/impl/V3;->a:Lio/appmetrica/analytics/impl/Pf;

    invoke-direct {v2, v5}, Lio/appmetrica/analytics/impl/Pf;-><init>(Lio/appmetrica/analytics/impl/Pf;)V

    new-instance v5, Lio/appmetrica/analytics/internal/CounterConfiguration;

    iget-object v6, v1, Lio/appmetrica/analytics/impl/V3;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-direct {v5, v6}, Lio/appmetrica/analytics/internal/CounterConfiguration;-><init>(Lio/appmetrica/analytics/internal/CounterConfiguration;)V

    iget-object v6, v1, Lio/appmetrica/analytics/impl/Mh;->c:Lio/appmetrica/analytics/impl/O8;

    monitor-enter v1

    :try_start_0
    iget-object v7, v1, Lio/appmetrica/analytics/impl/Mh;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-direct {v8, v2, v5, v6, v7}, Lio/appmetrica/analytics/impl/Mh;-><init>(Lio/appmetrica/analytics/impl/Pf;Lio/appmetrica/analytics/internal/CounterConfiguration;Lio/appmetrica/analytics/impl/O8;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v8}, Lio/appmetrica/analytics/impl/Ch;-><init>(Lio/appmetrica/analytics/impl/a6;ZILjava/util/HashMap;Lio/appmetrica/analytics/impl/Mh;)V

    invoke-virtual {v0, v3}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/Ch;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/W2;->c:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Set user profile ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->wrapToTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1

    throw p0
.end method
