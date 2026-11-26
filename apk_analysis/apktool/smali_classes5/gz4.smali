.class public final Lgz4;
.super Lk67;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        ">",
        "Lk67<",
        "TReqT;>;"
    }
.end annotation


# instance fields
.field public final synthetic G:Lra5;

.field public final synthetic H:Lio/grpc/b;

.field public final synthetic I:Lky1;

.field public final synthetic J:Lez4$e;


# direct methods
.method public constructor <init>(Lez4$e;Lra5;Lla5;Lio/grpc/b;Lq67;Lsv3;Lky1;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    move-object/from16 v2, p4

    iput-object p1, p0, Lgz4;->J:Lez4$e;

    iput-object p2, p0, Lgz4;->G:Lra5;

    iput-object v2, p0, Lgz4;->H:Lio/grpc/b;

    move-object/from16 v4, p7

    iput-object v4, p0, Lgz4;->I:Lky1;

    iget-object v4, p1, Lez4$e;->b:Lez4;

    iget-object v3, v4, Lez4;->T:Lk67$p;

    iget-wide v5, v4, Lez4;->U:J

    move-wide v8, v5

    iget-wide v6, v4, Lez4;->V:J

    iget-object v2, v2, Lio/grpc/b;->b:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_0

    iget-object v2, v4, Lez4;->i:Ljava/util/concurrent/Executor;

    :cond_0
    iget-object v4, v4, Lez4;->g:Lhy0;

    iget-object v4, v4, Lhy0;->b:Lfm1;

    invoke-interface {v4}, Lfm1;->A()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v4

    iget-object v12, p1, Lez4$e;->a:Lk67$y;

    move-wide v0, v8

    move-object v9, v4

    move-wide v4, v0

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object v8, v2

    move-object/from16 v2, p3

    invoke-direct/range {v0 .. v12}, Lk67;-><init>(Lra5;Lla5;Lk67$p;JJLjava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lq67;Lsv3;Lk67$y;)V

    return-void
.end method


# virtual methods
.method public final s(Lla5;Lk67$k;IZZ)Lcm1;
    .locals 4

    iget-object v0, p0, Lgz4;->H:Lio/grpc/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lio/grpc/b;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lio/grpc/b;->c(Lio/grpc/b;)Lio/grpc/b$a;

    move-result-object p2

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p2, Lio/grpc/b$a;->d:Ljava/util/List;

    new-instance v0, Lio/grpc/b;

    invoke-direct {v0, p2}, Lio/grpc/b;-><init>(Lio/grpc/b$a;)V

    invoke-static {v0, p1, p3, p4, p5}, Lvs3;->c(Lio/grpc/b;Lla5;IZZ)[Lio/grpc/c;

    move-result-object p2

    iget-object p3, p0, Lgz4;->I:Lky1;

    invoke-virtual {p3}, Lky1;->a()Lky1;

    move-result-object p4

    :try_start_0
    iget-object p5, p0, Lgz4;->J:Lez4$e;

    iget-object p5, p5, Lez4$e;->b:Lez4;

    iget-object p5, p5, Lez4;->D:Lel2;

    iget-object p0, p0, Lgz4;->G:Lra5;

    invoke-virtual {p5, p0, p1, v0, p2}, Lel2;->b(Lra5;Lla5;Lio/grpc/b;[Lio/grpc/c;)Lcm1;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3, p4}, Lky1;->c(Lky1;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p3, p4}, Lky1;->c(Lky1;)V

    throw p0
.end method

.method public final t()V
    .locals 3

    iget-object v0, p0, Lgz4;->J:Lez4$e;

    iget-object v0, v0, Lez4$e;->b:Lez4;

    iget-object v0, v0, Lez4;->E:Lez4$q;

    iget-object v1, v0, Lez4$q;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lez4$q;->b:Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object p0, v0, Lez4$q;->b:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, v0, Lez4$q;->c:Lh88;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v0, Lez4$q;->b:Ljava/util/HashSet;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    iget-object v0, v0, Lez4$q;->d:Lez4;

    iget-object v0, v0, Lez4;->D:Lel2;

    invoke-virtual {v0, p0}, Lel2;->e(Lh88;)V

    :cond_1
    return-void

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final u()Lh88;
    .locals 3

    iget-object v0, p0, Lgz4;->J:Lez4$e;

    iget-object v0, v0, Lez4$e;->b:Lez4;

    iget-object v0, v0, Lez4;->E:Lez4$q;

    iget-object v1, v0, Lez4$q;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lez4$q;->c:Lh88;

    if-eqz v2, :cond_0

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lez4$q;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    monitor-exit v1

    return-object p0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
