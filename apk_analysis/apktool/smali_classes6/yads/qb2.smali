.class public final Lyads/qb2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/k11;

.field public final b:Lyads/k11;

.field public final c:Lyads/as2;

.field public final d:Lyads/as2;

.field public final e:Lyads/br0;

.field public final f:Lyads/as2;

.field public final g:Ljava/lang/String;

.field public final h:Lyads/fc2;

.field public final i:Lyads/nv1;

.field public final j:Lyads/as2;

.field public final k:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lyads/k11;Lyads/k11;Lyads/as2;Lyads/as2;Lyads/br0;Lyads/as2;Ljava/lang/String;Lyads/fc2;Lyads/nv1;Lyads/as2;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/qb2;->a:Lyads/k11;

    iput-object p2, p0, Lyads/qb2;->b:Lyads/k11;

    iput-object p3, p0, Lyads/qb2;->c:Lyads/as2;

    iput-object p4, p0, Lyads/qb2;->d:Lyads/as2;

    iput-object p5, p0, Lyads/qb2;->e:Lyads/br0;

    iput-object p6, p0, Lyads/qb2;->f:Lyads/as2;

    iput-object p7, p0, Lyads/qb2;->g:Ljava/lang/String;

    iput-object p8, p0, Lyads/qb2;->h:Lyads/fc2;

    iput-object p9, p0, Lyads/qb2;->i:Lyads/nv1;

    iput-object p10, p0, Lyads/qb2;->j:Lyads/as2;

    iput-object p11, p0, Lyads/qb2;->k:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lyads/qb2;Lyads/fs2;Lyads/fs2;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lyads/qb2;->a:Lyads/k11;

    iget-object v2, p1, Lyads/qb2;->a:Lyads/k11;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2, p2, p3}, Lyads/k11;->a(Lyads/k11;Lyads/fs2;Lyads/fs2;)Z

    move-result v1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    if-eqz v1, :cond_18

    iget-object v1, p0, Lyads/qb2;->b:Lyads/k11;

    iget-object v2, p1, Lyads/qb2;->b:Lyads/k11;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v2, p2, p3}, Lyads/k11;->a(Lyads/k11;Lyads/fs2;Lyads/fs2;)Z

    move-result v1

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    move v1, v3

    goto :goto_1

    :cond_4
    move v1, v0

    :goto_1
    if-eqz v1, :cond_18

    iget-object v1, p0, Lyads/qb2;->c:Lyads/as2;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_2

    :cond_5
    move-object v1, v2

    :goto_2
    iget-object v4, p1, Lyads/qb2;->c:Lyads/as2;

    if-eqz v4, :cond_6

    invoke-virtual {v4, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_3

    :cond_6
    move-object v4, v2

    :goto_3
    invoke-static {v1, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lyads/qb2;->d:Lyads/as2;

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v4, p1, Lyads/qb2;->d:Lyads/as2;

    invoke-virtual {v4, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-ne v1, v4, :cond_18

    iget-object v1, p0, Lyads/qb2;->e:Lyads/br0;

    iget-object v4, p1, Lyads/qb2;->e:Lyads/br0;

    invoke-virtual {v1, v4, p2, p3}, Lyads/br0;->a(Lyads/br0;Lyads/fs2;Lyads/fs2;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lyads/qb2;->f:Lyads/as2;

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    iget-object v1, p1, Lyads/qb2;->f:Lyads/as2;

    invoke-virtual {v1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_18

    iget-object v1, p0, Lyads/qb2;->g:Ljava/lang/String;

    iget-object v4, p1, Lyads/qb2;->g:Ljava/lang/String;

    invoke-static {v1, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lyads/qb2;->h:Lyads/fc2;

    iget-object v4, p1, Lyads/qb2;->h:Lyads/fc2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v4, :cond_7

    goto/16 :goto_b

    :cond_7
    instance-of v5, v1, Lyads/ec2;

    if-eqz v5, :cond_b

    check-cast v1, Lyads/ec2;

    instance-of v1, v4, Lyads/ec2;

    if-eqz v1, :cond_8

    check-cast v4, Lyads/ec2;

    iget-object v1, v4, Lyads/ec2;->a:Lyads/oc2;

    goto :goto_4

    :cond_8
    instance-of v1, v4, Lyads/dc2;

    if-eqz v1, :cond_a

    check-cast v4, Lyads/dc2;

    iget-object v1, v4, Lyads/dc2;->a:Lyads/jc2;

    :goto_4
    instance-of v4, v1, Lyads/oc2;

    if-eqz v4, :cond_9

    check-cast v1, Lyads/oc2;

    goto :goto_5

    :cond_9
    move-object v1, v2

    :goto_5
    if-eqz v1, :cond_18

    goto :goto_8

    :cond_a
    invoke-static {}, Lme0;->e()V

    return v0

    :cond_b
    instance-of v5, v1, Lyads/dc2;

    if-eqz v5, :cond_17

    check-cast v1, Lyads/dc2;

    instance-of v1, v4, Lyads/ec2;

    if-eqz v1, :cond_c

    check-cast v4, Lyads/ec2;

    iget-object v1, v4, Lyads/ec2;->a:Lyads/oc2;

    goto :goto_6

    :cond_c
    instance-of v1, v4, Lyads/dc2;

    if-eqz v1, :cond_16

    check-cast v4, Lyads/dc2;

    iget-object v1, v4, Lyads/dc2;->a:Lyads/jc2;

    :goto_6
    instance-of v4, v1, Lyads/jc2;

    if-eqz v4, :cond_d

    check-cast v1, Lyads/jc2;

    goto :goto_7

    :cond_d
    move-object v1, v2

    :goto_7
    if-eqz v1, :cond_18

    :goto_8
    iget-object v1, p0, Lyads/qb2;->i:Lyads/nv1;

    iget-object v4, p1, Lyads/qb2;->i:Lyads/nv1;

    if-eqz v1, :cond_e

    invoke-virtual {v1, v4, p2, p3}, Lyads/nv1;->a(Lyads/nv1;Lyads/fs2;Lyads/fs2;)Z

    move-result v1

    goto :goto_9

    :cond_e
    if-nez v4, :cond_f

    move v1, v3

    goto :goto_9

    :cond_f
    move v1, v0

    :goto_9
    if-eqz v1, :cond_18

    iget-object v1, p0, Lyads/qb2;->j:Lyads/as2;

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p1, Lyads/qb2;->j:Lyads/as2;

    invoke-virtual {v4, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v4

    if-ne v1, v4, :cond_18

    iget-object p0, p0, Lyads/qb2;->k:Ljava/util/List;

    iget-object p1, p1, Lyads/qb2;->k:Ljava/util/List;

    if-eqz p0, :cond_14

    if-nez p1, :cond_10

    return v0

    :cond_10
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-eq v1, v4, :cond_11

    goto :goto_b

    :cond_11
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v1, v0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    if-ltz v1, :cond_13

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/xr0;

    check-cast v4, Lyads/xr0;

    invoke-virtual {v4, v1, p2, p3}, Lyads/xr0;->a(Lyads/xr0;Lyads/fs2;Lyads/fs2;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_b

    :cond_12
    move v1, v5

    goto :goto_a

    :cond_13
    invoke-static {}, Lu96;->o()V

    throw v2

    :cond_14
    if-nez p1, :cond_18

    :cond_15
    return v3

    :cond_16
    invoke-static {}, Lme0;->e()V

    return v0

    :cond_17
    invoke-static {}, Lme0;->e()V

    :cond_18
    :goto_b
    return v0
.end method
