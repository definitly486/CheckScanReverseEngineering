.class public final Ld86;
.super Lio/grpc/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld86$f;,
        Ld86$h;,
        Ld86$e;,
        Ld86$g;,
        Ld86$d;,
        Ld86$i;
    }
.end annotation


# static fields
.field public static final t:Ljava/util/logging/Logger;

.field public static final u:Z


# instance fields
.field public final f:Z

.field public final g:Lio/grpc/h$e;

.field public final h:Ljava/util/HashMap;

.field public final i:Ld86$e;

.field public j:I

.field public k:Z

.field public l:Lch8$c;

.field public m:Lcx1;

.field public n:Lcx1;

.field public o:Z

.field public final p:Lw33$a;

.field public q:Lw33;

.field public r:Lch8$c;

.field public final s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Ld86;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ld86;->t:Ljava/util/logging/Logger;

    sget-object v0, Lvs3;->a:Ljava/util/logging/Logger;

    const-string v0, "GRPC_EXPERIMENTAL_PF_WEIGHTED_SHUFFLING"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ll63;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ld86;->u:Z

    return-void
.end method

.method public constructor <init>(Lio/grpc/h$e;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lvs3;->a:Ljava/util/logging/Logger;

    const-string v0, "GRPC_SERIALIZE_RETRIES"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ll63;->a(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    sget-boolean v2, Lf86;->b:Z

    const-string v2, "GRPC_PF_USE_HAPPY_EYEBALLS"

    invoke-static {v2, v1}, Ll63;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Ld86;->f:Z

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Ld86;->h:Ljava/util/HashMap;

    new-instance v4, Ld86$e;

    sget-object v5, Lcom/google/common/collect/j;->c:Lcom/google/common/collect/j$b;

    sget-object v5, Lcom/google/common/collect/w;->f:Lcom/google/common/collect/w;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput v1, v4, Ld86$e;->b:I

    iput-boolean v2, v4, Ld86$e;->c:Z

    invoke-virtual {v4, v5}, Ld86$e;->f(Lcom/google/common/collect/j;)V

    iput-object v4, p0, Ld86;->i:Ld86$e;

    iput v1, p0, Ld86;->j:I

    iput-boolean v3, p0, Ld86;->k:Z

    const/4 v2, 0x0

    iput-object v2, p0, Ld86;->l:Lch8$c;

    sget-object v4, Lcx1;->IDLE:Lcx1;

    iput-object v4, p0, Ld86;->m:Lcx1;

    iput-object v4, p0, Ld86;->n:Lcx1;

    iput-boolean v3, p0, Ld86;->o:Z

    new-instance v3, Lw33$a;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Ld86;->p:Lw33$a;

    iput-object v2, p0, Ld86;->r:Lch8$c;

    invoke-static {v0, v1}, Ll63;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ld86;->s:Z

    const-string v0, "helper"

    invoke-static {p1, v0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Ld86;->g:Lio/grpc/h$e;

    return-void
.end method

.method public static g(Ljava/util/List;Ljava/util/Random;)Ljava/util/AbstractList;
    .locals 10

    sget-boolean v0, Ld86;->u:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/d;

    new-instance v2, Ld86$i;

    iget-object v3, v1, Lio/grpc/d;->b:Lio/grpc/a;

    sget-object v4, Lio/grpc/d;->g:Lio/grpc/a$b;

    iget-object v3, v3, Lio/grpc/a;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v3, v4}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-nez v3, :cond_0

    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :cond_0
    invoke-virtual {p1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v4

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    long-to-double v6, v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    div-double/2addr v8, v6

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    invoke-direct {v2, v1, v3, v4}, Ld86$i;-><init>(Lio/grpc/d;D)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance p0, Lc86;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lc86;-><init>(I)V

    invoke-static {v0, p0}, Lyr4;->c(Ljava/util/List;Llm3;)Ljava/util/AbstractList;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lio/grpc/h$i;)Lh88;
    .locals 8

    iget-object v0, p0, Ld86;->m:Lcx1;

    sget-object v1, Lcx1;->SHUTDOWN:Lcx1;

    if-ne v0, v1, :cond_0

    sget-object p0, Lh88;->k:Lh88;

    const-string p1, "Already shut down"

    invoke-virtual {p0, p1}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p1, Lio/grpc/h$i;->b:Lio/grpc/a;

    iget-object v1, p1, Lio/grpc/h$i;->a:Ljava/util/List;

    sget-object v2, Lio/grpc/h;->e:Lio/grpc/a$b;

    iget-object v3, v0, Lio/grpc/a;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v3, v2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Ld86;->o:Z

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const-string v4, ", attrs="

    if-eqz v2, :cond_3

    sget-object p1, Lh88;->m:Lh88;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NameResolver returned no usable address. addrs="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object p1

    invoke-virtual {p0, p1}, Ld86;->b(Lh88;)V

    return-object p1

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/grpc/d;

    if-nez v5, :cond_4

    sget-object p1, Lh88;->m:Lh88;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NameResolver returned address list with null endpoint. addrs="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object p1

    invoke-virtual {p0, p1}, Ld86;->b(Lh88;)V

    return-object p1

    :cond_5
    iput-boolean v3, p0, Ld86;->k:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/d;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v3, Lio/grpc/d;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/SocketAddress;

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    new-instance v5, Lio/grpc/d;

    iget-object v3, v3, Lio/grpc/d;->b:Lio/grpc/a;

    invoke-direct {v5, v4, v3}, Lio/grpc/d;-><init>(Ljava/util/List;Lio/grpc/a;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    iget-object p1, p1, Lio/grpc/h$i;->c:Ljava/lang/Object;

    instance-of v0, p1, Ld86$f;

    if-eqz v0, :cond_a

    check-cast p1, Ld86$f;

    iget-object p1, p1, Ld86$f;->a:Ljava/lang/Boolean;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    invoke-static {v2, p1}, Ld86;->g(Ljava/util/List;Ljava/util/Random;)Ljava/util/AbstractList;

    move-result-object v2

    :cond_a
    invoke-static {v2}, Lcom/google/common/collect/j;->o(Ljava/util/Collection;)Lcom/google/common/collect/j;

    move-result-object p1

    iget-object v0, p0, Ld86;->m:Lcx1;

    sget-object v1, Lcx1;->READY:Lcx1;

    const/4 v2, 0x0

    iget-object v3, p0, Ld86;->i:Ld86$e;

    if-eq v0, v1, :cond_c

    sget-object v4, Lcx1;->CONNECTING:Lcx1;

    if-ne v0, v4, :cond_b

    iget-boolean v0, p0, Ld86;->f:Z

    if-eqz v0, :cond_c

    invoke-virtual {v3}, Ld86$e;->d()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {v3, p1}, Ld86$e;->f(Lcom/google/common/collect/j;)V

    goto :goto_5

    :cond_c
    :goto_4
    invoke-virtual {v3}, Ld86$e;->a()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-virtual {v3, p1}, Ld86$e;->f(Lcom/google/common/collect/j;)V

    invoke-virtual {v3, v0}, Ld86$e;->e(Ljava/net/SocketAddress;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v1, p0, Ld86;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld86$h;

    iget-object v0, v0, Ld86$h;->a:Lio/grpc/h$j;

    invoke-virtual {v3}, Ld86$e;->d()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v3, Ld86$e;->a:Ljava/util/List;

    iget v2, v3, Ld86$e;->b:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld86$e$a;

    new-instance v2, Lio/grpc/d;

    iget-object v3, v1, Ld86$e$a;->b:Ljava/net/SocketAddress;

    iget-object v1, v1, Ld86$e$a;->a:Lio/grpc/a;

    invoke-direct {v2, v1, v3}, Lio/grpc/d;-><init>(Lio/grpc/a;Ljava/net/SocketAddress;)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/h$j;->i(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Ld86;->h(Lcom/google/common/collect/j;)Z

    sget-object p0, Lh88;->e:Lh88;

    return-object p0

    :cond_d
    const-string p0, "Index is past the end of the address group list"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_e
    :goto_5
    invoke-virtual {p0, p1}, Ld86;->h(Lcom/google/common/collect/j;)Z

    move-result p1

    if-eqz p1, :cond_f

    sget-object p1, Lcx1;->CONNECTING:Lcx1;

    iput-object p1, p0, Ld86;->m:Lcx1;

    new-instance v0, Lio/grpc/h$d;

    sget-object v3, Lio/grpc/h$g;->e:Lio/grpc/h$g;

    invoke-direct {v0, v3}, Lio/grpc/h$d;-><init>(Lio/grpc/h$g;)V

    invoke-virtual {p0, p1, v0}, Ld86;->i(Lcx1;Lio/grpc/h$k;)V

    :cond_f
    iget-object p1, p0, Ld86;->m:Lcx1;

    if-ne p1, v1, :cond_10

    sget-object p1, Lcx1;->IDLE:Lcx1;

    iput-object p1, p0, Ld86;->m:Lcx1;

    new-instance v0, Ld86$g;

    invoke-direct {v0, p0, p0}, Ld86$g;-><init>(Ld86;Ld86;)V

    invoke-virtual {p0, p1, v0}, Ld86;->i(Lcx1;Lio/grpc/h$k;)V

    goto :goto_6

    :cond_10
    sget-object v0, Lcx1;->CONNECTING:Lcx1;

    if-eq p1, v0, :cond_11

    sget-object v0, Lcx1;->TRANSIENT_FAILURE:Lcx1;

    if-ne p1, v0, :cond_13

    :cond_11
    iget-object p1, p0, Ld86;->l:Lch8$c;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lch8$c;->a()V

    iput-object v2, p0, Ld86;->l:Lch8$c;

    :cond_12
    invoke-virtual {p0}, Ld86;->c()V

    :cond_13
    :goto_6
    sget-object p0, Lh88;->e:Lh88;

    return-object p0
.end method

.method public final b(Lh88;)V
    .locals 3

    iget-object v0, p0, Ld86;->m:Lcx1;

    sget-object v1, Lcx1;->SHUTDOWN:Lcx1;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ld86;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld86$h;

    iget-object v2, v2, Ld86$h;->a:Lio/grpc/h$j;

    invoke-virtual {v2}, Lio/grpc/h$j;->g()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/google/common/collect/j;->c:Lcom/google/common/collect/j$b;

    sget-object v0, Lcom/google/common/collect/w;->f:Lcom/google/common/collect/w;

    iget-object v1, p0, Ld86;->i:Ld86$e;

    invoke-virtual {v1, v0}, Ld86$e;->f(Lcom/google/common/collect/j;)V

    sget-object v0, Lcx1;->TRANSIENT_FAILURE:Lcx1;

    iput-object v0, p0, Ld86;->m:Lcx1;

    new-instance v1, Lio/grpc/h$d;

    invoke-static {p1}, Lio/grpc/h$g;->a(Lh88;)Lio/grpc/h$g;

    move-result-object p1

    invoke-direct {v1, p1}, Lio/grpc/h$d;-><init>(Lio/grpc/h$g;)V

    invoke-virtual {p0, v0, v1}, Ld86;->i(Lcx1;Lio/grpc/h$k;)V

    return-void
.end method

.method public final c()V
    .locals 9

    iget-object v0, p0, Ld86;->i:Ld86$e;

    invoke-virtual {v0}, Ld86$e;->d()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Ld86;->m:Lcx1;

    sget-object v2, Lcx1;->SHUTDOWN:Lcx1;

    if-eq v1, v2, :cond_b

    iget-object v1, p0, Ld86;->r:Lch8$c;

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v0}, Ld86$e;->a()Ljava/net/SocketAddress;

    move-result-object v1

    iget-object v2, p0, Ld86;->h:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld86$h;

    iget-boolean v4, p0, Ld86;->s:Z

    if-nez v3, :cond_5

    invoke-virtual {v0}, Ld86$e;->d()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v0, Ld86$e;->a:Ljava/util/List;

    iget v5, v0, Ld86$e;->b:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld86$e$a;

    iget-object v3, v3, Ld86$e$a;->a:Lio/grpc/a;

    new-instance v5, Ld86$d;

    invoke-direct {v5, p0}, Ld86$d;-><init>(Ld86;)V

    new-instance v6, Lio/grpc/h$b$a;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    sget-object v7, Lio/grpc/a;->b:Lio/grpc/a;

    iput-object v7, v6, Lio/grpc/h$b$a;->b:Lio/grpc/a;

    sget-object v7, Lio/grpc/h$b$a;->d:[[Ljava/lang/Object;

    iput-object v7, v6, Lio/grpc/h$b$a;->c:[[Ljava/lang/Object;

    new-instance v7, Lio/grpc/d;

    invoke-direct {v7, v3, v1}, Lio/grpc/d;-><init>(Lio/grpc/a;Ljava/net/SocketAddress;)V

    filled-new-array {v7}, [Lio/grpc/d;

    move-result-object v3

    invoke-static {v3}, Lyr4;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v6, v3}, Lio/grpc/h$b$a;->b(Ljava/util/List;)V

    sget-object v3, Lio/grpc/h;->b:Lio/grpc/h$b$b;

    invoke-virtual {v6, v3, v5}, Lio/grpc/h$b$a;->a(Lio/grpc/h$b$b;Ljava/lang/Object;)V

    sget-object v3, Lio/grpc/h;->c:Lio/grpc/h$b$b;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Lio/grpc/h$b$a;->a(Lio/grpc/h$b$b;Ljava/lang/Object;)V

    new-instance v3, Lio/grpc/h$b;

    iget-object v7, v6, Lio/grpc/h$b$a;->a:Ljava/util/List;

    iget-object v8, v6, Lio/grpc/h$b$a;->b:Lio/grpc/a;

    iget-object v6, v6, Lio/grpc/h$b$a;->c:[[Ljava/lang/Object;

    invoke-direct {v3, v7, v8, v6}, Lio/grpc/h$b;-><init>(Ljava/util/List;Lio/grpc/a;[[Ljava/lang/Object;)V

    iget-object v6, p0, Ld86;->g:Lio/grpc/h$e;

    invoke-virtual {v6, v3}, Lio/grpc/h$e;->a(Lio/grpc/h$b;)Lio/grpc/h$j;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v6, Ld86$h;

    sget-object v7, Lcx1;->IDLE:Lcx1;

    invoke-direct {v6, v3, v7}, Ld86$h;-><init>(Lio/grpc/h$j;Lcx1;)V

    iput-object v6, v5, Ld86$d;->a:Ld86$h;

    invoke-virtual {v2, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lio/grpc/h$j;->c()Lio/grpc/a;

    move-result-object v1

    iget-boolean v2, p0, Ld86;->o:Z

    if-nez v2, :cond_1

    sget-object v2, Lio/grpc/h;->d:Lio/grpc/a$b;

    iget-object v1, v1, Lio/grpc/a;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, v2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    sget-object v1, Lcx1;->READY:Lcx1;

    invoke-static {v1}, Ldx1;->a(Lcx1;)Ldx1;

    move-result-object v1

    iput-object v1, v6, Ld86$h;->d:Ldx1;

    :cond_2
    new-instance v1, Lb86;

    invoke-direct {v1, p0, v6}, Lb86;-><init>(Ld86;Ld86$h;)V

    invoke-virtual {v3, v1}, Lio/grpc/h$j;->h(Lio/grpc/h$l;)V

    move-object v3, v6

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Was not able to create subchannel for "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ld86;->t:Ljava/util/logging/Logger;

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const-string p0, "Can\'t create subchannel"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_4
    const-string p0, "Index is off the end of the address group list"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_0
    iget-object v1, v3, Ld86$h;->a:Lio/grpc/h$j;

    iget-object v2, v3, Ld86$h;->b:Lcx1;

    sget-object v5, Ld86$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v5, v2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_a

    const/4 v5, 0x2

    if-eq v2, v5, :cond_9

    const/4 v5, 0x4

    if-eq v2, v5, :cond_6

    goto :goto_1

    :cond_6
    if-nez v4, :cond_7

    invoke-virtual {v0}, Ld86$e;->b()Z

    invoke-virtual {p0}, Ld86;->c()V

    return-void

    :cond_7
    invoke-virtual {v0}, Ld86$e;->d()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Ld86;->e()V

    return-void

    :cond_8
    invoke-virtual {v1}, Lio/grpc/h$j;->f()V

    sget-object p0, Lcx1;->CONNECTING:Lcx1;

    invoke-virtual {v3, p0}, Ld86$h;->a(Lcx1;)V

    return-void

    :cond_9
    invoke-virtual {p0}, Ld86;->f()V

    return-void

    :cond_a
    invoke-virtual {v1}, Lio/grpc/h$j;->f()V

    sget-object v0, Lcx1;->CONNECTING:Lcx1;

    invoke-virtual {v3, v0}, Ld86$h;->a(Lcx1;)V

    invoke-virtual {p0}, Ld86;->f()V

    :cond_b
    :goto_1
    return-void
.end method

.method public final d()V
    .locals 5

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    iget-object v1, p0, Ld86;->h:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Ld86;->t:Ljava/util/logging/Logger;

    const-string v4, "Shutting down, currently have {} subchannels created"

    invoke-virtual {v3, v0, v4, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcx1;->SHUTDOWN:Lcx1;

    iput-object v0, p0, Ld86;->m:Lcx1;

    iput-object v0, p0, Ld86;->n:Lcx1;

    iget-object v0, p0, Ld86;->l:Lch8$c;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lch8$c;->a()V

    iput-object v2, p0, Ld86;->l:Lch8$c;

    :cond_0
    iget-object v0, p0, Ld86;->r:Lch8$c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lch8$c;->a()V

    iput-object v2, p0, Ld86;->r:Lch8$c;

    :cond_1
    iput-object v2, p0, Ld86;->q:Lw33;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld86$h;

    iget-object v0, v0, Ld86$h;->a:Lio/grpc/h$j;

    invoke-virtual {v0}, Lio/grpc/h$j;->g()V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final e()V
    .locals 7

    iget-boolean v0, p0, Ld86;->s:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ld86;->r:Lch8$c;

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Ld86;->q:Lw33;

    if-nez v0, :cond_2

    iget-object v0, p0, Ld86;->p:Lw33$a;

    invoke-virtual {v0}, Lw33$a;->a()Lw33;

    move-result-object v0

    iput-object v0, p0, Ld86;->q:Lw33;

    :cond_2
    invoke-virtual {v0}, Lw33;->a()J

    move-result-wide v3

    iget-object v0, p0, Ld86;->g:Lio/grpc/h$e;

    invoke-virtual {v0}, Lio/grpc/h$e;->d()Lch8;

    move-result-object v1

    new-instance v2, Ld86$b;

    invoke-direct {v2, p0}, Ld86$b;-><init>(Ld86;)V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lio/grpc/h$e;->c()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lch8;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lch8$c;

    move-result-object v0

    iput-object v0, p0, Ld86;->r:Lch8$c;

    return-void
.end method

.method public final f()V
    .locals 7

    iget-boolean v0, p0, Ld86;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld86;->l:Lch8$c;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lch8$c;->a:Lch8$b;

    iget-boolean v1, v0, Lch8$b;->d:Z

    if-nez v1, :cond_0

    iget-boolean v0, v0, Lch8$b;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ld86;->g:Lio/grpc/h$e;

    invoke-virtual {v0}, Lio/grpc/h$e;->d()Lch8;

    move-result-object v1

    new-instance v2, Ld86$c;

    invoke-direct {v2, p0}, Ld86$c;-><init>(Ld86;)V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lio/grpc/h$e;->c()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    const-wide/16 v3, 0xfa

    invoke-virtual/range {v1 .. v6}, Lch8;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lch8$c;

    move-result-object v0

    iput-object v0, p0, Ld86;->l:Lch8$c;

    :cond_1
    return-void
.end method

.method public final h(Lcom/google/common/collect/j;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j<",
            "Lio/grpc/d;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    iget-object p0, p0, Ld86;->h:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/google/common/collect/j;->q(I)Lcom/google/common/collect/j$b;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lo0;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lo0;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/d;

    iget-object v2, v2, Lio/grpc/d;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/SocketAddress;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld86$h;

    iget-object v2, v2, Ld86$h;->a:Lio/grpc/h$j;

    invoke-virtual {v2}, Lio/grpc/h$j;->g()V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final i(Lcx1;Lio/grpc/h$k;)V
    .locals 1

    iget-object v0, p0, Ld86;->n:Lcx1;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcx1;->IDLE:Lcx1;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcx1;->CONNECTING:Lcx1;

    if-ne p1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iput-object p1, p0, Ld86;->n:Lcx1;

    iget-object p0, p0, Ld86;->g:Lio/grpc/h$e;

    invoke-virtual {p0, p1, p2}, Lio/grpc/h$e;->f(Lcx1;Lio/grpc/h$k;)V

    return-void
.end method

.method public final j(Ld86$h;)V
    .locals 5

    iget-object v0, p1, Ld86$h;->b:Lcx1;

    sget-object v1, Lcx1;->READY:Lcx1;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Ld86;->o:Z

    if-nez v0, :cond_4

    iget-object v0, p1, Ld86$h;->d:Ldx1;

    iget-object v2, v0, Ldx1;->a:Lcx1;

    if-ne v2, v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object p1, Lcx1;->TRANSIENT_FAILURE:Lcx1;

    if-ne v2, p1, :cond_2

    new-instance v1, Lio/grpc/h$d;

    iget-object v0, v0, Ldx1;->b:Lh88;

    invoke-static {v0}, Lio/grpc/h$g;->a(Lh88;)Lio/grpc/h$g;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/grpc/h$d;-><init>(Lio/grpc/h$g;)V

    invoke-virtual {p0, p1, v1}, Ld86;->i(Lcx1;Lio/grpc/h$k;)V

    return-void

    :cond_2
    iget-object v0, p0, Ld86;->n:Lcx1;

    if-eq v0, p1, :cond_3

    new-instance p1, Lio/grpc/h$d;

    sget-object v0, Lio/grpc/h$g;->e:Lio/grpc/h$g;

    invoke-direct {p1, v0}, Lio/grpc/h$d;-><init>(Lio/grpc/h$g;)V

    invoke-virtual {p0, v2, p1}, Ld86;->i(Lcx1;Lio/grpc/h$k;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    new-instance v0, Lio/grpc/h$d;

    iget-object p1, p1, Ld86$h;->a:Lio/grpc/h$j;

    new-instance v2, Lio/grpc/h$g;

    sget-object v3, Lh88;->e:Lh88;

    const/4 v4, 0x0

    invoke-direct {v2, p1, v3, v4}, Lio/grpc/h$g;-><init>(Lio/grpc/h$j;Lh88;Z)V

    invoke-direct {v0, v2}, Lio/grpc/h$d;-><init>(Lio/grpc/h$g;)V

    invoke-virtual {p0, v1, v0}, Ld86;->i(Lcx1;Lio/grpc/h$k;)V

    return-void
.end method
