.class public final Liz4;
.super Lio/grpc/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liz4$b;,
        Liz4$c;,
        Liz4$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/k<",
        "Liz4;",
        ">;"
    }
.end annotation


# static fields
.field public static final A:J

.field public static final B:J

.field public static final C:Lau7;

.field public static final D:Lyd2;

.field public static final E:Lru1;

.field public static final F:Ljava/util/regex/Pattern;

.field public static final G:Ljava/lang/reflect/Method;

.field public static final z:Ljava/util/logging/Logger;


# instance fields
.field public final a:Lau7;

.field public final b:Lau7;

.field public final c:Ljava/util/ArrayList;

.field public final d:Lio/grpc/n;

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Lyd2;

.field public final i:Lru1;

.field public final j:J

.field public final k:I

.field public final l:I

.field public final m:J

.field public final n:J

.field public final o:Z

.field public final p:Li94;

.field public final q:Z

.field public final r:Z

.field public final s:Z

.field public final t:Z

.field public final u:Z

.field public final v:Z

.field public final w:Ljava/util/ArrayList;

.field public final x:Lhv5$e;

.field public final y:Liz4$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "Unable to apply census stats"

    const-class v1, Liz4;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Liz4;->z:Ljava/util/logging/Logger;

    const-wide/32 v1, 0x1b7740

    sput-wide v1, Liz4;->A:J

    const-wide/16 v1, 0x3e8

    sput-wide v1, Liz4;->B:J

    sget-object v1, Lvs3;->p:Lvs3$b;

    new-instance v2, Lau7;

    invoke-direct {v2, v1}, Lau7;-><init>(Lyt7$c;)V

    sput-object v2, Liz4;->C:Lau7;

    sget-object v1, Lyd2;->d:Lyd2;

    sput-object v1, Liz4;->D:Lyd2;

    sget-object v1, Lru1;->b:Lru1;

    sput-object v1, Liz4;->E:Lru1;

    const-string v1, "[a-zA-Z][a-zA-Z0-9+.-]*:/.*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Liz4;->F:Ljava/util/regex/Pattern;

    :try_start_0
    const-string v1, "io.grpc.census.InternalCensusStatsAccessor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getClientInterceptor"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v3, v3, v3, v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :goto_0
    sget-object v2, Liz4;->z:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    sget-object v2, Liz4;->z:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    const/4 v0, 0x0

    :goto_3
    sput-object v0, Liz4;->G:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lhv5$e;Lhv5$d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Liz4;->C:Lau7;

    iput-object v0, p0, Liz4;->a:Lau7;

    iput-object v0, p0, Liz4;->b:Lau7;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Liz4;->c:Ljava/util/ArrayList;

    invoke-static {}, Lio/grpc/n;->a()Lio/grpc/n;

    move-result-object v0

    iput-object v0, p0, Liz4;->d:Lio/grpc/n;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Liz4;->e:Ljava/util/ArrayList;

    const-string v0, "pick_first"

    iput-object v0, p0, Liz4;->g:Ljava/lang/String;

    sget-object v0, Liz4;->D:Lyd2;

    iput-object v0, p0, Liz4;->h:Lyd2;

    sget-object v0, Liz4;->E:Lru1;

    iput-object v0, p0, Liz4;->i:Lru1;

    sget-wide v0, Liz4;->A:J

    iput-wide v0, p0, Liz4;->j:J

    const/4 v0, 0x5

    iput v0, p0, Liz4;->k:I

    iput v0, p0, Liz4;->l:I

    const-wide/32 v0, 0x1000000

    iput-wide v0, p0, Liz4;->m:J

    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Liz4;->n:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Liz4;->o:Z

    sget-object v1, Li94;->e:Li94;

    iput-object v1, p0, Liz4;->p:Li94;

    iput-boolean v0, p0, Liz4;->q:Z

    iput-boolean v0, p0, Liz4;->r:Z

    iput-boolean v0, p0, Liz4;->s:Z

    iput-boolean v0, p0, Liz4;->t:Z

    iput-boolean v0, p0, Liz4;->u:Z

    iput-boolean v0, p0, Liz4;->v:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Liz4;->w:Ljava/util/ArrayList;

    const-string v0, "target"

    invoke-static {p1, v0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Liz4;->f:Ljava/lang/String;

    iput-object p2, p0, Liz4;->x:Lhv5$e;

    iput-object p3, p0, Liz4;->y:Liz4$a;

    invoke-static {}, Lio/grpc/n;->a()Lio/grpc/n;

    move-result-object p1

    iput-object p1, p0, Liz4;->d:Lio/grpc/n;

    invoke-static {}, Lwv1;->a()Lwv1;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lwv1;->a:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvv1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public final a()Ldz4;
    .locals 20

    move-object/from16 v2, p0

    iget-object v0, v2, Liz4;->x:Lhv5$e;

    iget-object v0, v0, Lhv5$e;->a:Lhv5;

    iget-wide v3, v0, Lhv5;->h:J

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v1, v3, v5

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    move v11, v4

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    new-instance v5, Lhv5$f;

    iget-object v6, v0, Lhv5;->c:Lau7;

    iget-object v7, v0, Lhv5;->d:Lau7;

    sget-object v1, Lhv5$b;->b:[I

    iget-object v8, v0, Lhv5;->g:Lhv5$c;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v1, v1, v9

    const/4 v9, 0x0

    if-eq v1, v4, :cond_3

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    :try_start_0
    iget-object v1, v0, Lhv5;->e:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_1

    const-string v1, "Default"

    sget-object v4, Ly86;->d:Ly86;

    iget-object v4, v4, Ly86;->a:Ljava/security/Provider;

    invoke-static {v1, v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, v0, Lhv5;->e:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object v8, v1

    move-object v1, v9

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "TLS Provider failure"

    invoke-static {v1, v0}, Lmg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v9

    :cond_2
    const-string v0, "Unknown negotiation type: "

    invoke-static {v8, v0}, Lkg;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v9

    :cond_3
    move-object v1, v9

    move-object v8, v1

    :goto_1
    iget-object v9, v0, Lhv5;->f:Lsw1;

    iget v10, v0, Lhv5;->k:I

    iget-wide v12, v0, Lhv5;->h:J

    iget-wide v14, v0, Lhv5;->i:J

    iget v4, v0, Lhv5;->j:I

    iget v1, v0, Lhv5;->l:I

    iget-object v0, v0, Lhv5;->b:Lg39$a;

    move-object/from16 v18, v0

    move/from16 v17, v1

    move/from16 v16, v4

    const/4 v1, 0x0

    invoke-direct/range {v5 .. v18}, Lhv5$f;-><init>(Lpq5;Lau7;Ljavax/net/ssl/SSLSocketFactory;Lsw1;IZJJIILg39$a;)V

    sget-boolean v0, Ll63;->a:Z

    iget-object v4, v2, Liz4;->f:Ljava/lang/String;

    iget-object v6, v2, Liz4;->d:Lio/grpc/n;

    if-eqz v0, :cond_8

    const-string v7, ""

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_1
    invoke-static {v4}, La99;->b(Ljava/lang/String;)La99;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_2
    new-instance v9, Ljava/net/URISyntaxException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v4, v0}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v9
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v9, v1

    :goto_3
    if-eqz v9, :cond_4

    iget-object v0, v9, La99;->a:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lio/grpc/n;->b(Ljava/lang/String;)Lio/grpc/m;

    move-result-object v0

    goto :goto_4

    :cond_4
    move-object v0, v1

    :goto_4
    if-nez v0, :cond_5

    sget-object v10, Liz4;->F:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-nez v10, :cond_5

    monitor-enter v6

    :try_start_3
    iget-object v0, v6, Lio/grpc/n;->a:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v6

    sget-object v9, La99;->h:Ljava/util/BitSet;

    new-instance v9, La99$a;

    invoke-direct {v9}, La99$a;-><init>()V

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, La99$a;->c(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {v0, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sget-object v10, La99;->l:Ljava/util/BitSet;

    invoke-static {v0, v10}, La99;->f(Ljava/lang/String;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, La99$a;->f:Ljava/lang/String;

    const-string v0, "/"

    invoke-static {v0, v4}, Lbj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v10, La99;->o:Ljava/util/BitSet;

    invoke-static {v0, v10}, La99;->f(Ljava/lang/String;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, La99$a;->b:Ljava/lang/String;

    invoke-virtual {v9}, La99$a;->a()La99;

    move-result-object v9

    iget-object v0, v9, La99;->a:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lio/grpc/n;->b(Ljava/lang/String;)Lio/grpc/m;

    move-result-object v0

    goto :goto_5

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_5
    :goto_5
    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_6
    const-string v1, "Could not find a NameResolverProvider for "

    invoke-static {v1, v4, v7}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v4, Liz4$c;

    new-instance v6, Lf99$a;

    invoke-direct {v6, v9}, Lf99$a;-><init>(La99;)V

    invoke-direct {v4, v6, v0}, Liz4$c;-><init>(Lf99;Lio/grpc/m;)V

    goto/16 :goto_9

    :cond_8
    const-string v7, ""

    const-string v8, "/"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_5
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v1

    :goto_6
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lio/grpc/n;->b(Ljava/lang/String;)Lio/grpc/m;

    move-result-object v10

    goto :goto_7

    :cond_9
    move-object v10, v1

    :goto_7
    if-nez v10, :cond_a

    sget-object v11, Liz4;->F:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-nez v11, :cond_a

    monitor-enter v6

    :try_start_6
    iget-object v0, v6, Lio/grpc/n;->a:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v6

    :try_start_7
    new-instance v10, Ljava/net/URI;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v0, v7, v8, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_7} :catch_4

    invoke-virtual {v10}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lio/grpc/n;->b(Ljava/lang/String;)Lio/grpc/m;

    move-result-object v0

    move-object/from16 v19, v10

    move-object v10, v0

    move-object/from16 v0, v19

    goto :goto_8

    :catch_4
    move-exception v0

    invoke-static {v0}, Lcg;->h(Ljava/lang/Throwable;)V

    return-object v1

    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0

    :cond_a
    :goto_8
    if-nez v10, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_b
    const-string v1, "Could not find a NameResolverProvider for "

    invoke-static {v1, v4, v7}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v4, Liz4$c;

    new-instance v6, Lf99$b;

    invoke-direct {v6, v0}, Lf99$b;-><init>(Ljava/net/URI;)V

    invoke-direct {v4, v6, v10}, Liz4$c;-><init>(Lf99;Lio/grpc/m;)V

    :goto_9
    const-class v0, Ljava/net/InetSocketAddress;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iget-object v6, v4, Liz4$c;->b:Lio/grpc/m;

    if-eqz v0, :cond_e

    invoke-virtual {v6}, Lio/grpc/m;->c()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_a

    :cond_d
    const-string v0, "Address types of NameResolver \'%s\' for \'%s\' not supported by transport"

    const-string v2, "dns"

    iget-object v3, v4, Liz4$c;->a:Lf99;

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lnz0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_e
    :goto_a
    new-instance v11, Ljz4;

    new-instance v6, Lez4;

    iget-object v7, v4, Liz4$c;->a:Lf99;

    iget-object v4, v4, Liz4$c;->b:Lio/grpc/m;

    move-object v8, v6

    new-instance v6, Lw33$a;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lvs3;->p:Lvs3$b;

    move-object v9, v5

    move-object v5, v4

    move-object v4, v7

    new-instance v7, Lau7;

    invoke-direct {v7, v0}, Lau7;-><init>(Lyt7$c;)V

    move-object v10, v8

    sget-object v8, Lvs3;->r:Lvs3$d;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-object v12, v9

    new-instance v9, Ljava/util/ArrayList;

    iget-object v0, v2, Liz4;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, v2, Liz4;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lxl1;

    instance-of v14, v13, Liz4$b;

    if-nez v14, :cond_f

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_f
    throw v1

    :cond_10
    invoke-static {}, Lwv1;->a()Lwv1;

    move-result-object v0

    monitor-enter v0

    monitor-exit v0

    iget-boolean v0, v2, Liz4;->r:Z

    if-eqz v0, :cond_12

    sget-object v0, Liz4;->G:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_11

    :try_start_9
    iget-boolean v13, v2, Liz4;->s:Z

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iget-boolean v14, v2, Liz4;->t:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-boolean v3, v2, Liz4;->u:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v13, v14, v15, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxl1;
    :try_end_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_f

    :catch_5
    move-exception v0

    goto :goto_c

    :catch_6
    move-exception v0

    goto :goto_d

    :goto_c
    sget-object v3, Liz4;->z:Ljava/util/logging/Logger;

    sget-object v13, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v14, "Unable to apply census stats"

    invoke-virtual {v3, v13, v14, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e

    :goto_d
    sget-object v3, Liz4;->z:Ljava/util/logging/Logger;

    sget-object v13, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v14, "Unable to apply census stats"

    invoke-virtual {v3, v13, v14, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_11
    :goto_e
    move-object v0, v1

    :goto_f
    if-eqz v0, :cond_12

    const/4 v3, 0x0

    invoke-virtual {v9, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_12
    iget-boolean v0, v2, Liz4;->v:Z

    if-eqz v0, :cond_13

    :try_start_a
    const-string v0, "io.grpc.census.InternalCensusTracingAccessor"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getClientInterceptor"

    invoke-virtual {v0, v3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxl1;
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_15

    :catch_7
    move-exception v0

    goto :goto_10

    :catch_8
    move-exception v0

    goto :goto_11

    :catch_9
    move-exception v0

    goto :goto_12

    :catch_a
    move-exception v0

    goto :goto_13

    :goto_10
    sget-object v3, Liz4;->z:Ljava/util/logging/Logger;

    sget-object v13, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v14, "Unable to apply census stats"

    invoke-virtual {v3, v13, v14, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14

    :goto_11
    sget-object v3, Liz4;->z:Ljava/util/logging/Logger;

    sget-object v13, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v14, "Unable to apply census stats"

    invoke-virtual {v3, v13, v14, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14

    :goto_12
    sget-object v3, Liz4;->z:Ljava/util/logging/Logger;

    sget-object v13, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v14, "Unable to apply census stats"

    invoke-virtual {v3, v13, v14, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14

    :goto_13
    sget-object v3, Liz4;->z:Ljava/util/logging/Logger;

    sget-object v13, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v14, "Unable to apply census stats"

    invoke-virtual {v3, v13, v14, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_14
    move-object v0, v1

    :goto_15
    if-eqz v0, :cond_13

    const/4 v3, 0x0

    invoke-virtual {v9, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_13
    move-object v1, v10

    sget-object v10, Lpv8;->v1:Lpv8;

    move-object v3, v12

    invoke-direct/range {v1 .. v10}, Lez4;-><init>(Liz4;Lfm1;Lf99;Lio/grpc/m;Lw33$a;Lau7;Lkd8;Ljava/util/ArrayList;Lpv8;)V

    sget-object v0, Ljz4;->b:Ljava/lang/ref/ReferenceQueue;

    sget-object v2, Ljz4;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v11, v1}, Llj3;-><init>(Lez4;)V

    new-instance v3, Ljz4$a;

    invoke-direct {v3, v11, v1, v0, v2}, Ljz4$a;-><init>(Ljz4;Lez4;Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V

    return-object v11
.end method
