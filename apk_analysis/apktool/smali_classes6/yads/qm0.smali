.class public final Lyads/qm0;
.super Lyads/sm0;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final f:I

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:Z


# direct methods
.method public constructor <init>(ILyads/f06;ILyads/mm0;ILjava/lang/String;)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Lyads/sm0;-><init>(ILyads/f06;I)V

    const/4 p1, 0x0

    invoke-static {p5, p1}, Lyads/um0;->a(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lyads/qm0;->g:Z

    iget-object p2, p0, Lyads/sm0;->e:Lyads/vz2;

    iget p2, p2, Lyads/vz2;->e:I

    iget p3, p4, Lyads/o06;->v:I

    not-int p3, p3

    and-int/2addr p2, p3

    and-int/lit8 p3, p2, 0x1

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    move p3, p1

    :goto_0
    iput-boolean p3, p0, Lyads/qm0;->h:Z

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    move p2, v0

    goto :goto_1

    :cond_1
    move p2, p1

    :goto_1
    iput-boolean p2, p0, Lyads/qm0;->i:Z

    iget-object p2, p4, Lyads/o06;->t:Lyads/k55;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, ""

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lyads/oe3;->a([Ljava/lang/Object;)Lyads/k55;

    move-result-object p2

    goto :goto_2

    :cond_2
    iget-object p2, p4, Lyads/o06;->t:Lyads/k55;

    :goto_2
    move p3, p1

    :goto_3
    invoke-virtual {p2}, Lyads/k55;->size()I

    move-result v1

    if-ge p3, v1, :cond_4

    iget-object v1, p0, Lyads/sm0;->e:Lyads/vz2;

    invoke-virtual {p2, p3}, Lyads/k55;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-boolean v3, p4, Lyads/o06;->w:Z

    invoke-static {v1, v2, v3}, Lyads/um0;->a(Lyads/vz2;Ljava/lang/String;Z)I

    move-result v1

    if-lez v1, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_4
    const p3, 0x7fffffff

    move v1, p1

    :goto_4
    iput p3, p0, Lyads/qm0;->j:I

    iput v1, p0, Lyads/qm0;->k:I

    iget-object p2, p0, Lyads/sm0;->e:Lyads/vz2;

    iget p2, p2, Lyads/vz2;->f:I

    iget p3, p4, Lyads/o06;->u:I

    invoke-static {p2, p3}, Lyads/um0;->a(II)I

    move-result p2

    iput p2, p0, Lyads/qm0;->l:I

    iget-object p3, p0, Lyads/sm0;->e:Lyads/vz2;

    iget p3, p3, Lyads/vz2;->f:I

    and-int/lit16 p3, p3, 0x440

    if-eqz p3, :cond_5

    move p3, v0

    goto :goto_5

    :cond_5
    move p3, p1

    :goto_5
    iput-boolean p3, p0, Lyads/qm0;->n:Z

    invoke-static {p6}, Lyads/um0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_6

    move p3, v0

    goto :goto_6

    :cond_6
    move p3, p1

    :goto_6
    iget-object v2, p0, Lyads/sm0;->e:Lyads/vz2;

    invoke-static {v2, p6, p3}, Lyads/um0;->a(Lyads/vz2;Ljava/lang/String;Z)I

    move-result p3

    iput p3, p0, Lyads/qm0;->m:I

    if-gtz v1, :cond_9

    iget-object p6, p4, Lyads/o06;->t:Lyads/k55;

    invoke-virtual {p6}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p6

    if-eqz p6, :cond_7

    if-gtz p2, :cond_9

    :cond_7
    iget-boolean p2, p0, Lyads/qm0;->h:Z

    if-nez p2, :cond_9

    iget-boolean p2, p0, Lyads/qm0;->i:Z

    if-eqz p2, :cond_8

    if-lez p3, :cond_8

    goto :goto_7

    :cond_8
    move p2, p1

    goto :goto_8

    :cond_9
    :goto_7
    move p2, v0

    :goto_8
    iget-boolean p3, p4, Lyads/mm0;->M:Z

    invoke-static {p5, p3}, Lyads/um0;->a(IZ)Z

    move-result p3

    if-eqz p3, :cond_a

    if-eqz p2, :cond_a

    move p1, v0

    :cond_a
    iput p1, p0, Lyads/qm0;->f:I

    return-void
.end method

.method public static a(Ljava/util/List;Ljava/util/List;)I
    .locals 1

    const/4 v0, 0x0

    .line 118
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/qm0;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/qm0;

    invoke-virtual {p0, p1}, Lyads/qm0;->a(Lyads/qm0;)I

    move-result p0

    return p0
.end method

.method public static a(Lyads/mm0;Ljava/lang/String;ILyads/f06;[I)Lyads/k55;
    .locals 9

    .line 106
    sget-object v0, Lyads/oe3;->c:Lyads/le3;

    .line 107
    const-string v0, "initialCapacity"

    const/4 v1, 0x4

    invoke-static {v1, v0}, Lyads/h20;->a(ILjava/lang/String;)I

    .line 108
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    move v4, v1

    move v8, v4

    .line 109
    :goto_0
    iget v1, p3, Lyads/f06;->b:I

    if-ge v4, v1, :cond_1

    .line 110
    new-instance v1, Lyads/qm0;

    aget v6, p4, v4

    move-object v5, p0

    move-object v7, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v1 .. v7}, Lyads/qm0;-><init>(ILyads/f06;ILyads/mm0;ILjava/lang/String;)V

    add-int/lit8 p0, v8, 0x1

    .line 111
    array-length p1, v0

    if-ge p1, p0, :cond_0

    .line 112
    array-length p1, v0

    .line 113
    invoke-static {p1, p0}, Lyads/he3;->a(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    .line 114
    :cond_0
    aput-object v1, v0, v8

    add-int/lit8 v4, v4, 0x1

    move v8, p0

    move p2, v2

    move-object p3, v3

    move-object p0, v5

    move-object p1, v7

    goto :goto_0

    .line 115
    :cond_1
    invoke-static {v8, v0}, Lyads/oe3;->b(I[Ljava/lang/Object;)Lyads/k55;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 116
    iget p0, p0, Lyads/qm0;->f:I

    return p0
.end method

.method public final a(Lyads/qm0;)I
    .locals 6

    iget-boolean v0, p0, Lyads/qm0;->g:Z

    iget-boolean v1, p1, Lyads/qm0;->g:Z

    invoke-static {v0, v1}, Lyads/xu;->a(ZZ)I

    move-result v0

    invoke-static {v0}, Lyads/q40;->a(I)Lyads/s40;

    move-result-object v0

    iget v1, p0, Lyads/qm0;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lyads/qm0;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lyads/xm4;->b:Lyads/xm4;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lyads/m95;->b:Lyads/m95;

    invoke-virtual {v0, v1, v2, v4}, Lyads/s40;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lyads/s40;

    move-result-object v0

    iget v1, p0, Lyads/qm0;->k:I

    iget v2, p1, Lyads/qm0;->k:I

    invoke-virtual {v0, v1, v2}, Lyads/s40;->a(II)Lyads/s40;

    move-result-object v0

    iget v1, p0, Lyads/qm0;->l:I

    iget v2, p1, Lyads/qm0;->l:I

    invoke-virtual {v0, v1, v2}, Lyads/s40;->a(II)Lyads/s40;

    move-result-object v0

    iget-boolean v1, p0, Lyads/qm0;->h:Z

    iget-boolean v2, p1, Lyads/qm0;->h:Z

    invoke-virtual {v0, v1, v2}, Lyads/s40;->a(ZZ)Lyads/s40;

    move-result-object v0

    iget-boolean v1, p0, Lyads/qm0;->i:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p1, Lyads/qm0;->i:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget v5, p0, Lyads/qm0;->k:I

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lyads/s40;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lyads/s40;

    move-result-object v0

    iget v1, p0, Lyads/qm0;->m:I

    iget v2, p1, Lyads/qm0;->m:I

    invoke-virtual {v0, v1, v2}, Lyads/s40;->a(II)Lyads/s40;

    move-result-object v0

    iget v1, p0, Lyads/qm0;->l:I

    if-nez v1, :cond_1

    iget-boolean p0, p0, Lyads/qm0;->n:Z

    iget-boolean p1, p1, Lyads/qm0;->n:Z

    invoke-virtual {v0, p0, p1}, Lyads/s40;->b(ZZ)Lyads/s40;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Lyads/s40;->a()I

    move-result p0

    return p0
.end method

.method public final bridge synthetic a(Lyads/sm0;)Z
    .locals 0

    .line 117
    check-cast p1, Lyads/qm0;

    const/4 p0, 0x0

    return p0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lyads/qm0;

    invoke-virtual {p0, p1}, Lyads/qm0;->a(Lyads/qm0;)I

    move-result p0

    return p0
.end method
