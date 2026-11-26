.class public final Lj06$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj06;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final b:Lj06$f;

.field public final c:Ln91;

.field public final synthetic d:Lj06;


# direct methods
.method public constructor <init>(Lj06;Lj06$f;Ln91;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj06$b;->d:Lj06;

    iput-object p2, p0, Lj06$b;->b:Lj06$f;

    iput-object p3, p0, Lj06$b;->c:Ln91;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget-object v0, p0, Lj06$b;->d:Lj06;

    iget-object v1, v0, Lj06;->j:Ldu8;

    invoke-virtual {v1}, Ldu8;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lj06;->m:Ljava/lang/Long;

    iget-object v0, p0, Lj06$b;->d:Lj06;

    iget-object v0, v0, Lj06;->f:Lj06$d;

    iget-object v0, v0, Lj06$d;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj06$c;

    iget-object v4, v1, Lj06$c;->c:Lj06$c$a;

    iget-object v5, v4, Lj06$c$a;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v4, v4, Lj06$c$a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v2, v1, Lj06$c;->b:Lj06$c$a;

    iget-object v3, v1, Lj06$c;->c:Lj06$c$a;

    iput-object v3, v1, Lj06$c;->b:Lj06$c$a;

    iput-object v2, v1, Lj06$c;->c:Lj06$c$a;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj06$b;->b:Lj06$f;

    iget-object v1, p0, Lj06$b;->c:Ln91;

    sget-object v4, Lcom/google/common/collect/j;->c:Lcom/google/common/collect/j$b;

    new-instance v4, Lcom/google/common/collect/j$a;

    invoke-direct {v4}, Lcom/google/common/collect/j$a;-><init>()V

    iget-object v5, v0, Lj06$f;->e:Lj06$f$c;

    if-eqz v5, :cond_1

    new-instance v5, Lj06$j;

    invoke-direct {v5, v0, v1}, Lj06$j;-><init>(Lj06$f;Ln91;)V

    invoke-virtual {v4, v5}, Lcom/google/common/collect/i$a;->c(Ljava/lang/Object;)V

    :cond_1
    iget-object v5, v0, Lj06$f;->f:Lj06$f$b;

    if-eqz v5, :cond_2

    new-instance v5, Lj06$e;

    invoke-direct {v5, v0, v1}, Lj06$e;-><init>(Lj06$f;Ln91;)V

    invoke-virtual {v4, v5}, Lcom/google/common/collect/i$a;->c(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v4}, Lcom/google/common/collect/j$a;->g()Lcom/google/common/collect/w;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/j;->q(I)Lcom/google/common/collect/j$b;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Lo0;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lo0;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj06$i;

    iget-object v5, p0, Lj06$b;->d:Lj06;

    iget-object v6, v5, Lj06;->f:Lj06$d;

    iget-object v5, v5, Lj06;->m:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-interface {v4, v6, v7, v8}, Lj06$i;->a(Lj06$d;J)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lj06$b;->d:Lj06;

    iget-object v0, p0, Lj06;->f:Lj06$d;

    iget-object p0, p0, Lj06;->m:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object p0, v0, Lj06$d;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj06$c;

    invoke-virtual {v0}, Lj06$c;->d()Z

    move-result v6

    if-nez v6, :cond_6

    iget v6, v0, Lj06$c;->e:I

    if-nez v6, :cond_5

    move v6, v1

    goto :goto_3

    :cond_5
    add-int/lit8 v6, v6, -0x1

    :goto_3
    iput v6, v0, Lj06$c;->e:I

    :cond_6
    invoke-virtual {v0}, Lj06$c;->d()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v0, Lj06$c;->a:Lj06$f;

    iget-wide v7, v6, Lj06$f;->b:J

    iget-wide v9, v6, Lj06$f;->c:J

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iget-object v8, v0, Lj06$c;->d:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v10, v0, Lj06$c;->a:Lj06$f;

    iget-wide v10, v10, Lj06$f;->b:J

    iget v12, v0, Lj06$c;->e:I

    int-to-long v12, v12

    mul-long/2addr v10, v12

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    add-long/2addr v6, v8

    sub-long v6, v4, v6

    cmp-long v6, v6, v2

    if-lez v6, :cond_4

    invoke-virtual {v0}, Lj06$c;->e()V

    goto :goto_2

    :cond_7
    return-void
.end method
