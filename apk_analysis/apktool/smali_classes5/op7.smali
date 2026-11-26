.class public final Lop7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmp7;
.implements Lay0;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lsp7;

.field public final c:I

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/HashSet;

.field public final f:[Ljava/lang/String;

.field public final g:[Lmp7;

.field public final h:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field public final i:[Z

.field public final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final k:[Lmp7;

.field public final l:Lfh8;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lsp7;ILjava/util/List;Lal1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lsp7;",
            "I",
            "Ljava/util/List<",
            "+",
            "Lmp7;",
            ">;",
            "Lal1;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lop7;->a:Ljava/lang/String;

    iput-object p2, p0, Lop7;->b:Lsp7;

    iput p3, p0, Lop7;->c:I

    iget-object p1, p5, Lal1;->b:Ljava/util/List;

    iput-object p1, p0, Lop7;->d:Ljava/util/List;

    iget-object p1, p5, Lal1;->c:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/HashSet;

    const/16 p3, 0xc

    invoke-static {p1, p3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-static {p3}, Lm05;->b(I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/HashSet;-><init>(I)V

    invoke-static {p1, p2}, Lqn1;->q0(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    iput-object p2, p0, Lop7;->e:Ljava/util/HashSet;

    const/4 p2, 0x0

    new-array p3, p2, [Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lop7;->f:[Ljava/lang/String;

    iget-object p3, p5, Lal1;->e:Ljava/util/ArrayList;

    invoke-static {p3}, Lm96;->d(Ljava/util/List;)[Lmp7;

    move-result-object p3

    iput-object p3, p0, Lop7;->g:[Lmp7;

    iget-object p3, p5, Lal1;->f:Ljava/util/ArrayList;

    new-array p2, p2, [Ljava/util/List;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/util/List;

    iput-object p2, p0, Lop7;->h:[Ljava/util/List;

    iget-object p2, p5, Lal1;->g:Ljava/util/ArrayList;

    invoke-static {p2}, Lqn1;->p0(Ljava/util/List;)[Z

    move-result-object p2

    iput-object p2, p0, Lop7;->i:[Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lk44;

    new-instance p3, Lze;

    const/4 p5, 0x1

    invoke-direct {p3, p1, p5}, Lze;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p2, p3}, Lk44;-><init>(Lll3;)V

    new-instance p1, Ljava/util/ArrayList;

    const/16 p3, 0xa

    invoke-static {p2, p3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p2}, Lk44;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    move-object p3, p2

    check-cast p3, Ll44;

    iget-object p5, p3, Ll44;->b:Ljava/util/Iterator;

    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-virtual {p3}, Ll44;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lj44;

    iget-object p5, p3, Lj44;->b:Ljava/lang/Object;

    iget p3, p3, Lj44;->a:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-instance v0, Lb36;

    invoke-direct {v0, p5, p3}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ln05;->k(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lop7;->j:Ljava/util/Map;

    invoke-static {p4}, Lm96;->d(Ljava/util/List;)[Lmp7;

    move-result-object p1

    iput-object p1, p0, Lop7;->k:[Lmp7;

    new-instance p1, Lcw3;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lcw3;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Lop7;->l:Lfh8;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lop7;->e:Ljava/util/HashSet;

    return-object p0
.end method

.method public final c(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lop7;->j:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x3

    return p0
.end method

.method public final d(I)Lmp7;
    .locals 0

    iget-object p0, p0, Lop7;->g:[Lmp7;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Lop7;->c:I

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    if-ne p0, p1, :cond_0

    goto :goto_2

    :cond_0
    instance-of v0, p1, Lop7;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p1

    check-cast v0, Lmp7;

    invoke-interface {v0}, Lmp7;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lop7;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    check-cast p1, Lop7;

    iget-object v2, p0, Lop7;->k:[Lmp7;

    iget-object p1, p1, Lop7;->k:[Lmp7;

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Lmp7;->e()I

    move-result p1

    iget v2, p0, Lop7;->c:I

    if-eq v2, p1, :cond_4

    goto :goto_1

    :cond_4
    move p1, v1

    :goto_0
    if-ge p1, v2, :cond_7

    iget-object v3, p0, Lop7;->g:[Lmp7;

    aget-object v4, v3, p1

    invoke-interface {v4}, Lmp7;->h()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, p1}, Lmp7;->d(I)Lmp7;

    move-result-object v5

    invoke-interface {v5}, Lmp7;->h()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    aget-object v3, v3, p1

    invoke-interface {v3}, Lmp7;->getKind()Lsp7;

    move-result-object v3

    invoke-interface {v0, p1}, Lmp7;->d(I)Lmp7;

    move-result-object v4

    invoke-interface {v4}, Lmp7;->getKind()Lsp7;

    move-result-object v4

    invoke-static {v3, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :goto_1
    return v1

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_7
    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method public final f(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lop7;->f:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final g(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lop7;->h:[Ljava/util/List;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final getAnnotations()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lop7;->d:Ljava/util/List;

    return-object p0
.end method

.method public final getKind()Lsp7;
    .locals 0

    iget-object p0, p0, Lop7;->b:Lsp7;

    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lop7;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lop7;->l:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final i(I)Z
    .locals 0

    iget-object p0, p0, Lop7;->i:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lx97;->b(Lmp7;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
