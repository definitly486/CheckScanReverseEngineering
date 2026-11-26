.class public final Lyads/og2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/nh2;


# direct methods
.method public constructor <init>(Lyads/nh2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/og2;->a:Lyads/nh2;

    return-void
.end method

.method public static a(Lyads/p41;Ljava/lang/String;Lyads/fs2;)Lyads/ng2;
    .locals 2

    instance-of v0, p0, Lyads/ng2;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p0, Lyads/ng2;

    iget-object p2, p0, Lyads/ng2;->t:Ljava/lang/String;

    invoke-static {p2, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    return-object v1

    :cond_1
    instance-of v0, p0, Lyads/og1;

    if-eqz v0, :cond_4

    check-cast p0, Lyads/og1;

    iget-object v0, p0, Lyads/og1;->u:Ljava/util/List;

    iget-object p0, p0, Lyads/og1;->s:Lyads/j71;

    invoke-static {v0, p0, p2}, Lyads/f71;->a(Ljava/util/List;Lyads/j71;Lyads/fs2;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/cn1;

    iget-object v0, p2, Lyads/cn1;->a:Lyads/br0;

    iget-object p2, p2, Lyads/cn1;->b:Lyads/fs2;

    invoke-virtual {v0}, Lyads/br0;->a()Lyads/p41;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lyads/og2;->a(Lyads/p41;Ljava/lang/String;Lyads/fs2;)Lyads/ng2;

    move-result-object p2

    if-eqz p2, :cond_2

    return-object p2

    :cond_3
    return-object v1

    :cond_4
    instance-of v0, p0, Lyads/j81;

    if-eqz v0, :cond_7

    check-cast p0, Lyads/j81;

    iget-object v0, p0, Lyads/j81;->B:Ljava/util/List;

    iget-object p0, p0, Lyads/j81;->z:Lyads/j71;

    invoke-static {v0, p0, p2}, Lyads/f71;->a(Ljava/util/List;Lyads/j71;Lyads/fs2;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/cn1;

    iget-object v0, p2, Lyads/cn1;->a:Lyads/br0;

    iget-object p2, p2, Lyads/cn1;->b:Lyads/fs2;

    invoke-virtual {v0}, Lyads/br0;->a()Lyads/p41;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lyads/og2;->a(Lyads/p41;Ljava/lang/String;Lyads/fs2;)Lyads/ng2;

    move-result-object p2

    if-eqz p2, :cond_5

    return-object p2

    :cond_6
    return-object v1

    :cond_7
    instance-of v0, p0, Lyads/oh1;

    if-eqz v0, :cond_a

    check-cast p0, Lyads/oh1;

    invoke-static {p0}, Lyads/f71;->a(Lyads/oh1;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/br0;

    invoke-virtual {v0}, Lyads/br0;->a()Lyads/p41;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lyads/og2;->a(Lyads/p41;Ljava/lang/String;Lyads/fs2;)Lyads/ng2;

    move-result-object v0

    if-eqz v0, :cond_8

    return-object v0

    :cond_9
    return-object v1

    :cond_a
    instance-of v0, p0, Lyads/ur1;

    if-eqz v0, :cond_d

    check-cast p0, Lyads/ur1;

    iget-object v0, p0, Lyads/ur1;->t:Ljava/util/List;

    iget-object p0, p0, Lyads/ur1;->r:Lyads/j71;

    invoke-static {v0, p0, p2}, Lyads/f71;->a(Ljava/util/List;Lyads/j71;Lyads/fs2;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/cn1;

    iget-object v0, p2, Lyads/cn1;->a:Lyads/br0;

    iget-object p2, p2, Lyads/cn1;->b:Lyads/fs2;

    invoke-virtual {v0}, Lyads/br0;->a()Lyads/p41;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lyads/og2;->a(Lyads/p41;Ljava/lang/String;Lyads/fs2;)Lyads/ng2;

    move-result-object p2

    if-eqz p2, :cond_b

    return-object p2

    :cond_c
    return-object v1

    :cond_d
    instance-of v0, p0, Lyads/y52;

    if-eqz v0, :cond_10

    check-cast p0, Lyads/y52;

    iget-object p0, p0, Lyads/y52;->q:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/t52;

    iget-object v0, v0, Lyads/t52;->a:Lyads/br0;

    invoke-virtual {v0}, Lyads/br0;->a()Lyads/p41;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lyads/og2;->a(Lyads/p41;Ljava/lang/String;Lyads/fs2;)Lyads/ng2;

    move-result-object v0

    if-eqz v0, :cond_e

    return-object v0

    :cond_f
    return-object v1

    :cond_10
    instance-of v0, p0, Lyads/ka1;

    if-eqz v0, :cond_13

    check-cast p0, Lyads/ka1;

    iget-object p0, p0, Lyads/ka1;->q:Ljava/util/List;

    if-eqz p0, :cond_12

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/br0;

    invoke-virtual {v0}, Lyads/br0;->a()Lyads/p41;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lyads/og2;->a(Lyads/p41;Ljava/lang/String;Lyads/fs2;)Lyads/ng2;

    move-result-object v0

    if-eqz v0, :cond_11

    return-object v0

    :cond_12
    return-object v1

    :cond_13
    instance-of v0, p0, Lyads/z22;

    if-eqz v0, :cond_15

    check-cast p0, Lyads/z22;

    iget-object p0, p0, Lyads/z22;->I:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/y22;

    iget-object v0, v0, Lyads/y22;->c:Lyads/br0;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lyads/br0;->a()Lyads/p41;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-static {v0, p1, p2}, Lyads/og2;->a(Lyads/p41;Ljava/lang/String;Lyads/fs2;)Lyads/ng2;

    move-result-object v0

    if-eqz v0, :cond_14

    return-object v0

    :cond_15
    return-object v1
.end method


# virtual methods
.method public final a(Lyads/vq0;Ljava/lang/String;Ljava/lang/String;Lyads/fs2;)Z
    .locals 3

    .line 311
    invoke-virtual {p1}, Lyads/vq0;->q()Lyads/db1;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 312
    :cond_0
    iget-object p1, p1, Lyads/db1;->c:Ljava/util/List;

    .line 313
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/cb1;

    .line 314
    iget-object v1, v1, Lyads/cb1;->a:Lyads/br0;

    invoke-virtual {v1}, Lyads/br0;->a()Lyads/p41;

    move-result-object v1

    invoke-static {v1, p2, p4}, Lyads/og2;->a(Lyads/p41;Ljava/lang/String;Lyads/fs2;)Lyads/ng2;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    return v0

    .line 315
    :cond_3
    iget-object p0, p0, Lyads/og2;->a:Lyads/nh2;

    .line 316
    iget-object p0, p0, Lyads/nh2;->a:Ljava/util/WeakHashMap;

    .line 317
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 318
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 319
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object p4, p2

    check-cast p4, Ljava/util/Map$Entry;

    .line 320
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lyads/ng2;

    .line 321
    iget-object p4, p4, Lyads/ng2;->t:Ljava/lang/String;

    iget-object v2, v1, Lyads/ng2;->t:Ljava/lang/String;

    .line 322
    invoke-static {p4, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 323
    :cond_5
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 324
    :cond_6
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 325
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 326
    check-cast p2, Ljava/util/Map$Entry;

    .line 327
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/mh2;

    invoke-virtual {p2}, Lyads/mh2;->j()Lyads/mv1;

    goto :goto_2

    .line 328
    :cond_7
    invoke-static {p0}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/kv1;

    if-nez p0, :cond_8

    return v0

    .line 329
    :cond_8
    const-string p0, "start"

    invoke-static {p3, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_3

    .line 330
    :cond_9
    const-string p0, "pause"

    invoke-static {p3, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    :goto_3
    const/4 p0, 0x1

    return p0

    :cond_a
    return v0
.end method
