.class public final Lp94;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll94;
.implements Lz29;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp94$g;,
        Lp94$e;,
        Lp94$c;,
        Lp94$d;,
        Lp94$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll94<",
        "Ljava/lang/Object;",
        ">;",
        "Lz29;"
    }
.end annotation


# instance fields
.field public final A:Lrb8;

.field public final B:Ljava/lang/String;

.field public final a:Lm94;

.field public final b:Ljava/lang/String;

.field public final c:Li00;

.field public final d:Lez4$p$a;

.field public final e:Lfm1;

.field public final f:Ljava/util/concurrent/ScheduledExecutorService;

.field public final g:Li94;

.field public final h:Lpy0;

.field public final i:Lua5;

.field public final j:Ln91;

.field public final k:Z

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgm1;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Lch8;

.field public final n:Lp94$e;

.field public volatile o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/d;",
            ">;"
        }
    .end annotation
.end field

.field public p:Lw33;

.field public final q:La98;

.field public r:Lch8$c;

.field public s:Lch8$c;

.field public t:Lnz4;

.field public final u:Ljava/util/ArrayList;

.field public final v:Lp94$b;

.field public w:Lp94$c;

.field public volatile x:Lp94$c;

.field public volatile y:Ldx1;

.field public z:Lh88;


# direct methods
.method public constructor <init>(Lio/grpc/h$b;Ljava/lang/String;Lw33$a;Lhy0;Ljava/util/concurrent/ScheduledExecutorService;Lkd8;Lch8;Lez4$p$a;Li94;Lpy0;Ls91;Lm94;Ln91;Ljava/util/ArrayList;Ljava/lang/String;Lva5;)V
    .locals 7

    move-object/from16 v0, p12

    move-object/from16 v1, p13

    move-object/from16 v2, p16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lp94;->u:Ljava/util/ArrayList;

    new-instance v3, Lp94$b;

    invoke-direct {v3, p0}, Lp94$b;-><init>(Lp94;)V

    iput-object v3, p0, Lp94;->v:Lp94$b;

    sget-object v3, Lcx1;->IDLE:Lcx1;

    invoke-static {v3}, Ldx1;->a(Lcx1;)Ldx1;

    move-result-object v3

    iput-object v3, p0, Lp94;->y:Ldx1;

    iget-object v3, p1, Lio/grpc/h$b;->a:Ljava/util/List;

    const-string v4, "addressGroups"

    invoke-static {v3, v4}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    const-string v5, "addressGroups is empty"

    invoke-static {v4, v5}, Lo8;->f(ZLjava/lang/Object;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "addressGroups contains null entry"

    invoke-static {v5, v6}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lp94;->o:Ljava/util/List;

    new-instance v4, Lp94$e;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v3, v4, Lp94$e;->a:Ljava/util/List;

    iput-object v4, p0, Lp94;->n:Lp94$e;

    iput-object p2, p0, Lp94;->b:Ljava/lang/String;

    iput-object p3, p0, Lp94;->c:Li00;

    iput-object p4, p0, Lp94;->e:Lfm1;

    iput-object p5, p0, Lp94;->f:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p6}, Lkd8;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, La98;

    iput-object p2, p0, Lp94;->q:La98;

    iput-object p7, p0, Lp94;->m:Lch8;

    iput-object v2, p0, Lp94;->i:Lua5;

    iput-object p8, p0, Lp94;->d:Lez4$p$a;

    move-object/from16 p2, p9

    iput-object p2, p0, Lp94;->g:Li94;

    move-object/from16 p2, p10

    iput-object p2, p0, Lp94;->h:Lpy0;

    const-string p2, "channelTracer"

    move-object/from16 p3, p11

    invoke-static {p3, p2}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p2, "logId"

    invoke-static {v0, p2}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lp94;->a:Lm94;

    const-string p2, "channelLogger"

    invoke-static {v1, p2}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lp94;->j:Ln91;

    move-object/from16 p2, p14

    iput-object p2, p0, Lp94;->l:Ljava/util/List;

    sget-object p2, Lio/grpc/h;->c:Lio/grpc/h$b$b;

    invoke-virtual {p1, p2}, Lio/grpc/h$b;->a(Lio/grpc/h$b$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lp94;->k:Z

    move-object/from16 p1, p15

    iput-object p1, p0, Lp94;->B:Ljava/lang/String;

    new-instance p1, Lrb8;

    invoke-direct {p1, v2}, Lrb8;-><init>(Lua5;)V

    iput-object p1, p0, Lp94;->A:Lrb8;

    return-void
.end method

.method public static h(Lh88;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lh88;->a:Lh88$a;

    iget-object v2, p0, Lh88;->c:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lh88;->b:Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string v1, "("

    const-string v3, ")"

    invoke-static {v0, v1, p0, v3}, Ln1;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v2, :cond_1

    const-string p0, "["

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lnz4;
    .locals 2

    iget-object v0, p0, Lp94;->x:Lp94$c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lp94;->m:Lch8;

    new-instance v1, Lr94;

    invoke-direct {v1, p0}, Lr94;-><init>(Lp94;)V

    invoke-virtual {v0, v1}, Lch8;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final c()Lm94;
    .locals 0

    iget-object p0, p0, Lp94;->a:Lm94;

    return-object p0
.end method

.method public final f(Lcx1;)V
    .locals 1

    iget-object v0, p0, Lp94;->m:Lch8;

    invoke-virtual {v0}, Lch8;->d()V

    invoke-static {p1}, Ldx1;->a(Lcx1;)Ldx1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lp94;->g(Ldx1;)V

    return-void
.end method

.method public final g(Ldx1;)V
    .locals 3

    iget-object v0, p0, Lp94;->m:Lch8;

    invoke-virtual {v0}, Lch8;->d()V

    iget-object v0, p0, Lp94;->y:Ldx1;

    iget-object v0, v0, Ldx1;->a:Lcx1;

    iget-object v1, p1, Ldx1;->a:Lcx1;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lp94;->y:Ldx1;

    iget-object v0, v0, Ldx1;->a:Lcx1;

    sget-object v1, Lcx1;->SHUTDOWN:Lcx1;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Cannot transition out of SHUTDOWN to %s"

    iget-object v2, p1, Ldx1;->a:Lcx1;

    invoke-static {v1, v0, v2}, Lo8;->q(Ljava/lang/String;ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lp94;->k:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Ldx1;->a:Lcx1;

    sget-object v1, Lcx1;->TRANSIENT_FAILURE:Lcx1;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcx1;->IDLE:Lcx1;

    invoke-static {v0}, Ldx1;->a(Lcx1;)Ldx1;

    move-result-object v0

    iput-object v0, p0, Lp94;->y:Ldx1;

    goto :goto_1

    :cond_1
    iput-object p1, p0, Lp94;->y:Ldx1;

    :goto_1
    iget-object p0, p0, Lp94;->d:Lez4$p$a;

    iget-object p0, p0, Lez4$p$a;->a:Lio/grpc/h$l;

    invoke-interface {p0, p1}, Lio/grpc/h$l;->a(Ldx1;)V

    :cond_2
    return-void
.end method

.method public final i()V
    .locals 8

    iget-object v0, p0, Lp94;->m:Lch8;

    invoke-virtual {v0}, Lch8;->d()V

    iget-object v1, p0, Lp94;->r:Lch8$c;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v3, "Should have no reconnectTask scheduled"

    invoke-static {v1, v3}, Lo8;->s(ZLjava/lang/Object;)V

    iget-object v1, p0, Lp94;->n:Lp94$e;

    iget v3, v1, Lp94$e;->b:I

    if-nez v3, :cond_1

    iget v3, v1, Lp94$e;->c:I

    if-nez v3, :cond_1

    iget-object v3, p0, Lp94;->q:La98;

    iput-boolean v2, v3, La98;->b:Z

    invoke-virtual {v3}, La98;->b()V

    :cond_1
    iget-object v2, v1, Lp94$e;->a:Ljava/util/List;

    iget v3, v1, Lp94$e;->b:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/d;

    iget-object v2, v2, Lio/grpc/d;->a:Ljava/util/List;

    iget v3, v1, Lp94$e;->c:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/SocketAddress;

    instance-of v3, v2, Lxy3;

    if-eqz v3, :cond_2

    check-cast v2, Lxy3;

    iget-object v3, v2, Lxy3;->c:Ljava/net/InetSocketAddress;

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    :goto_1
    invoke-virtual {v1}, Lp94$e;->a()Lio/grpc/a;

    move-result-object v1

    sget-object v4, Lio/grpc/d;->d:Lio/grpc/a$b;

    iget-object v5, v1, Lio/grpc/a;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v5, v4}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lfm1$a;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    const-string v6, "unknown-authority"

    iput-object v6, v5, Lfm1$a;->a:Ljava/lang/String;

    sget-object v6, Lio/grpc/a;->b:Lio/grpc/a;

    iput-object v6, v5, Lfm1$a;->b:Lio/grpc/a;

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lp94;->b:Ljava/lang/String;

    :goto_2
    const-string v6, "authority"

    invoke-static {v4, v6}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v4, v5, Lfm1$a;->a:Ljava/lang/String;

    iput-object v1, v5, Lfm1$a;->b:Lio/grpc/a;

    iget-object v1, p0, Lp94;->i:Lua5;

    const-string v4, "metricRecorder"

    invoke-static {v1, v4}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v5, Lfm1$a;->c:Lxy3;

    new-instance v1, Lp94$g;

    invoke-direct {v1}, Ln91;-><init>()V

    iget-object v2, p0, Lp94;->a:Lm94;

    iput-object v2, v1, Lp94$g;->a:Lm94;

    new-instance v2, Lp94$c;

    iget-object v4, p0, Lp94;->e:Lfm1;

    invoke-interface {v4, v3, v5, v1}, Lfm1;->d0(Ljava/net/SocketAddress;Lfm1$a;Lp94$g;)Lmw1;

    move-result-object v3

    iget-object v4, p0, Lp94;->h:Lpy0;

    invoke-direct {v2, v3, v4}, Lp94$c;-><init>(Lmw1;Lpy0;)V

    invoke-virtual {v2}, Ldj3;->c()Lm94;

    move-result-object v3

    iput-object v3, v1, Lp94$g;->a:Lm94;

    iget-object v3, p0, Lp94;->g:Li94;

    iget-object v3, v3, Li94;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ldj3;->c()Lm94;

    move-result-object v4

    iget-wide v4, v4, Lm94;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll94;

    iput-object v2, p0, Lp94;->w:Lp94$c;

    iget-object v3, p0, Lp94;->u:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lp94$f;

    invoke-direct {v3, p0, v2}, Lp94$f;-><init>(Lp94;Lp94$c;)V

    invoke-virtual {v2, v3}, Ldj3;->d(Lnz4$a;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v2}, Lch8;->b(Ljava/lang/Runnable;)V

    :cond_4
    sget-object v0, Ln91$a;->INFO:Ln91$a;

    iget-object v1, v1, Lp94$g;->a:Lm94;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    iget-object p0, p0, Lp94;->j:Ln91;

    const-string v2, "Started transport {0}"

    invoke-virtual {p0, v0, v2, v1}, Ln91;->b(Ln91$a;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lod5;->b(Ljava/lang/Object;)Lod5$a;

    move-result-object v0

    iget-object v1, p0, Lp94;->a:Lm94;

    iget-wide v1, v1, Lm94;->c:J

    const-string v3, "logId"

    invoke-virtual {v0, v1, v2, v3}, Lod5$a;->b(JLjava/lang/String;)V

    const-string v1, "addressGroups"

    iget-object p0, p0, Lp94;->o:Ljava/util/List;

    invoke-virtual {v0, p0, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lod5$a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
