.class public final Lez4$p;
.super Lw1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lez4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "p"
.end annotation


# instance fields
.field public final a:Lio/grpc/h$b;

.field public final b:Lm94;

.field public final c:Lo91;

.field public final d:Ls91;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/d;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lp94;

.field public g:Z

.field public h:Z

.field public i:Lch8$c;

.field public final synthetic j:Lez4;


# direct methods
.method public constructor <init>(Lez4;Lio/grpc/h$b;)V
    .locals 6

    iput-object p1, p0, Lez4$p;->j:Lez4;

    invoke-direct {p0}, Lio/grpc/h$j;-><init>()V

    iget-object v0, p2, Lio/grpc/h$b;->a:Ljava/util/List;

    iput-object v0, p0, Lez4$p;->e:Ljava/util/List;

    iput-object p2, p0, Lez4$p;->a:Lio/grpc/h$b;

    iget-object p2, p1, Lez4;->u:Ly81;

    invoke-virtual {p2}, Ly81;->a()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lm94;

    sget-object v2, Lm94;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    const-string v4, "Subchannel"

    invoke-direct {v1, v4, p2, v2, v3}, Lm94;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iput-object v1, p0, Lez4$p;->b:Lm94;

    new-instance p2, Ls91;

    iget-object p1, p1, Lez4;->m:Lpv8;

    invoke-interface {p1}, Lpv8;->b()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Subchannel for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v1, v2, v3, v0}, Ls91;-><init>(Lm94;JLjava/lang/String;)V

    iput-object p2, p0, Lez4$p;->d:Ls91;

    new-instance v0, Lo91;

    invoke-direct {v0, p2, p1}, Lo91;-><init>(Ls91;Lpv8;)V

    iput-object v0, p0, Lez4$p;->c:Lo91;

    return-void
.end method


# virtual methods
.method public final b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lez4$p;->j:Lez4;

    iget-object v0, v0, Lez4;->n:Lch8;

    invoke-virtual {v0}, Lch8;->d()V

    iget-boolean v0, p0, Lez4$p;->g:Z

    const-string v1, "not started"

    invoke-static {v0, v1}, Lo8;->s(ZLjava/lang/Object;)V

    iget-object p0, p0, Lez4$p;->e:Ljava/util/List;

    return-object p0
.end method

.method public final c()Lio/grpc/a;
    .locals 0

    iget-object p0, p0, Lez4$p;->a:Lio/grpc/h$b;

    iget-object p0, p0, Lio/grpc/h$b;->b:Lio/grpc/a;

    return-object p0
.end method

.method public final d()Ln91;
    .locals 0

    iget-object p0, p0, Lez4$p;->c:Lo91;

    return-object p0
.end method

.method public final e()Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lez4$p;->g:Z

    const-string v1, "Subchannel is not started"

    invoke-static {v0, v1}, Lo8;->s(ZLjava/lang/Object;)V

    iget-object p0, p0, Lez4$p;->f:Lp94;

    return-object p0
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lez4$p;->j:Lez4;

    iget-object v0, v0, Lez4;->n:Lch8;

    invoke-virtual {v0}, Lch8;->d()V

    iget-boolean v0, p0, Lez4$p;->g:Z

    const-string v1, "not started"

    invoke-static {v0, v1}, Lo8;->s(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lez4$p;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lez4$p;->f:Lp94;

    invoke-virtual {p0}, Lp94;->a()Lnz4;

    return-void
.end method

.method public final g()V
    .locals 8

    iget-object v0, p0, Lez4$p;->j:Lez4;

    iget-object v1, v0, Lez4;->n:Lch8;

    invoke-virtual {v1}, Lch8;->d()V

    iget-object v1, p0, Lez4$p;->f:Lp94;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iput-boolean v2, p0, Lez4$p;->h:Z

    return-void

    :cond_0
    iget-boolean v1, p0, Lez4$p;->h:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lez4;->G:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lez4$p;->i:Lch8$c;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lch8$c;->a()V

    const/4 v1, 0x0

    iput-object v1, p0, Lez4$p;->i:Lch8$c;

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    iput-boolean v2, p0, Lez4$p;->h:Z

    :goto_0
    iget-boolean v1, v0, Lez4;->G:Z

    if-nez v1, :cond_3

    iget-object v2, v0, Lez4;->n:Lch8;

    new-instance v3, Lvu4;

    new-instance v1, Lez4$p$b;

    invoke-direct {v1, p0}, Lez4$p$b;-><init>(Lez4$p;)V

    invoke-direct {v3, v1}, Lvu4;-><init>(Ljava/lang/Runnable;)V

    iget-object v0, v0, Lez4;->g:Lhy0;

    iget-object v0, v0, Lhy0;->b:Lfm1;

    invoke-interface {v0}, Lfm1;->A()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v7

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v2 .. v7}, Lch8;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lch8$c;

    move-result-object v0

    iput-object v0, p0, Lez4$p;->i:Lch8$c;

    return-void

    :cond_3
    iget-object p0, p0, Lez4$p;->f:Lp94;

    sget-object v0, Lez4;->d0:Lh88;

    iget-object v1, p0, Lp94;->m:Lch8;

    new-instance v2, Lt94;

    invoke-direct {v2, p0, v0}, Lt94;-><init>(Lp94;Lh88;)V

    invoke-virtual {v1, v2}, Lch8;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final h(Lio/grpc/h$l;)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lez4$p;->j:Lez4;

    iget-object v2, v1, Lez4;->n:Lch8;

    invoke-virtual {v2}, Lch8;->d()V

    iget-boolean v2, v0, Lez4$p;->g:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const-string v4, "already started"

    invoke-static {v2, v4}, Lo8;->s(ZLjava/lang/Object;)V

    iget-boolean v2, v0, Lez4$p;->h:Z

    xor-int/2addr v2, v3

    const-string v4, "already shutdown"

    invoke-static {v2, v4}, Lo8;->s(ZLjava/lang/Object;)V

    iget-boolean v2, v1, Lez4;->G:Z

    xor-int/2addr v2, v3

    const-string v4, "Channel is being terminated"

    invoke-static {v2, v4}, Lo8;->s(ZLjava/lang/Object;)V

    iput-boolean v3, v0, Lez4$p;->g:Z

    new-instance v5, Lp94;

    iget-object v2, v1, Lez4;->u:Ly81;

    invoke-virtual {v2}, Ly81;->a()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lez4;->t:Lw33$a;

    iget-object v9, v1, Lez4;->g:Lhy0;

    iget-object v2, v9, Lhy0;->b:Lfm1;

    invoke-interface {v2}, Lfm1;->A()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v10

    iget-object v11, v1, Lez4;->q:Lkd8;

    iget-object v12, v1, Lez4;->n:Lch8;

    new-instance v13, Lez4$p$a;

    move-object/from16 v2, p1

    invoke-direct {v13, v0, v2}, Lez4$p$a;-><init>(Lez4$p;Lio/grpc/h$l;)V

    iget-object v14, v1, Lez4;->N:Li94;

    iget-object v2, v1, Lez4;->J:Lfz4;

    new-instance v15, Lpy0;

    iget-object v2, v2, Lfz4;->b:Ljava/lang/Object;

    check-cast v2, Lpv8;

    invoke-direct {v15, v2}, Lpy0;-><init>(Lpv8;)V

    iget-object v2, v1, Lez4;->v:Ljava/util/ArrayList;

    iget-object v3, v1, Lez4;->b:Ljava/lang/String;

    iget-object v4, v1, Lez4;->y:Lez4$k;

    iget-object v4, v4, Lez4$k;->b:Lez4;

    iget-object v4, v4, Lez4;->b0:Lva5;

    iget-object v6, v0, Lez4$p;->a:Lio/grpc/h$b;

    move-object/from16 v19, v2

    iget-object v2, v0, Lez4$p;->d:Ls91;

    move-object/from16 v16, v2

    iget-object v2, v0, Lez4$p;->b:Lm94;

    move-object/from16 v17, v2

    iget-object v2, v0, Lez4$p;->c:Lo91;

    move-object/from16 v18, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    invoke-direct/range {v5 .. v21}, Lp94;-><init>(Lio/grpc/h$b;Ljava/lang/String;Lw33$a;Lhy0;Ljava/util/concurrent/ScheduledExecutorService;Lkd8;Lch8;Lez4$p$a;Li94;Lpy0;Ls91;Lm94;Ln91;Ljava/util/ArrayList;Ljava/lang/String;Lva5;)V

    iget-object v2, v1, Lez4;->L:Ls91;

    sget-object v7, Lh94$a;->CT_INFO:Lh94$a;

    iget-object v3, v1, Lez4;->m:Lpv8;

    invoke-interface {v3}, Lpv8;->b()J

    move-result-wide v8

    const-string v3, "severity"

    invoke-static {v7, v3}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v10, v5

    new-instance v5, Lh94;

    const-string v6, "Child Subchannel started"

    invoke-direct/range {v5 .. v10}, Lh94;-><init>(Ljava/lang/String;Lh94$a;JLp94;)V

    move-object v3, v5

    move-object v5, v10

    invoke-virtual {v2, v3}, Ls91;->b(Lh94;)V

    iput-object v5, v0, Lez4$p;->f:Lp94;

    iget-object v0, v1, Lez4;->N:Li94;

    iget-object v0, v0, Li94;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Lp94;->c()Lm94;

    move-result-object v2

    iget-wide v2, v2, Lm94;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll94;

    iget-object v0, v1, Lez4;->A:Ljava/util/HashSet;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final i(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/d;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lez4$p;->j:Lez4;

    iget-object v0, v0, Lez4;->n:Lch8;

    invoke-virtual {v0}, Lch8;->d()V

    iput-object p1, p0, Lez4$p;->e:Ljava/util/List;

    iget-object p0, p0, Lez4$p;->f:Lp94;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "newAddressGroups"

    invoke-static {p1, v0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "newAddressGroups contains null entry"

    invoke-static {v1, v2}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "newAddressGroups is empty"

    invoke-static {v0, v1}, Lo8;->f(ZLjava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lp94;->m:Lch8;

    new-instance v1, Ls94;

    invoke-direct {v1, p0, p1}, Ls94;-><init>(Lp94;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lch8;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lez4$p;->b:Lm94;

    invoke-virtual {p0}, Lm94;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
