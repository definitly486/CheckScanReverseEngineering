.class public final Lp94$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp94$f;->d(Lh88;Lmn2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lmn2;

.field public final synthetic c:Lh88;

.field public final synthetic d:Lp94$f;


# direct methods
.method public constructor <init>(Lp94$f;Lmn2;Lh88;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp94$f$a;->d:Lp94$f;

    iput-object p2, p0, Lp94$f$a;->b:Lmn2;

    iput-object p3, p0, Lp94$f$a;->c:Lh88;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    sget-object v0, Lio/grpc/d;->e:Lio/grpc/a$b;

    iget-object v1, p0, Lp94$f$a;->d:Lp94$f;

    iget-object v1, v1, Lp94$f;->c:Lp94;

    iget-object v1, v1, Lp94;->y:Ldx1;

    iget-object v1, v1, Ldx1;->a:Lcx1;

    sget-object v2, Lcx1;->SHUTDOWN:Lcx1;

    if-ne v1, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, p0, Lp94$f$a;->d:Lp94$f;

    iget-object v1, v1, Lp94$f;->c:Lp94;

    iget-object v1, v1, Lp94;->x:Lp94$c;

    iget-object v2, p0, Lp94$f$a;->d:Lp94$f;

    iget-object v3, v2, Lp94$f;->a:Lp94$c;

    iget-object v2, v2, Lp94$f;->c:Lp94;

    const-string v4, ""

    const/4 v5, 0x0

    if-ne v1, v3, :cond_2

    iput-object v5, v2, Lp94;->x:Lp94$c;

    iget-object v1, p0, Lp94$f$a;->d:Lp94$f;

    iget-object v1, v1, Lp94$f;->c:Lp94;

    iget-object v1, v1, Lp94;->n:Lp94$e;

    invoke-virtual {v1}, Lp94$e;->b()V

    iget-object v1, p0, Lp94$f$a;->d:Lp94$f;

    iget-object v1, v1, Lp94$f;->c:Lp94;

    sget-object v2, Lcx1;->IDLE:Lcx1;

    invoke-virtual {v1, v2}, Lp94;->f(Lcx1;)V

    iget-object v1, p0, Lp94$f$a;->d:Lp94$f;

    iget-object v1, v1, Lp94$f;->c:Lp94;

    iget-object v2, v1, Lp94;->A:Lrb8;

    iget-object v3, v1, Lp94;->B:Ljava/lang/String;

    iget-object v1, v1, Lp94;->n:Lp94$e;

    invoke-virtual {v1}, Lp94$e;->a()Lio/grpc/a;

    move-result-object v1

    invoke-static {v1}, Lp94$f;->b(Lio/grpc/a;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lp94$f$a;->d:Lp94$f;

    iget-object v5, v5, Lp94$f;->c:Lp94;

    iget-object v5, v5, Lp94;->n:Lp94$e;

    invoke-virtual {v5}, Lp94$e;->a()Lio/grpc/a;

    move-result-object v5

    iget-object v5, v5, Lio/grpc/a;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v5, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v4, v0

    :goto_0
    iget-object v0, p0, Lp94$f$a;->b:Lmn2;

    invoke-interface {v0}, Lmn2;->a()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lp94$f$a;->d:Lp94$f;

    iget-object p0, p0, Lp94$f;->c:Lp94;

    iget-object p0, p0, Lp94;->n:Lp94$e;

    invoke-virtual {p0}, Lp94$e;->a()Lio/grpc/a;

    move-result-object p0

    sget-object v5, Lus3;->a:Lio/grpc/a$b;

    iget-object p0, p0, Lio/grpc/a;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {p0, v5}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfl7;

    invoke-static {p0}, Lp94$f;->a(Lfl7;)Ljava/lang/String;

    move-result-object p0

    iget-object v5, v2, Lrb8;->a:Lua5;

    sget-object v6, Lrb8;->b:Lvv4;

    invoke-static {v3}, Lcom/google/common/collect/j;->s(Ljava/lang/Object;)Lcom/google/common/collect/w;

    move-result-object v7

    invoke-static {v1, v4, v0}, Lcom/google/common/collect/j;->u(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/w;

    move-result-object v0

    invoke-interface {v5, v6, v7, v0}, Lua5;->a(Lvv4;Ljava/util/List;Ljava/util/List;)V

    iget-object v8, v2, Lrb8;->a:Lua5;

    sget-object v9, Lrb8;->e:Lhw4;

    invoke-static {v3}, Lcom/google/common/collect/j;->s(Ljava/lang/Object;)Lcom/google/common/collect/w;

    move-result-object v12

    invoke-static {p0, v1, v4}, Lcom/google/common/collect/j;->u(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/w;

    move-result-object v13

    const-wide/16 v10, -0x1

    invoke-interface/range {v8 .. v13}, Lua5;->b(Lhw4;JLjava/util/List;Ljava/util/List;)V

    return-void

    :cond_2
    iget-object v1, v2, Lp94;->w:Lp94$c;

    if-ne v1, v3, :cond_a

    iget-object v1, v2, Lp94;->A:Lrb8;

    iget-object v3, v2, Lp94;->B:Ljava/lang/String;

    iget-object v2, v2, Lp94;->n:Lp94$e;

    invoke-virtual {v2}, Lp94$e;->a()Lio/grpc/a;

    move-result-object v2

    invoke-static {v2}, Lp94$f;->b(Lio/grpc/a;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lp94$f$a;->d:Lp94$f;

    iget-object v6, v6, Lp94$f;->c:Lp94;

    iget-object v6, v6, Lp94;->n:Lp94$e;

    invoke-virtual {v6}, Lp94$e;->a()Lio/grpc/a;

    move-result-object v6

    iget-object v6, v6, Lio/grpc/a;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v6, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v4, v0

    :goto_1
    iget-object v0, v1, Lrb8;->a:Lua5;

    sget-object v1, Lrb8;->d:Lvv4;

    invoke-static {v3}, Lcom/google/common/collect/j;->s(Ljava/lang/Object;)Lcom/google/common/collect/w;

    move-result-object v3

    invoke-static {v2, v4}, Lcom/google/common/collect/j;->t(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/w;

    move-result-object v2

    invoke-interface {v0, v1, v3, v2}, Lua5;->a(Lvv4;Ljava/util/List;Ljava/util/List;)V

    iget-object v0, p0, Lp94$f$a;->d:Lp94$f;

    iget-object v0, v0, Lp94$f;->c:Lp94;

    iget-object v0, v0, Lp94;->y:Ldx1;

    iget-object v0, v0, Ldx1;->a:Lcx1;

    sget-object v1, Lcx1;->CONNECTING:Lcx1;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_4

    move v0, v3

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    iget-object v1, p0, Lp94$f$a;->d:Lp94$f;

    iget-object v1, v1, Lp94$f;->c:Lp94;

    iget-object v1, v1, Lp94;->y:Ldx1;

    iget-object v1, v1, Ldx1;->a:Lcx1;

    const-string v4, "Expected state is CONNECTING, actual state is %s"

    invoke-static {v4, v0, v1}, Lo8;->q(Ljava/lang/String;ZLjava/lang/Object;)V

    iget-object v0, p0, Lp94$f$a;->d:Lp94$f;

    iget-object v0, v0, Lp94$f;->c:Lp94;

    iget-object v0, v0, Lp94;->n:Lp94$e;

    iget-object v1, v0, Lp94$e;->a:Ljava/util/List;

    iget v4, v0, Lp94$e;->b:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/d;

    iget v4, v0, Lp94$e;->c:I

    add-int/2addr v4, v3

    iput v4, v0, Lp94$e;->c:I

    iget-object v1, v1, Lio/grpc/d;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v4, v1, :cond_5

    iget v1, v0, Lp94$e;->b:I

    add-int/2addr v1, v3

    iput v1, v0, Lp94$e;->b:I

    iput v2, v0, Lp94$e;->c:I

    :cond_5
    iget-object v0, p0, Lp94$f$a;->d:Lp94$f;

    iget-object v0, v0, Lp94$f;->c:Lp94;

    iget-object v0, v0, Lp94;->n:Lp94$e;

    iget v1, v0, Lp94$e;->b:I

    iget-object v0, v0, Lp94$e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v4, p0, Lp94$f$a;->d:Lp94$f;

    iget-object v4, v4, Lp94$f;->c:Lp94;

    if-ge v1, v0, :cond_6

    invoke-virtual {v4}, Lp94;->i()V

    return-void

    :cond_6
    iput-object v5, v4, Lp94;->w:Lp94$c;

    iget-object v0, v4, Lp94;->n:Lp94$e;

    invoke-virtual {v0}, Lp94$e;->b()V

    iget-object v0, p0, Lp94$f$a;->d:Lp94$f;

    iget-object v0, v0, Lp94$f;->c:Lp94;

    iget-object p0, p0, Lp94$f$a;->c:Lh88;

    iget-object v1, v0, Lp94;->m:Lch8;

    invoke-virtual {v1}, Lch8;->d()V

    invoke-virtual {p0}, Lh88;->f()Z

    move-result v1

    xor-int/2addr v1, v3

    const-string v4, "The error status must not be OK"

    invoke-static {v1, v4}, Lo8;->f(ZLjava/lang/Object;)V

    new-instance v1, Ldx1;

    sget-object v4, Lcx1;->TRANSIENT_FAILURE:Lcx1;

    invoke-direct {v1, v4, p0}, Ldx1;-><init>(Lcx1;Lh88;)V

    invoke-virtual {v0, v1}, Lp94;->g(Ldx1;)V

    iget-boolean v1, v0, Lp94;->k:Z

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    iget-object v1, v0, Lp94;->p:Lw33;

    if-nez v1, :cond_8

    iget-object v1, v0, Lp94;->c:Li00;

    check-cast v1, Lw33$a;

    invoke-virtual {v1}, Lw33$a;->a()Lw33;

    move-result-object v1

    iput-object v1, v0, Lp94;->p:Lw33;

    :cond_8
    invoke-virtual {v1}, Lw33;->a()J

    move-result-wide v4

    iget-object v1, v0, Lp94;->q:La98;

    invoke-virtual {v1}, La98;->a()J

    move-result-wide v6

    sub-long v10, v4, v6

    iget-object v1, v0, Lp94;->j:Ln91;

    sget-object v4, Ln91$a;->INFO:Ln91$a;

    invoke-static {p0}, Lp94;->h(Lh88;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {p0, v5}, [Ljava/lang/Object;

    move-result-object p0

    const-string v5, "TRANSIENT_FAILURE ({0}). Will reconnect after {1} ns"

    invoke-virtual {v1, v4, v5, p0}, Ln91;->b(Ln91$a;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, v0, Lp94;->r:Lch8$c;

    if-nez p0, :cond_9

    move v2, v3

    :cond_9
    const-string p0, "previous reconnectTask is not done"

    invoke-static {v2, p0}, Lo8;->s(ZLjava/lang/Object;)V

    iget-object v8, v0, Lp94;->m:Lch8;

    new-instance v9, Lq94;

    invoke-direct {v9, v0}, Lq94;-><init>(Lp94;)V

    iget-object v13, v0, Lp94;->f:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v12, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v8 .. v13}, Lch8;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lch8$c;

    move-result-object p0

    iput-object p0, v0, Lp94;->r:Lch8$c;

    :cond_a
    :goto_3
    return-void
.end method
