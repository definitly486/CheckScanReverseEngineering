.class public final Lj06$h;
.super Lrj3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj06;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj06$h$a;
    }
.end annotation


# instance fields
.field public final a:Lio/grpc/h$j;

.field public b:Lj06$c;

.field public c:Z

.field public d:Ldx1;

.field public e:Lio/grpc/h$l;

.field public final f:Ln91;

.field public final synthetic g:Lj06;


# direct methods
.method public constructor <init>(Lj06;Lio/grpc/h$b;Lrv3;)V
    .locals 6

    iput-object p1, p0, Lj06$h;->g:Lj06;

    invoke-direct {p0}, Lio/grpc/h$j;-><init>()V

    sget-object p1, Lio/grpc/h;->b:Lio/grpc/h$b$b;

    invoke-virtual {p2, p1}, Lio/grpc/h$b;->a(Lio/grpc/h$b$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/h$l;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lj06$h;->e:Lio/grpc/h$l;

    new-instance v1, Lj06$h$a;

    invoke-direct {v1, p0, v0}, Lj06$h$a;-><init>(Lj06$h;Lio/grpc/h$l;)V

    new-instance v0, Lio/grpc/h$b$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v2, Lio/grpc/a;->b:Lio/grpc/a;

    iput-object v2, v0, Lio/grpc/h$b$a;->b:Lio/grpc/a;

    sget-object v2, Lio/grpc/h$b$a;->d:[[Ljava/lang/Object;

    iput-object v2, v0, Lio/grpc/h$b$a;->c:[[Ljava/lang/Object;

    iget-object v2, p2, Lio/grpc/h$b;->a:Ljava/util/List;

    invoke-virtual {v0, v2}, Lio/grpc/h$b$a;->b(Ljava/util/List;)V

    iget-object v2, p2, Lio/grpc/h$b;->b:Lio/grpc/a;

    iput-object v2, v0, Lio/grpc/h$b$a;->b:Lio/grpc/a;

    iget-object p2, p2, Lio/grpc/h$b;->c:[[Ljava/lang/Object;

    array-length v2, p2

    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v5, 0x1

    aput v3, v4, v5

    const/4 v3, 0x0

    aput v2, v4, v3

    const-class v2, Ljava/lang/Object;

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/lang/Object;

    iput-object v2, v0, Lio/grpc/h$b$a;->c:[[Ljava/lang/Object;

    array-length v4, p2

    invoke-static {p2, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0, p1, v1}, Lio/grpc/h$b$a;->a(Lio/grpc/h$b$b;Ljava/lang/Object;)V

    new-instance p1, Lio/grpc/h$b;

    iget-object p2, v0, Lio/grpc/h$b$a;->a:Ljava/util/List;

    iget-object v1, v0, Lio/grpc/h$b$a;->b:Lio/grpc/a;

    iget-object v0, v0, Lio/grpc/h$b$a;->c:[[Ljava/lang/Object;

    invoke-direct {p1, p2, v1, v0}, Lio/grpc/h$b;-><init>(Ljava/util/List;Lio/grpc/a;[[Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Lrv3;->a(Lio/grpc/h$b;)Lio/grpc/h$j;

    move-result-object p1

    iput-object p1, p0, Lj06$h;->a:Lio/grpc/h$j;

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p2}, Lrv3;->a(Lio/grpc/h$b;)Lio/grpc/h$j;

    move-result-object p1

    iput-object p1, p0, Lj06$h;->a:Lio/grpc/h$j;

    :goto_0
    invoke-virtual {p1}, Lio/grpc/h$j;->d()Ln91;

    move-result-object p1

    iput-object p1, p0, Lj06$h;->f:Ln91;

    return-void
.end method


# virtual methods
.method public final c()Lio/grpc/a;
    .locals 4

    iget-object v0, p0, Lj06$h;->b:Lj06$c;

    iget-object v1, p0, Lj06$h;->a:Lio/grpc/h$j;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lio/grpc/h$j;->c()Lio/grpc/a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lio/grpc/a;->a:Ljava/util/IdentityHashMap;

    sget-object v1, Lj06;->o:Lio/grpc/a$b;

    iget-object p0, p0, Lj06$h;->b:Lj06$c;

    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/util/IdentityHashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v2, v1, p0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lio/grpc/a;

    invoke-direct {p0, v2}, Lio/grpc/a;-><init>(Ljava/util/IdentityHashMap;)V

    return-object p0

    :cond_0
    invoke-virtual {v1}, Lio/grpc/h$j;->c()Lio/grpc/a;

    move-result-object p0

    return-object p0
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lj06$h;->b:Lj06$c;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lj06$h;->b:Lj06$c;

    iget-object v0, v0, Lj06$c;->f:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-super {p0}, Lrj3;->g()V

    return-void
.end method

.method public final h(Lio/grpc/h$l;)V
    .locals 1

    iget-object v0, p0, Lj06$h;->e:Lio/grpc/h$l;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lj06$h;->j()Lio/grpc/h$j;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/grpc/h$j;->h(Lio/grpc/h$l;)V

    return-void

    :cond_0
    iput-object p1, p0, Lj06$h;->e:Lio/grpc/h$l;

    new-instance v0, Lj06$h$a;

    invoke-direct {v0, p0, p1}, Lj06$h$a;-><init>(Lj06$h;Lio/grpc/h$l;)V

    invoke-virtual {p0}, Lj06$h;->j()Lio/grpc/h$j;

    move-result-object p0

    invoke-virtual {p0, v0}, Lio/grpc/h$j;->h(Lio/grpc/h$l;)V

    return-void
.end method

.method public final i(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/d;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lj06$h;->g:Lj06;

    invoke-virtual {p0}, Lrj3;->b()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lj06;->e(Ljava/util/List;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-static {p1}, Lj06;->e(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lj06;->f:Lj06$d;

    iget-object v4, p0, Lj06$h;->b:Lj06$c;

    invoke-virtual {v1, v4}, Lmj3;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lj06$h;->b:Lj06$c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, p0, Lj06$h;->b:Lj06$c;

    iget-object v1, v1, Lj06$c;->f:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/d;

    iget-object v1, v1, Lio/grpc/d;->a:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/SocketAddress;

    iget-object v2, v0, Lj06;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, v0, Lj06;->g:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj06$c;

    invoke-virtual {v0, p0}, Lj06$c;->a(Lj06$h;)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lrj3;->b()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lj06;->e(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lj06;->e(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lj06;->g:Ljava/util/HashMap;

    invoke-virtual {p0}, Lio/grpc/h$j;->a()Lio/grpc/d;

    move-result-object v4

    iget-object v4, v4, Lio/grpc/d;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, v0, Lj06;->g:Ljava/util/HashMap;

    invoke-virtual {p0}, Lio/grpc/h$j;->a()Lio/grpc/d;

    move-result-object v1

    iget-object v1, v1, Lio/grpc/d;->a:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj06$c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, p0, Lj06$h;->b:Lj06$c;

    iget-object v1, v0, Lj06$c;->f:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Lj06$c;->b:Lj06$c$a;

    iget-object v2, v1, Lj06$c$a;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v1, v1, Lj06$c$a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, v0, Lj06$c;->c:Lj06$c$a;

    iget-object v1, v0, Lj06$c$a;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, v0, Lj06$c$a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lrj3;->b()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lj06;->e(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p1}, Lj06;->e(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/d;

    iget-object v1, v1, Lio/grpc/d;->a:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/SocketAddress;

    iget-object v2, v0, Lj06;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, v0, Lj06;->g:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj06$c;

    invoke-virtual {v0, p0}, Lj06$c;->a(Lj06$h;)V

    :cond_3
    :goto_0
    iget-object p0, p0, Lj06$h;->a:Lio/grpc/h$j;

    invoke-virtual {p0, p1}, Lio/grpc/h$j;->i(Ljava/util/List;)V

    return-void
.end method

.method public final j()Lio/grpc/h$j;
    .locals 0

    iget-object p0, p0, Lj06$h;->a:Lio/grpc/h$j;

    return-object p0
.end method

.method public final k()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj06$h;->c:Z

    iget-object v1, p0, Lj06$h;->e:Lio/grpc/h$l;

    sget-object v2, Lh88;->m:Lh88;

    const-string v3, "The subchannel has been ejected by outlier detection"

    invoke-virtual {v2, v3}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v2

    invoke-virtual {v2}, Lh88;->f()Z

    move-result v3

    xor-int/2addr v0, v3

    const-string v3, "The error status must not be OK"

    invoke-static {v0, v3}, Lo8;->f(ZLjava/lang/Object;)V

    new-instance v0, Ldx1;

    sget-object v3, Lcx1;->TRANSIENT_FAILURE:Lcx1;

    invoke-direct {v0, v3, v2}, Ldx1;-><init>(Lcx1;Lh88;)V

    invoke-interface {v1, v0}, Lio/grpc/h$l;->a(Ldx1;)V

    sget-object v0, Ln91$a;->INFO:Ln91$a;

    const-string v1, "Subchannel ejected: {0}"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    iget-object p0, p0, Lj06$h;->f:Ln91;

    invoke-virtual {p0, v0, v1, v2}, Ln91;->b(Ln91$a;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OutlierDetectionSubchannel{addresses="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lj06$h;->a:Lio/grpc/h$j;

    invoke-virtual {p0}, Lio/grpc/h$j;->b()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
