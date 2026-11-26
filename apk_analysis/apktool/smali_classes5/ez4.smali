.class public final Lez4;
.super Ldz4;
.source "SourceFile"

# interfaces
.implements Ll94;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lez4$n;,
        Lez4$o;,
        Lez4$h;,
        Lez4$i;,
        Lez4$g;,
        Lez4$p;,
        Lez4$l;,
        Lez4$k;,
        Lez4$q;,
        Lez4$f;,
        Lez4$m;,
        Lez4$e;,
        Lez4$j;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldz4;",
        "Ll94<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final c0:Ljava/util/logging/Logger;

.field public static final d0:Lh88;

.field public static final e0:Lh88;

.field public static final f0:Lmz4;

.field public static final g0:Lez4$a;

.field public static final h0:Lez4$b;

.field public static final i0:Lez4$d;


# instance fields
.field public final A:Ljava/util/HashSet;

.field public B:Ljava/util/LinkedHashSet;

.field public final C:Ljava/lang/Object;

.field public final D:Lel2;

.field public final E:Lez4$q;

.field public final F:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public G:Z

.field public volatile H:Z

.field public final I:Ljava/util/concurrent/CountDownLatch;

.field public final J:Lfz4;

.field public final K:Lpy0;

.field public final L:Ls91;

.field public final M:Lo91;

.field public final N:Li94;

.field public final O:Lez4$m;

.field public P:Lez4$n;

.field public Q:Lmz4;

.field public R:Z

.field public final S:Z

.field public final T:Lk67$p;

.field public final U:J

.field public final V:J

.field public final W:Z

.field public final X:Lxc2$a;

.field public final Y:Lez4$i;

.field public final Z:Lez4$e;

.field public final a:Lm94;

.field public final a0:Lw37;

.field public final b:Ljava/lang/String;

.field public final b0:Lva5;

.field public final c:Lf99;

.field public final d:Lio/grpc/m;

.field public final e:Lio/grpc/l$a;

.field public final f:Lgy;

.field public final g:Lhy0;

.field public final h:Lez4$o;

.field public final i:Ljava/util/concurrent/Executor;

.field public final j:Lpq5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpq5<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lez4$h;

.field public final l:Lez4$h;

.field public final m:Lpv8;

.field public final n:Lch8;

.field public final o:Lyd2;

.field public final p:Lru1;

.field public final q:Lkd8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkd8<",
            "La98;",
            ">;"
        }
    .end annotation
.end field

.field public final r:J

.field public final s:Lex1;

.field public final t:Lw33$a;

.field public final u:Ly81;

.field public final v:Ljava/util/ArrayList;

.field public w:Lnj3;

.field public x:Z

.field public y:Lez4$k;

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-class v0, Lez4;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lez4;->c0:Ljava/util/logging/Logger;

    sget-object v0, Lh88;->m:Lh88;

    const-string v1, "Channel shutdownNow invoked"

    invoke-virtual {v0, v1}, Lh88;->h(Ljava/lang/String;)Lh88;

    const-string v1, "Channel shutdown invoked"

    invoke-virtual {v0, v1}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v1

    sput-object v1, Lez4;->d0:Lh88;

    const-string v1, "Subchannel shutdown invoked"

    invoke-virtual {v0, v1}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v0

    sput-object v0, Lez4;->e0:Lh88;

    new-instance v1, Lmz4;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lmz4;-><init>(Lmz4$a;Ljava/util/HashMap;Ljava/util/HashMap;Lk67$y;Ljava/lang/Object;Ljava/util/Map;)V

    sput-object v1, Lez4;->f0:Lmz4;

    new-instance v0, Lez4$a;

    invoke-direct {v0}, Lio/grpc/g;-><init>()V

    sput-object v0, Lez4;->g0:Lez4$a;

    new-instance v0, Lez4$b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lez4;->h0:Lez4$b;

    new-instance v0, Lez4$d;

    invoke-direct {v0}, Lrl1;-><init>()V

    sput-object v0, Lez4;->i0:Lez4$d;

    return-void
.end method

.method public constructor <init>(Liz4;Lfm1;Lf99;Lio/grpc/m;Lw33$a;Lau7;Lkd8;Ljava/util/ArrayList;Lpv8;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v5, p9

    invoke-direct {v0}, Ly81;-><init>()V

    new-instance v6, Lch8;

    new-instance v7, Lez4$c;

    invoke-direct {v7, v0}, Lez4$c;-><init>(Lez4;)V

    invoke-direct {v6, v7}, Lch8;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iput-object v6, v0, Lez4;->n:Lch8;

    new-instance v7, Lex1;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v7, Lex1;->a:Ljava/util/ArrayList;

    sget-object v8, Lcx1;->IDLE:Lcx1;

    iput-object v8, v7, Lex1;->b:Lcx1;

    iput-object v7, v0, Lez4;->s:Lex1;

    new-instance v7, Ljava/util/HashSet;

    const/16 v8, 0x10

    const/high16 v9, 0x3f400000    # 0.75f

    invoke-direct {v7, v8, v9}, Ljava/util/HashSet;-><init>(IF)V

    iput-object v7, v0, Lez4;->A:Ljava/util/HashSet;

    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, v0, Lez4;->C:Ljava/lang/Object;

    new-instance v7, Lez4$q;

    invoke-direct {v7, v0}, Lez4$q;-><init>(Lez4;)V

    iput-object v7, v0, Lez4;->E:Lez4$q;

    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v7, v0, Lez4;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    const/4 v9, 0x1

    invoke-direct {v7, v9}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v7, v0, Lez4;->I:Ljava/util/concurrent/CountDownLatch;

    sget-object v7, Lez4$n;->NO_RESOLUTION:Lez4$n;

    iput-object v7, v0, Lez4;->P:Lez4$n;

    sget-object v7, Lez4;->f0:Lmz4;

    iput-object v7, v0, Lez4;->Q:Lmz4;

    iput-boolean v8, v0, Lez4;->R:Z

    new-instance v7, Lk67$p;

    invoke-direct {v7}, Lk67$p;-><init>()V

    iput-object v7, v0, Lez4;->T:Lk67$p;

    sget-object v7, Lxc2;->d:Lxc2$a;

    iput-object v7, v0, Lez4;->X:Lxc2$a;

    new-instance v7, Lez4$g;

    invoke-direct {v7, v0}, Lez4$g;-><init>(Lez4;)V

    new-instance v10, Lez4$i;

    invoke-direct {v10, v0}, Lez4$i;-><init>(Lez4;)V

    iput-object v10, v0, Lez4;->Y:Lez4$i;

    new-instance v10, Lez4$e;

    invoke-direct {v10, v0}, Lez4$e;-><init>(Lez4;)V

    iput-object v10, v0, Lez4;->Z:Lez4$e;

    iget-object v10, v1, Liz4;->f:Ljava/lang/String;

    const-string v11, "target"

    invoke-static {v10, v11}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v10, v0, Lez4;->b:Ljava/lang/String;

    new-instance v11, Lm94;

    sget-object v12, Lm94;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v12

    const-string v14, "Channel"

    invoke-direct {v11, v14, v10, v12, v13}, Lm94;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iput-object v11, v0, Lez4;->a:Lm94;

    const-string v12, "timeProvider"

    invoke-static {v5, v12}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v5, v0, Lez4;->m:Lpv8;

    iget-object v12, v1, Liz4;->a:Lau7;

    const-string v13, "executorPool"

    invoke-static {v12, v13}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v12, v0, Lez4;->j:Lpq5;

    invoke-interface {v12}, Lpq5;->a()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/concurrent/Executor;

    const-string v13, "executor"

    invoke-static {v12, v13}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v12, v0, Lez4;->i:Ljava/util/concurrent/Executor;

    new-instance v13, Lez4$h;

    iget-object v14, v1, Liz4;->b:Lau7;

    const-string v15, "offloadExecutorPool"

    invoke-static {v14, v15}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v13, v14}, Lez4$h;-><init>(Lpq5;)V

    iput-object v13, v0, Lez4;->l:Lez4$h;

    new-instance v14, Lhy0;

    move-object/from16 v15, p2

    invoke-direct {v14, v15, v13}, Lhy0;-><init>(Lfm1;Lez4$h;)V

    iput-object v14, v0, Lez4;->g:Lhy0;

    new-instance v8, Lez4$o;

    invoke-interface {v15}, Lfm1;->A()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v15

    invoke-direct {v8, v15}, Lez4$o;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    iput-object v8, v0, Lez4;->h:Lez4$o;

    new-instance v15, Ls91;

    move-object/from16 v16, v10

    invoke-interface {v5}, Lpv8;->b()J

    move-result-wide v9

    move-object/from16 v17, v14

    const-string v14, "Channel for \'"

    const-string v4, "\'"

    move-object/from16 v18, v7

    move-object/from16 v7, v16

    invoke-static {v14, v7, v4}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v15, v11, v9, v10, v4}, Ls91;-><init>(Lm94;JLjava/lang/String;)V

    iput-object v15, v0, Lez4;->L:Ls91;

    new-instance v4, Lo91;

    invoke-direct {v4, v15, v5}, Lo91;-><init>(Ls91;Lpv8;)V

    iput-object v4, v0, Lez4;->M:Lo91;

    sget-object v7, Lvs3;->m:Lat6;

    iget-boolean v9, v1, Liz4;->o:Z

    iput-boolean v9, v0, Lez4;->W:Z

    new-instance v10, Lgy;

    iget-object v11, v1, Liz4;->g:Ljava/lang/String;

    invoke-direct {v10, v11}, Lgy;-><init>(Ljava/lang/String;)V

    iput-object v10, v0, Lez4;->f:Lgy;

    iput-object v2, v0, Lez4;->c:Lf99;

    iput-object v3, v0, Lez4;->d:Lio/grpc/m;

    new-instance v11, Lgd7;

    iget v14, v1, Liz4;->k:I

    iget v15, v1, Liz4;->l:I

    invoke-direct {v11, v9, v14, v15, v10}, Lgd7;-><init>(ZIILgy;)V

    new-instance v9, Lva5;

    iget-object v10, v1, Liz4;->w:Ljava/util/ArrayList;

    invoke-static {}, Lta5;->a()Lta5;

    move-result-object v14

    invoke-direct {v9, v10, v14}, Lva5;-><init>(Ljava/util/ArrayList;Lta5;)V

    iput-object v9, v0, Lez4;->b0:Lva5;

    new-instance v10, Lio/grpc/l$a$b;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iget-object v14, v1, Liz4;->y:Liz4$a;

    invoke-interface {v14}, Liz4$a;->a()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iput-object v14, v10, Lio/grpc/l$a$b;->a:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v7, v10, Lio/grpc/l$a$b;->b:Lzs6;

    iput-object v6, v10, Lio/grpc/l$a$b;->c:Lch8;

    iput-object v8, v10, Lio/grpc/l$a$b;->e:Lez4$o;

    iput-object v11, v10, Lio/grpc/l$a$b;->d:Lgd7;

    iput-object v4, v10, Lio/grpc/l$a$b;->f:Lo91;

    iput-object v13, v10, Lio/grpc/l$a$b;->g:Lez4$h;

    iput-object v9, v10, Lio/grpc/l$a$b;->h:Lva5;

    iget-object v4, v1, Liz4;->d:Lio/grpc/n;

    iput-object v4, v10, Lio/grpc/l$a$b;->i:Lio/grpc/n;

    new-instance v4, Lio/grpc/l$a;

    invoke-direct {v4, v10}, Lio/grpc/l$a;-><init>(Lio/grpc/l$a$b;)V

    iput-object v4, v0, Lez4;->e:Lio/grpc/l$a;

    invoke-static {v2, v3, v4}, Lez4;->h(Lf99;Lio/grpc/m;Lio/grpc/l$a;)Lnj3;

    move-result-object v2

    iput-object v2, v0, Lez4;->w:Lnj3;

    new-instance v2, Lez4$h;

    move-object/from16 v3, p6

    invoke-direct {v2, v3}, Lez4$h;-><init>(Lpq5;)V

    iput-object v2, v0, Lez4;->k:Lez4$h;

    new-instance v2, Lel2;

    invoke-direct {v2, v12, v6}, Lel2;-><init>(Ljava/util/concurrent/Executor;Lch8;)V

    iput-object v2, v0, Lez4;->D:Lel2;

    move-object/from16 v3, v18

    invoke-virtual {v2, v3}, Lel2;->d(Lnz4$a;)Ljava/lang/Runnable;

    move-object/from16 v2, p5

    iput-object v2, v0, Lez4;->t:Lw33$a;

    iget-boolean v2, v1, Liz4;->q:Z

    iput-boolean v2, v0, Lez4;->S:Z

    new-instance v3, Lez4$m;

    iget-object v4, v0, Lez4;->w:Lnj3;

    invoke-virtual {v4}, Lnj3;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lez4$m;-><init>(Lez4;Ljava/lang/String;)V

    iput-object v3, v0, Lez4;->O:Lez4$m;

    sget v4, Lyl1;->a:I

    invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lxl1;

    new-instance v8, Lyl1$b;

    invoke-direct {v8, v3, v7}, Lyl1$b;-><init>(Ly81;Lxl1;)V

    move-object v3, v8

    goto :goto_0

    :cond_0
    iput-object v3, v0, Lez4;->u:Ly81;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v1, Liz4;->e:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v0, Lez4;->v:Ljava/util/ArrayList;

    const-string v3, "stopwatchSupplier"

    move-object/from16 v4, p7

    invoke-static {v4, v3}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v4, v0, Lez4;->q:Lkd8;

    iget-wide v7, v1, Liz4;->j:J

    const-wide/16 v9, -0x1

    cmp-long v3, v7, v9

    if-nez v3, :cond_1

    iput-wide v7, v0, Lez4;->r:J

    goto :goto_2

    :cond_1
    sget-wide v9, Liz4;->B:J

    cmp-long v3, v7, v9

    if-ltz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    const-string v9, "invalid idleTimeoutMillis %s"

    invoke-static {v7, v8, v3, v9}, Lo8;->c(JZLjava/lang/String;)V

    iget-wide v7, v1, Liz4;->j:J

    iput-wide v7, v0, Lez4;->r:J

    :goto_2
    new-instance v3, Lw37;

    new-instance v7, Lez4$j;

    invoke-direct {v7, v0}, Lez4$j;-><init>(Lez4;)V

    move-object/from16 v8, v17

    iget-object v8, v8, Lhy0;->b:Lfm1;

    invoke-interface {v8}, Lfm1;->A()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v8

    invoke-interface {v4}, Lkd8;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La98;

    invoke-direct {v3, v7, v6, v8, v4}, Lw37;-><init>(Lez4$j;Lch8;Ljava/util/concurrent/ScheduledExecutorService;La98;)V

    iput-object v3, v0, Lez4;->a0:Lw37;

    iget-object v3, v1, Liz4;->h:Lyd2;

    const-string v4, "decompressorRegistry"

    invoke-static {v3, v4}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, v0, Lez4;->o:Lyd2;

    iget-object v3, v1, Liz4;->i:Lru1;

    const-string v4, "compressorRegistry"

    invoke-static {v3, v4}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, v0, Lez4;->p:Lru1;

    iget-wide v3, v1, Liz4;->m:J

    iput-wide v3, v0, Lez4;->V:J

    iget-wide v3, v1, Liz4;->n:J

    iput-wide v3, v0, Lez4;->U:J

    new-instance v3, Lfz4;

    invoke-direct {v3, v5}, Lfz4;-><init>(Ljava/lang/Object;)V

    iput-object v3, v0, Lez4;->J:Lfz4;

    new-instance v3, Lpy0;

    invoke-direct {v3, v5}, Lpy0;-><init>(Lpv8;)V

    iput-object v3, v0, Lez4;->K:Lpy0;

    iget-object v1, v1, Liz4;->p:Li94;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v0, Lez4;->N:Li94;

    iget-object v1, v1, Li94;->a:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0}, Lez4;->c()Lm94;

    move-result-object v3

    iget-wide v3, v3, Lm94;->c:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll94;

    if-nez v2, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, v0, Lez4;->R:Z

    :cond_3
    return-void
.end method

.method public static h(Lf99;Lio/grpc/m;Lio/grpc/l$a;)Lnj3;
    .locals 4

    invoke-interface {p0, p1, p2}, Lf99;->a(Lio/grpc/m;Lio/grpc/l$a;)Lio/grpc/l;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    new-instance p0, Lr67;

    new-instance v1, Lk00;

    new-instance v2, Lw33$a;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iget-object v3, p2, Lio/grpc/l$a;->e:Lez4$o;

    if-eqz v3, :cond_0

    iget-object p2, p2, Lio/grpc/l$a;->c:Lch8;

    invoke-direct {v1, v2, v3, p2}, Lk00;-><init>(Lw33$a;Lez4$o;Lch8;)V

    invoke-direct {p0, p1, v1, p2}, Lr67;-><init>(Lio/grpc/l;Lk00;Lch8;)V

    return-object p0

    :cond_0
    const-string p0, "ScheduledExecutorService not set in Builder"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const-string p1, "cannot create a NameResolver for "

    invoke-static {p0, p1}, Lr01;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lez4;->u:Ly81;

    invoke-virtual {p0}, Ly81;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lm94;
    .locals 0

    iget-object p0, p0, Lez4;->a:Lm94;

    return-object p0
.end method

.method public final f(Lra5;Lio/grpc/b;)Lrl1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lra5<",
            "TReqT;TRespT;>;",
            "Lio/grpc/b;",
            ")",
            "Lrl1<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    iget-object p0, p0, Lez4;->u:Ly81;

    invoke-virtual {p0, p1, p2}, Ly81;->f(Lra5;Lio/grpc/b;)Lrl1;

    move-result-object p0

    return-object p0
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Lez4;->n:Lch8;

    invoke-virtual {v0}, Lch8;->d()V

    iget-object v0, p0, Lez4;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lez4;->z:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lez4;->Y:Lez4$i;

    iget-object v0, v0, Lu1;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lez4;->a0:Lw37;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lw37;->f:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lez4;->k()V

    :goto_0
    iget-object v0, p0, Lez4;->y:Lez4$k;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Ln91$a;->INFO:Ln91$a;

    const-string v1, "Exiting idle mode"

    iget-object v2, p0, Lez4;->M:Lo91;

    invoke-virtual {v2, v0, v1}, Lo91;->a(Ln91$a;Ljava/lang/String;)V

    new-instance v0, Lez4$k;

    invoke-direct {v0, p0}, Lez4$k;-><init>(Lez4;)V

    iget-object v1, p0, Lez4;->f:Lgy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lgy$a;

    invoke-direct {v2, v1, v0}, Lgy$a;-><init>(Lgy;Lio/grpc/h$e;)V

    iput-object v2, v0, Lez4$k;->a:Lgy$a;

    iput-object v0, p0, Lez4;->y:Lez4$k;

    iget-object v1, p0, Lez4;->s:Lex1;

    sget-object v2, Lcx1;->CONNECTING:Lcx1;

    invoke-virtual {v1, v2}, Lex1;->a(Lcx1;)V

    new-instance v1, Lez4$l;

    iget-object v2, p0, Lez4;->w:Lnj3;

    invoke-direct {v1, p0, v0, v2}, Lez4$l;-><init>(Lez4;Lez4$k;Lnj3;)V

    iget-object v0, p0, Lez4;->w:Lnj3;

    invoke-virtual {v0, v1}, Lnj3;->d(Lio/grpc/l$d;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lez4;->x:Z

    :cond_3
    :goto_1
    return-void
.end method

.method public final i()V
    .locals 3

    iget-boolean v0, p0, Lez4;->H:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lez4;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lez4;->A:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lez4;->M:Lo91;

    sget-object v1, Ln91$a;->INFO:Ln91$a;

    const-string v2, "Terminated"

    invoke-virtual {v0, v1, v2}, Lo91;->a(Ln91$a;Ljava/lang/String;)V

    iget-object v0, p0, Lez4;->N:Li94;

    iget-object v0, v0, Li94;->a:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {p0}, Lez4;->c()Lm94;

    move-result-object v1

    iget-wide v1, v1, Lm94;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll94;

    iget-object v0, p0, Lez4;->j:Lpq5;

    iget-object v1, p0, Lez4;->i:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1}, Lpq5;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lez4;->k:Lez4$h;

    invoke-virtual {v0}, Lez4$h;->release()V

    iget-object v0, p0, Lez4;->l:Lez4$h;

    invoke-virtual {v0}, Lez4$h;->release()V

    iget-object v0, p0, Lez4;->g:Lhy0;

    invoke-virtual {v0}, Lhy0;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lez4;->H:Z

    iget-object p0, p0, Lez4;->I:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final j(Ljava/lang/Throwable;)V
    .locals 12

    iget-object v0, p0, Lez4;->D:Lel2;

    const-string v1, "drop status shouldn\'t be OK"

    iget-object v2, p0, Lez4;->s:Lex1;

    const-string v3, "PANIC! Entering TRANSIENT_FAILURE"

    iget-object v4, p0, Lez4;->M:Lo91;

    iget-object v5, p0, Lez4;->O:Lez4$m;

    const-string v6, "Panic! This is a bug!"

    iget-boolean v7, p0, Lez4;->z:Z

    if-eqz v7, :cond_0

    return-void

    :cond_0
    const/4 v7, 0x1

    iput-boolean v7, p0, Lez4;->z:Z

    const/4 v8, 0x0

    :try_start_0
    iget-object v9, p0, Lez4;->a0:Lw37;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lw37;->f:Z

    iget-object v11, v9, Lw37;->g:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v11, :cond_1

    invoke-interface {v11, v10}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iput-object v8, v9, Lw37;->g:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    invoke-virtual {p0, v10}, Lez4;->l(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p0, Lio/grpc/h$d;

    sget-object v9, Lh88;->l:Lh88;

    invoke-virtual {v9, v6}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v6

    invoke-virtual {v6, p1}, Lh88;->g(Ljava/lang/Throwable;)Lh88;

    move-result-object p1

    sget-object v6, Lio/grpc/h$g;->e:Lio/grpc/h$g;

    invoke-virtual {p1}, Lh88;->f()Z

    move-result v6

    xor-int/2addr v6, v7

    invoke-static {v6, v1}, Lo8;->f(ZLjava/lang/Object;)V

    new-instance v1, Lio/grpc/h$g;

    invoke-direct {v1, v8, p1, v7}, Lio/grpc/h$g;-><init>(Lio/grpc/h$j;Lh88;Z)V

    invoke-direct {p0, v1}, Lio/grpc/h$d;-><init>(Lio/grpc/h$g;)V

    invoke-virtual {v0, p0}, Lel2;->g(Lio/grpc/h$k;)V

    invoke-virtual {v5, v8}, Lez4$m;->h(Lio/grpc/g;)V

    sget-object p0, Ln91$a;->ERROR:Ln91$a;

    invoke-virtual {v4, p0, v3}, Lo91;->a(Ln91$a;Ljava/lang/String;)V

    sget-object p0, Lcx1;->TRANSIENT_FAILURE:Lcx1;

    invoke-virtual {v2, p0}, Lex1;->a(Lcx1;)V

    return-void

    :catchall_0
    move-exception p0

    new-instance v9, Lio/grpc/h$d;

    sget-object v10, Lh88;->l:Lh88;

    invoke-virtual {v10, v6}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v6

    invoke-virtual {v6, p1}, Lh88;->g(Ljava/lang/Throwable;)Lh88;

    move-result-object p1

    sget-object v6, Lio/grpc/h$g;->e:Lio/grpc/h$g;

    invoke-virtual {p1}, Lh88;->f()Z

    move-result v6

    xor-int/2addr v6, v7

    invoke-static {v6, v1}, Lo8;->f(ZLjava/lang/Object;)V

    new-instance v1, Lio/grpc/h$g;

    invoke-direct {v1, v8, p1, v7}, Lio/grpc/h$g;-><init>(Lio/grpc/h$j;Lh88;Z)V

    invoke-direct {v9, v1}, Lio/grpc/h$d;-><init>(Lio/grpc/h$g;)V

    invoke-virtual {v0, v9}, Lel2;->g(Lio/grpc/h$k;)V

    invoke-virtual {v5, v8}, Lez4$m;->h(Lio/grpc/g;)V

    sget-object p1, Ln91$a;->ERROR:Ln91$a;

    invoke-virtual {v4, p1, v3}, Lo91;->a(Ln91$a;Ljava/lang/String;)V

    sget-object p1, Lcx1;->TRANSIENT_FAILURE:Lcx1;

    invoke-virtual {v2, p1}, Lex1;->a(Lcx1;)V

    throw p0
.end method

.method public final k()V
    .locals 8

    const-wide/16 v0, -0x1

    iget-wide v2, p0, Lez4;->r:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lez4;->a0:Lw37;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iget-object v2, p0, Lw37;->d:La98;

    invoke-virtual {v2}, La98;->a()J

    move-result-wide v2

    add-long/2addr v2, v0

    const/4 v4, 0x1

    iput-boolean v4, p0, Lw37;->f:Z

    iget-wide v4, p0, Lw37;->e:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    iget-object v4, p0, Lw37;->g:Ljava/util/concurrent/ScheduledFuture;

    if-nez v4, :cond_3

    :cond_1
    iget-object v4, p0, Lw37;->g:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v4, :cond_2

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_2
    iget-object v4, p0, Lw37;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v5, Lw37$b;

    invoke-direct {v5, p0}, Lw37$b;-><init>(Lw37;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v5, v0, v1, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lw37;->g:Ljava/util/concurrent/ScheduledFuture;

    :cond_3
    iput-wide v2, p0, Lw37;->e:J

    return-void
.end method

.method public final l(Z)V
    .locals 3

    iget-object v0, p0, Lez4;->n:Lch8;

    invoke-virtual {v0}, Lch8;->d()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lez4;->x:Z

    const-string v2, "nameResolver is not started"

    invoke-static {v1, v2}, Lo8;->s(ZLjava/lang/Object;)V

    iget-object v1, p0, Lez4;->y:Lez4$k;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "lbHelper is null"

    invoke-static {v1, v2}, Lo8;->s(ZLjava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lez4;->w:Lnj3;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lnj3;->c()V

    iput-boolean v0, p0, Lez4;->x:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lez4;->d:Lio/grpc/m;

    iget-object v0, p0, Lez4;->e:Lio/grpc/l$a;

    iget-object v1, p0, Lez4;->c:Lf99;

    invoke-static {v1, p1, v0}, Lez4;->h(Lf99;Lio/grpc/m;Lio/grpc/l$a;)Lnj3;

    move-result-object p1

    iput-object p1, p0, Lez4;->w:Lnj3;

    goto :goto_1

    :cond_2
    iput-object v2, p0, Lez4;->w:Lnj3;

    :cond_3
    :goto_1
    iget-object p1, p0, Lez4;->y:Lez4$k;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lez4$k;->a:Lgy$a;

    invoke-virtual {p1}, Lgy$a;->d()V

    iput-object v2, p0, Lez4;->y:Lez4$k;

    :cond_4
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lod5;->b(Ljava/lang/Object;)Lod5$a;

    move-result-object v0

    iget-object v1, p0, Lez4;->a:Lm94;

    iget-wide v1, v1, Lm94;->c:J

    const-string v3, "logId"

    invoke-virtual {v0, v1, v2, v3}, Lod5$a;->b(JLjava/lang/String;)V

    const-string v1, "target"

    iget-object p0, p0, Lez4;->b:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lod5$a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
