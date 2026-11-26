.class public final Lyads/a14;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:[Lyads/mc5;

.field public d:Z

.field public e:Z

.field public f:Lyads/c14;

.field public g:Z

.field public final h:[Z

.field public final i:[Lyads/gs;

.field public final j:Lyads/p06;

.field public final k:Lyads/q14;

.field public l:Lyads/a14;

.field public m:Lyads/g06;

.field public n:Lyads/q06;

.field public o:J


# direct methods
.method public constructor <init>([Lyads/gs;JLyads/p06;Lyads/aj0;Lyads/q14;Lyads/c14;Lyads/q06;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/a14;->i:[Lyads/gs;

    iput-wide p2, p0, Lyads/a14;->o:J

    iput-object p4, p0, Lyads/a14;->j:Lyads/p06;

    iput-object p6, p0, Lyads/a14;->k:Lyads/q14;

    iget-object p2, p7, Lyads/c14;->a:Lyads/h14;

    iget-object p3, p2, Lyads/b14;->a:Ljava/lang/Object;

    iput-object p3, p0, Lyads/a14;->b:Ljava/lang/Object;

    iput-object p7, p0, Lyads/a14;->f:Lyads/c14;

    sget-object p3, Lyads/g06;->e:Lyads/g06;

    iput-object p3, p0, Lyads/a14;->m:Lyads/g06;

    iput-object p8, p0, Lyads/a14;->n:Lyads/q06;

    array-length p3, p1

    new-array p3, p3, [Lyads/mc5;

    iput-object p3, p0, Lyads/a14;->c:[Lyads/mc5;

    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lyads/a14;->h:[Z

    iget-wide p3, p7, Lyads/c14;->b:J

    iget-wide v5, p7, Lyads/c14;->d:J

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p2, Lyads/b14;->a:Ljava/lang/Object;

    invoke-static {p1}, Lyads/f;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p7, p2, Lyads/b14;->a:Ljava/lang/Object;

    invoke-static {p7}, Lyads/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    invoke-virtual {p2, p7}, Lyads/h14;->a(Ljava/lang/Object;)Lyads/h14;

    move-result-object p2

    iget-object p7, p6, Lyads/q14;->d:Ljava/util/HashMap;

    invoke-virtual {p7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/p14;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p7, p6, Lyads/q14;->i:Ljava/util/HashSet;

    invoke-virtual {p7, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p7, p6, Lyads/q14;->h:Ljava/util/HashMap;

    invoke-virtual {p7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lyads/o14;

    if-eqz p7, :cond_0

    iget-object p8, p7, Lyads/o14;->a:Lyads/cs;

    iget-object p7, p7, Lyads/o14;->b:Lyads/i14;

    invoke-virtual {p8, p7}, Lyads/cs;->b(Lyads/i14;)V

    :cond_0
    iget-object p7, p1, Lyads/p14;->c:Ljava/util/ArrayList;

    invoke-virtual {p7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p7, p1, Lyads/p14;->a:Lyads/hx3;

    invoke-virtual {p7, p2, p5, p3, p4}, Lyads/hx3;->b(Lyads/h14;Lyads/aj0;J)Lyads/ex3;

    move-result-object v1

    iget-object p2, p6, Lyads/q14;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {p2, v1, p1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p6, Lyads/q14;->i:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/p14;

    iget-object p3, p2, Lyads/p14;->c:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p6, Lyads/q14;->h:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/o14;

    if-eqz p2, :cond_2

    iget-object p3, p2, Lyads/o14;->a:Lyads/cs;

    iget-object p2, p2, Lyads/o14;->b:Lyads/i14;

    invoke-virtual {p3, p2}, Lyads/cs;->a(Lyads/i14;)V

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v5, p1

    if-eqz p1, :cond_4

    new-instance v0, Lyads/t00;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    invoke-direct/range {v0 .. v6}, Lyads/t00;-><init>(Lyads/z04;ZJJ)V

    move-object v1, v0

    :cond_4
    iput-object v1, p0, Lyads/a14;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lyads/q06;JZ[Z)J
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, v1, Lyads/q06;->a:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_2

    iget-object v4, v0, Lyads/a14;->h:[Z

    if-nez p4, :cond_1

    iget-object v6, v0, Lyads/a14;->n:Lyads/q06;

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    iget-object v7, v1, Lyads/q06;->b:[Lyads/n65;

    aget-object v7, v7, v3

    iget-object v8, v6, Lyads/q06;->b:[Lyads/n65;

    aget-object v8, v8, v3

    invoke-static {v7, v8}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v1, Lyads/q06;->c:[Lyads/er2;

    aget-object v7, v7, v3

    iget-object v6, v6, Lyads/q06;->c:[Lyads/er2;

    aget-object v6, v6, v3

    invoke-static {v7, v6}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    move v5, v2

    :goto_2
    aput-boolean v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, v0, Lyads/a14;->c:[Lyads/mc5;

    move v4, v2

    :goto_3
    iget-object v6, v0, Lyads/a14;->i:[Lyads/gs;

    array-length v7, v6

    const/4 v8, -0x2

    if-ge v4, v7, :cond_4

    aget-object v6, v6, v4

    iget v6, v6, Lyads/gs;->b:I

    if-ne v6, v8, :cond_3

    const/4 v6, 0x0

    aput-object v6, v3, v4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Lyads/a14;->a()V

    iput-object v1, v0, Lyads/a14;->n:Lyads/q06;

    iget-object v3, v0, Lyads/a14;->l:Lyads/a14;

    if-nez v3, :cond_6

    move v3, v2

    :goto_4
    iget-object v4, v0, Lyads/a14;->n:Lyads/q06;

    iget v6, v4, Lyads/q06;->a:I

    if-ge v3, v6, :cond_6

    invoke-virtual {v4, v3}, Lyads/q06;->a(I)Z

    move-result v4

    iget-object v6, v0, Lyads/a14;->n:Lyads/q06;

    iget-object v6, v6, Lyads/q06;->c:[Lyads/er2;

    aget-object v6, v6, v3

    if-eqz v4, :cond_5

    if-eqz v6, :cond_5

    invoke-interface {v6}, Lyads/er2;->a()V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    iget-object v9, v0, Lyads/a14;->a:Ljava/lang/Object;

    iget-object v10, v1, Lyads/q06;->c:[Lyads/er2;

    iget-object v11, v0, Lyads/a14;->h:[Z

    iget-object v12, v0, Lyads/a14;->c:[Lyads/mc5;

    move-wide/from16 v14, p2

    move-object/from16 v13, p5

    invoke-interface/range {v9 .. v15}, Lyads/z04;->a([Lyads/er2;[Z[Lyads/mc5;[ZJ)J

    move-result-wide v3

    iget-object v6, v0, Lyads/a14;->c:[Lyads/mc5;

    move v7, v2

    :goto_5
    iget-object v9, v0, Lyads/a14;->i:[Lyads/gs;

    array-length v10, v9

    if-ge v7, v10, :cond_8

    aget-object v9, v9, v7

    iget v9, v9, Lyads/gs;->b:I

    if-ne v9, v8, :cond_7

    iget-object v9, v0, Lyads/a14;->n:Lyads/q06;

    invoke-virtual {v9, v7}, Lyads/q06;->a(I)Z

    move-result v9

    if-eqz v9, :cond_7

    new-instance v9, Lyads/cn2;

    invoke-direct {v9}, Lyads/cn2;-><init>()V

    aput-object v9, v6, v7

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_8
    iput-boolean v2, v0, Lyads/a14;->e:Z

    :goto_6
    iget-object v6, v0, Lyads/a14;->c:[Lyads/mc5;

    array-length v7, v6

    if-ge v2, v7, :cond_d

    aget-object v6, v6, v2

    const-wide/16 v9, 0x0

    if-eqz v6, :cond_a

    invoke-virtual {v1, v2}, Lyads/q06;->a(I)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, v0, Lyads/a14;->i:[Lyads/gs;

    aget-object v6, v6, v2

    iget v6, v6, Lyads/gs;->b:I

    if-eq v6, v8, :cond_b

    iput-boolean v5, v0, Lyads/a14;->e:Z

    goto :goto_7

    :cond_9
    invoke-static {}, Lud;->g()V

    return-wide v9

    :cond_a
    iget-object v6, v1, Lyads/q06;->c:[Lyads/er2;

    aget-object v6, v6, v2

    if-nez v6, :cond_c

    :cond_b
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_c
    invoke-static {}, Lud;->g()V

    return-wide v9

    :cond_d
    return-wide v3
.end method

.method public final a()V
    .locals 3

    .line 208
    iget-object v0, p0, Lyads/a14;->l:Lyads/a14;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 209
    :goto_0
    iget-object v1, p0, Lyads/a14;->n:Lyads/q06;

    iget v2, v1, Lyads/q06;->a:I

    if-ge v0, v2, :cond_1

    .line 210
    invoke-virtual {v1, v0}, Lyads/q06;->a(I)Z

    move-result v1

    .line 211
    iget-object v2, p0, Lyads/a14;->n:Lyads/q06;

    iget-object v2, v2, Lyads/q06;->c:[Lyads/er2;

    aget-object v2, v2, v0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 212
    invoke-interface {v2}, Lyads/er2;->b()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 4

    invoke-virtual {p0}, Lyads/a14;->a()V

    iget-object v0, p0, Lyads/a14;->k:Lyads/q14;

    iget-object p0, p0, Lyads/a14;->a:Ljava/lang/Object;

    :try_start_0
    instance-of v1, p0, Lyads/t00;

    if-eqz v1, :cond_3

    check-cast p0, Lyads/t00;

    iget-object p0, p0, Lyads/t00;->b:Lyads/z04;

    iget-object v1, v0, Lyads/q14;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p0}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/p14;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lyads/p14;->a:Lyads/hx3;

    invoke-virtual {v2, p0}, Lyads/hx3;->a(Lyads/z04;)V

    iget-object v2, v1, Lyads/p14;->c:Ljava/util/ArrayList;

    check-cast p0, Lyads/ex3;

    iget-object p0, p0, Lyads/ex3;->b:Lyads/h14;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, v0, Lyads/q14;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {p0}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    iget-object p0, v0, Lyads/q14;->i:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/p14;

    iget-object v3, v2, Lyads/p14;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lyads/q14;->h:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/o14;

    if-eqz v2, :cond_1

    iget-object v3, v2, Lyads/o14;->a:Lyads/cs;

    iget-object v2, v2, Lyads/o14;->b:Lyads/i14;

    invoke-virtual {v3, v2}, Lyads/cs;->a(Lyads/i14;)V

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    iget-boolean p0, v1, Lyads/p14;->e:Z

    if-eqz p0, :cond_7

    iget-object p0, v1, Lyads/p14;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_7

    iget-object p0, v0, Lyads/q14;->h:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/o14;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lyads/o14;->a:Lyads/cs;

    iget-object v3, p0, Lyads/o14;->b:Lyads/i14;

    invoke-virtual {v2, v3}, Lyads/cs;->c(Lyads/i14;)V

    iget-object v2, p0, Lyads/o14;->a:Lyads/cs;

    iget-object v3, p0, Lyads/o14;->c:Lyads/n14;

    invoke-virtual {v2, v3}, Lyads/cs;->a(Lyads/l14;)V

    iget-object v2, p0, Lyads/o14;->a:Lyads/cs;

    iget-object p0, p0, Lyads/o14;->c:Lyads/n14;

    invoke-virtual {v2, p0}, Lyads/cs;->a(Lyads/ul2;)V

    iget-object p0, v0, Lyads/q14;->i:Ljava/util/HashSet;

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_3
    iget-object v1, v0, Lyads/q14;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p0}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/p14;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lyads/p14;->a:Lyads/hx3;

    invoke-virtual {v2, p0}, Lyads/hx3;->a(Lyads/z04;)V

    iget-object v2, v1, Lyads/p14;->c:Ljava/util/ArrayList;

    check-cast p0, Lyads/ex3;

    iget-object p0, p0, Lyads/ex3;->b:Lyads/h14;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, v0, Lyads/q14;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {p0}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_6

    iget-object p0, v0, Lyads/q14;->i:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/p14;

    iget-object v3, v2, Lyads/p14;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v0, Lyads/q14;->h:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/o14;

    if-eqz v2, :cond_5

    iget-object v3, v2, Lyads/o14;->a:Lyads/cs;

    iget-object v2, v2, Lyads/o14;->b:Lyads/i14;

    invoke-virtual {v3, v2}, Lyads/cs;->a(Lyads/i14;)V

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_6
    iget-boolean p0, v1, Lyads/p14;->e:Z

    if-eqz p0, :cond_7

    iget-object p0, v1, Lyads/p14;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_7

    iget-object p0, v0, Lyads/q14;->h:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/o14;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lyads/o14;->a:Lyads/cs;

    iget-object v3, p0, Lyads/o14;->b:Lyads/i14;

    invoke-virtual {v2, v3}, Lyads/cs;->c(Lyads/i14;)V

    iget-object v2, p0, Lyads/o14;->a:Lyads/cs;

    iget-object v3, p0, Lyads/o14;->c:Lyads/n14;

    invoke-virtual {v2, v3}, Lyads/cs;->a(Lyads/l14;)V

    iget-object v2, p0, Lyads/o14;->a:Lyads/cs;

    iget-object p0, p0, Lyads/o14;->c:Lyads/n14;

    invoke-virtual {v2, p0}, Lyads/cs;->a(Lyads/ul2;)V

    iget-object p0, v0, Lyads/q14;->i:Ljava/util/HashSet;

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    return-void

    :catch_0
    move-exception p0

    const-string v0, "Period release failed."

    invoke-static {v0, p0}, Lyads/sv3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "MediaPeriodHolder"

    invoke-static {v0, p0}, Lyads/sv3;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
