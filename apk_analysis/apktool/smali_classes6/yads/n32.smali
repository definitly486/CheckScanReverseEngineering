.class public final Lyads/n32;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/List;

.field public final d:Z

.field public final e:Lcl4;

.field public final f:Lcl4;


# direct methods
.method public synthetic constructor <init>(JLjava/util/List;Ljava/util/List;I)V
    .locals 6

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 38
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    :cond_0
    move-object v4, p4

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    .line 39
    invoke-direct/range {v0 .. v5}, Lyads/n32;-><init>(JLjava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method public constructor <init>(JLjava/util/List;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lyads/n32;->a:J

    iput-object p3, p0, Lyads/n32;->b:Ljava/util/List;

    iput-object p4, p0, Lyads/n32;->c:Ljava/util/List;

    iput-boolean p5, p0, Lyads/n32;->d:Z

    new-instance p1, Lb80;

    const/4 p2, 0x7

    invoke-direct {p1, p0, p2}, Lb80;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Lyads/n32;->e:Lcl4;

    new-instance p1, Ljf;

    const/4 p2, 0x6

    invoke-direct {p1, p0, p2}, Ljf;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Lyads/n32;->f:Lcl4;

    return-void
.end method

.method public static final a(Lyads/n32;)Ljava/lang/String;
    .locals 7

    .line 89
    iget-object v0, p0, Lyads/n32;->c:Ljava/util/List;

    const/4 v5, 0x0

    const/16 v6, 0x3e

    const-string v1, "/"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lqn1;->a0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ILnl3;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lyads/n32;)Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lyads/n32;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    iget-wide v1, p0, Lyads/n32;->a:J

    if-nez v0, :cond_1

    iget-object p0, p0, Lyads/n32;->b:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb36;

    invoke-static {v0}, Lyads/o32;->a(Lb36;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lyads/o32;->b(Lb36;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v4, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v3}, Lnn1;->s(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    const/16 v9, 0x3e

    const-string v4, "/"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lqn1;->a0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ILnl3;I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    .line 90
    iget-object p0, p0, Lyads/n32;->c:Ljava/util/List;

    invoke-static {p0}, Lqn1;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lyads/n32;
    .locals 6

    .line 91
    new-instance v0, Lyads/n32;

    iget-wide v1, p0, Lyads/n32;->a:J

    iget-object v3, p0, Lyads/n32;->b:Ljava/util/List;

    .line 92
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lyads/n32;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    iget-object p0, p0, Lyads/n32;->c:Ljava/util/List;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 94
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v5, 0x8

    .line 95
    invoke-direct/range {v0 .. v5}, Lyads/n32;-><init>(JLjava/util/List;Ljava/util/List;I)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lyads/y22;Ljava/lang/String;)Lyads/n32;
    .locals 6

    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lyads/n32;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lyads/n32;->b:Ljava/util/List;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz p2, :cond_0

    iget-object v0, p2, Lyads/y22;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p3

    :cond_1
    new-instance v1, Lb36;

    invoke-direct {v1, p1, v0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_3

    iget-object p1, p2, Lyads/y22;->c:Lyads/br0;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lyads/br0;->a()Lyads/p41;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lyads/p41;->a()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move-object p3, p1

    goto :goto_1

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    iget-object p3, p2, Lyads/y22;->d:Ljava/lang/String;

    :cond_4
    :goto_1
    new-instance v0, Lyads/n32;

    iget-wide v1, p0, Lyads/n32;->a:J

    new-instance v4, Ljava/util/ArrayList;

    iget-object p1, p0, Lyads/n32;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p0, p0, Lyads/n32;->c:Ljava/util/List;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v5, 0x8

    invoke-direct/range {v0 .. v5}, Lyads/n32;-><init>(JLjava/util/List;Ljava/util/List;I)V

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 6

    .line 91
    iget-object v0, p0, Lyads/n32;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 92
    :cond_0
    new-instance v0, Lyads/n32;

    iget-wide v1, p0, Lyads/n32;->a:J

    iget-object v3, p0, Lyads/n32;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lyads/n32;->c:Ljava/util/List;

    const/16 v5, 0x8

    invoke-direct/range {v0 .. v5}, Lyads/n32;-><init>(JLjava/util/List;Ljava/util/List;I)V

    .line 93
    iget-object v0, v0, Lyads/n32;->f:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 94
    iget-object p0, p0, Lyads/n32;->b:Ljava/util/List;

    invoke-static {p0}, Lqn1;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb36;

    invoke-static {p0}, Lyads/o32;->a(Lb36;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "/"

    .line 95
    invoke-static {v0, v1, p0}, Lcg;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyads/n32;->f:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final d()Lyads/n32;
    .locals 7

    iget-object v0, p0, Lyads/n32;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lyads/n32;->b:Ljava/util/List;

    invoke-static {v0}, Lqn1;->v0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb36;

    iget-object v1, p0, Lyads/n32;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v5, v0, Lb36;->b:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v2, v5}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eq v1, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lyads/n32;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v5, 0x23

    invoke-static {v2, v5}, Lta8;->d0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v2

    iget-object v5, v0, Lb36;->b:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v3

    :cond_6
    :goto_2
    new-instance v1, Lyads/n32;

    move v0, v3

    iget-wide v2, p0, Lyads/n32;->a:J

    iget-object p0, p0, Lyads/n32;->c:Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    const/4 v5, 0x0

    invoke-interface {p0, v5, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    const/16 v6, 0x8

    invoke-direct/range {v1 .. v6}, Lyads/n32;-><init>(JLjava/util/List;Ljava/util/List;I)V

    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyads/n32;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/n32;

    iget-wide v3, p0, Lyads/n32;->a:J

    iget-wide v5, p1, Lyads/n32;->a:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lyads/n32;->b:Ljava/util/List;

    iget-object v3, p1, Lyads/n32;->b:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lyads/n32;->c:Ljava/util/List;

    iget-object v3, p1, Lyads/n32;->c:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean p0, p0, Lyads/n32;->d:Z

    iget-boolean p1, p1, Lyads/n32;->d:Z

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-wide v0, p0, Lyads/n32;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lyads/n32;->b:Ljava/util/List;

    invoke-static {v2, v0, v1}, Le2;->b(Ljava/util/List;II)I

    move-result v0

    iget-object v2, p0, Lyads/n32;->c:Ljava/util/List;

    invoke-static {v2, v0, v1}, Le2;->b(Ljava/util/List;II)I

    move-result v0

    iget-boolean p0, p0, Lyads/n32;->d:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyads/n32;->e:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
