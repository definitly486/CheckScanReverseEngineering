.class public final Lb87;
.super Lff5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb87$b;
    }
.end annotation


# instance fields
.field public final m:Ljava/util/concurrent/atomic/AtomicInteger;

.field public n:Lio/grpc/h$k;


# direct methods
.method public constructor <init>(Lio/grpc/h$e;)V
    .locals 1

    invoke-direct {p0, p1}, Lff5;-><init>(Lio/grpc/h$e;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lb87;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Lio/grpc/h$d;

    sget-object v0, Lio/grpc/h$g;->e:Lio/grpc/h$g;

    invoke-direct {p1, v0}, Lio/grpc/h$d;-><init>(Lio/grpc/h$g;)V

    iput-object p1, p0, Lb87;->n:Lio/grpc/h$k;

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;)Lff5$a;
    .locals 2

    new-instance v0, Lb87$a;

    iget-object v1, p0, Lff5;->i:Lf86;

    invoke-direct {v0, p0, p1, v1}, Lb87$a;-><init>(Lb87;Ljava/lang/Object;Lf86;)V

    return-object v0
.end method

.method public final h()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lff5;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lff5$a;

    iget-object v3, v2, Lff5$a;->c:Lcx1;

    sget-object v4, Lcx1;->READY:Lcx1;

    if-ne v3, v4, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lff5;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lff5$a;

    iget-object v1, v1, Lff5$a;->c:Lcx1;

    sget-object v2, Lcx1;->CONNECTING:Lcx1;

    if-eq v1, v2, :cond_3

    sget-object v3, Lcx1;->IDLE:Lcx1;

    if-ne v1, v3, :cond_2

    :cond_3
    new-instance v0, Lio/grpc/h$d;

    sget-object v1, Lio/grpc/h$g;->e:Lio/grpc/h$g;

    invoke-direct {v0, v1}, Lio/grpc/h$d;-><init>(Lio/grpc/h$g;)V

    invoke-virtual {p0, v2, v0}, Lb87;->j(Lcx1;Lio/grpc/h$k;)V

    return-void

    :cond_4
    sget-object v0, Lcx1;->TRANSIENT_FAILURE:Lcx1;

    iget-object v1, p0, Lff5;->f:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lb87;->i(Ljava/util/ArrayList;)Lb87$b;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lb87;->j(Lcx1;Lio/grpc/h$k;)V

    return-void

    :cond_5
    sget-object v1, Lcx1;->READY:Lcx1;

    invoke-virtual {p0, v0}, Lb87;->i(Ljava/util/ArrayList;)Lb87$b;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lb87;->j(Lcx1;Lio/grpc/h$k;)V

    return-void
.end method

.method public final i(Ljava/util/ArrayList;)Lb87$b;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lff5$a;

    iget-object v1, v1, Lff5$a;->d:Lio/grpc/h$k;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Lb87$b;

    iget-object p0, p0, Lb87;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, v0, p0}, Lb87$b;-><init>(Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicInteger;)V

    return-object p1
.end method

.method public final j(Lcx1;Lio/grpc/h$k;)V
    .locals 1

    iget-object v0, p0, Lff5;->j:Lcx1;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lb87;->n:Lio/grpc/h$k;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lff5;->g:Lio/grpc/h$e;

    invoke-virtual {v0, p1, p2}, Lio/grpc/h$e;->f(Lcx1;Lio/grpc/h$k;)V

    iput-object p1, p0, Lff5;->j:Lcx1;

    iput-object p2, p0, Lb87;->n:Lio/grpc/h$k;

    return-void
.end method
