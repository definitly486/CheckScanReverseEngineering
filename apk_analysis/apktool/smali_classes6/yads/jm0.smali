.class public final Lyads/jm0;
.super Lyads/sm0;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final f:I

.field public final g:Z

.field public final h:Ljava/lang/String;

.field public final i:Lyads/mm0;

.field public final j:Z

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:Z

.field public final o:I

.field public final p:I

.field public final q:Z

.field public final r:I

.field public final s:I

.field public final t:I

.field public final u:I

.field public final v:Z

.field public final w:Z


# direct methods
.method public constructor <init>(ILyads/f06;ILyads/mm0;IZLyads/xx4;)V
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Lyads/sm0;-><init>(ILyads/f06;I)V

    iput-object p4, p0, Lyads/jm0;->i:Lyads/mm0;

    iget-object p1, p0, Lyads/sm0;->e:Lyads/vz2;

    iget-object p1, p1, Lyads/vz2;->d:Ljava/lang/String;

    invoke-static {p1}, Lyads/um0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lyads/jm0;->h:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-static {p5, p1}, Lyads/um0;->a(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lyads/jm0;->j:Z

    move p2, p1

    :goto_0
    iget-object p3, p4, Lyads/o06;->o:Lyads/k55;

    invoke-virtual {p3}, Lyads/k55;->size()I

    move-result p3

    const v0, 0x7fffffff

    if-ge p2, p3, :cond_1

    iget-object p3, p0, Lyads/sm0;->e:Lyads/vz2;

    iget-object v1, p4, Lyads/o06;->o:Lyads/k55;

    invoke-virtual {v1, p2}, Lyads/k55;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p3, v1, p1}, Lyads/um0;->a(Lyads/vz2;Ljava/lang/String;Z)I

    move-result p3

    if-lez p3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    move p3, p1

    move p2, v0

    :goto_1
    iput p2, p0, Lyads/jm0;->l:I

    iput p3, p0, Lyads/jm0;->k:I

    iget-object p2, p0, Lyads/sm0;->e:Lyads/vz2;

    iget p2, p2, Lyads/vz2;->f:I

    iget p3, p4, Lyads/o06;->p:I

    invoke-static {p2, p3}, Lyads/um0;->a(II)I

    move-result p2

    iput p2, p0, Lyads/jm0;->m:I

    iget-object p2, p0, Lyads/sm0;->e:Lyads/vz2;

    iget p3, p2, Lyads/vz2;->f:I

    const/4 v1, 0x1

    if-eqz p3, :cond_3

    and-int/2addr p3, v1

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    move p3, p1

    goto :goto_3

    :cond_3
    :goto_2
    move p3, v1

    :goto_3
    iput-boolean p3, p0, Lyads/jm0;->n:Z

    iget p3, p2, Lyads/vz2;->e:I

    and-int/2addr p3, v1

    if-eqz p3, :cond_4

    move p3, v1

    goto :goto_4

    :cond_4
    move p3, p1

    :goto_4
    iput-boolean p3, p0, Lyads/jm0;->q:Z

    iget p3, p2, Lyads/vz2;->z:I

    iput p3, p0, Lyads/jm0;->r:I

    iget v2, p2, Lyads/vz2;->A:I

    iput v2, p0, Lyads/jm0;->s:I

    iget v2, p2, Lyads/vz2;->i:I

    iput v2, p0, Lyads/jm0;->t:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    iget v4, p4, Lyads/o06;->r:I

    if-gt v2, v4, :cond_7

    :cond_5
    if-eq p3, v3, :cond_6

    iget v2, p4, Lyads/o06;->q:I

    if-gt p3, v2, :cond_7

    :cond_6
    invoke-interface {p7, p2}, Lyads/xx4;->apply(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    move p2, v1

    goto :goto_5

    :cond_7
    move p2, p1

    :goto_5
    iput-boolean p2, p0, Lyads/jm0;->g:Z

    invoke-static {}, Lyads/u56;->a()[Ljava/lang/String;

    move-result-object p2

    move p3, p1

    :goto_6
    array-length p7, p2

    if-ge p3, p7, :cond_9

    iget-object p7, p0, Lyads/sm0;->e:Lyads/vz2;

    aget-object v2, p2, p3

    invoke-static {p7, v2, p1}, Lyads/um0;->a(Lyads/vz2;Ljava/lang/String;Z)I

    move-result p7

    if-lez p7, :cond_8

    goto :goto_7

    :cond_8
    add-int/lit8 p3, p3, 0x1

    goto :goto_6

    :cond_9
    move p7, p1

    move p3, v0

    :goto_7
    iput p3, p0, Lyads/jm0;->o:I

    iput p7, p0, Lyads/jm0;->p:I

    move p2, p1

    :goto_8
    iget-object p3, p4, Lyads/o06;->s:Lyads/k55;

    invoke-virtual {p3}, Lyads/k55;->size()I

    move-result p3

    if-ge p2, p3, :cond_b

    iget-object p3, p0, Lyads/sm0;->e:Lyads/vz2;

    iget-object p3, p3, Lyads/vz2;->m:Ljava/lang/String;

    if-eqz p3, :cond_a

    iget-object p7, p4, Lyads/o06;->s:Lyads/k55;

    invoke-virtual {p7, p2}, Lyads/k55;->get(I)Ljava/lang/Object;

    move-result-object p7

    invoke-virtual {p3, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    move v0, p2

    goto :goto_9

    :cond_a
    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_b
    :goto_9
    iput v0, p0, Lyads/jm0;->u:I

    invoke-static {p5}, Lyads/gs;->a(I)I

    move-result p2

    const/16 p3, 0x80

    if-ne p2, p3, :cond_c

    move p2, v1

    goto :goto_a

    :cond_c
    move p2, p1

    :goto_a
    iput-boolean p2, p0, Lyads/jm0;->v:Z

    invoke-static {p5}, Lyads/gs;->b(I)I

    move-result p2

    const/16 p3, 0x40

    if-ne p2, p3, :cond_d

    move p2, v1

    goto :goto_b

    :cond_d
    move p2, p1

    :goto_b
    iput-boolean p2, p0, Lyads/jm0;->w:Z

    iget-object p2, p0, Lyads/jm0;->i:Lyads/mm0;

    iget-boolean p2, p2, Lyads/mm0;->M:Z

    invoke-static {p5, p2}, Lyads/um0;->a(IZ)Z

    move-result p2

    if-nez p2, :cond_e

    goto :goto_c

    :cond_e
    iget-boolean p2, p0, Lyads/jm0;->g:Z

    if-nez p2, :cond_f

    iget-object p2, p0, Lyads/jm0;->i:Lyads/mm0;

    iget-boolean p2, p2, Lyads/mm0;->G:Z

    if-nez p2, :cond_f

    goto :goto_c

    :cond_f
    invoke-static {p5, p1}, Lyads/um0;->a(IZ)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-boolean p1, p0, Lyads/jm0;->g:Z

    if-eqz p1, :cond_11

    iget-object p1, p0, Lyads/sm0;->e:Lyads/vz2;

    iget p1, p1, Lyads/vz2;->i:I

    if-eq p1, v3, :cond_11

    iget-object p1, p0, Lyads/jm0;->i:Lyads/mm0;

    iget-boolean p2, p1, Lyads/o06;->y:Z

    if-nez p2, :cond_11

    iget-boolean p2, p1, Lyads/o06;->x:Z

    if-nez p2, :cond_11

    iget-boolean p1, p1, Lyads/mm0;->O:Z

    if-nez p1, :cond_10

    if-nez p6, :cond_11

    :cond_10
    const/4 p1, 0x2

    goto :goto_c

    :cond_11
    move p1, v1

    :goto_c
    iput p1, p0, Lyads/jm0;->f:I

    return-void
.end method

.method public static a(Ljava/util/List;Ljava/util/List;)I
    .locals 0

    .line 261
    invoke-static {p0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/jm0;

    invoke-static {p1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/jm0;

    invoke-virtual {p0, p1}, Lyads/jm0;->a(Lyads/jm0;)I

    move-result p0

    return p0
.end method

.method public static a(ILyads/f06;Lyads/mm0;[IZLyads/xx4;)Lyads/k55;
    .locals 10

    .line 247
    sget-object v0, Lyads/oe3;->c:Lyads/le3;

    .line 248
    const-string v0, "initialCapacity"

    const/4 v1, 0x4

    invoke-static {v1, v0}, Lyads/h20;->a(ILjava/lang/String;)I

    .line 249
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    move v4, v1

    move v9, v4

    .line 250
    :goto_0
    iget v1, p1, Lyads/f06;->b:I

    if-ge v4, v1, :cond_1

    .line 251
    new-instance v1, Lyads/jm0;

    aget v6, p3, v4

    move v2, p0

    move-object v3, p1

    move-object v5, p2

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lyads/jm0;-><init>(ILyads/f06;ILyads/mm0;IZLyads/xx4;)V

    add-int/lit8 p0, v9, 0x1

    .line 252
    array-length p1, v0

    if-ge p1, p0, :cond_0

    .line 253
    array-length p1, v0

    .line 254
    invoke-static {p1, p0}, Lyads/he3;->a(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    .line 255
    :cond_0
    aput-object v1, v0, v9

    add-int/lit8 v4, v4, 0x1

    move v9, p0

    move p0, v2

    move-object p1, v3

    move-object p2, v5

    move p4, v7

    move-object p5, v8

    goto :goto_0

    .line 256
    :cond_1
    invoke-static {v9, v0}, Lyads/oe3;->b(I[Ljava/lang/Object;)Lyads/k55;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 257
    iget p0, p0, Lyads/jm0;->f:I

    return p0
.end method

.method public final a(Lyads/jm0;)I
    .locals 7

    iget-boolean v0, p0, Lyads/jm0;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lyads/jm0;->j:Z

    if-eqz v0, :cond_0

    sget-object v0, Lyads/um0;->i:Lyads/xq4;

    move-object v1, v0

    goto :goto_0

    :cond_0
    sget-object v0, Lyads/um0;->i:Lyads/xq4;

    invoke-virtual {v0}, Lyads/xq4;->a()Lyads/xq4;

    move-result-object v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_0
    iget-boolean v2, p0, Lyads/jm0;->j:Z

    iget-boolean v3, p1, Lyads/jm0;->j:Z

    invoke-static {v2, v3}, Lyads/xu;->a(ZZ)I

    move-result v2

    invoke-static {v2}, Lyads/q40;->a(I)Lyads/s40;

    move-result-object v2

    iget v3, p0, Lyads/jm0;->l:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p1, Lyads/jm0;->l:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lyads/xm4;->b:Lyads/xm4;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lyads/m95;->b:Lyads/m95;

    invoke-virtual {v2, v3, v4, v5}, Lyads/s40;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lyads/s40;

    move-result-object v2

    iget v3, p0, Lyads/jm0;->k:I

    iget v4, p1, Lyads/jm0;->k:I

    invoke-virtual {v2, v3, v4}, Lyads/s40;->a(II)Lyads/s40;

    move-result-object v2

    iget v3, p0, Lyads/jm0;->m:I

    iget v4, p1, Lyads/jm0;->m:I

    invoke-virtual {v2, v3, v4}, Lyads/s40;->a(II)Lyads/s40;

    move-result-object v2

    iget-boolean v3, p0, Lyads/jm0;->q:Z

    iget-boolean v4, p1, Lyads/jm0;->q:Z

    invoke-virtual {v2, v3, v4}, Lyads/s40;->a(ZZ)Lyads/s40;

    move-result-object v2

    iget-boolean v3, p0, Lyads/jm0;->n:Z

    iget-boolean v4, p1, Lyads/jm0;->n:Z

    invoke-virtual {v2, v3, v4}, Lyads/s40;->a(ZZ)Lyads/s40;

    move-result-object v2

    iget v3, p0, Lyads/jm0;->o:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p1, Lyads/jm0;->o:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v5}, Lyads/s40;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lyads/s40;

    move-result-object v2

    iget v3, p0, Lyads/jm0;->p:I

    iget v4, p1, Lyads/jm0;->p:I

    invoke-virtual {v2, v3, v4}, Lyads/s40;->a(II)Lyads/s40;

    move-result-object v2

    iget-boolean v3, p0, Lyads/jm0;->g:Z

    iget-boolean v4, p1, Lyads/jm0;->g:Z

    invoke-virtual {v2, v3, v4}, Lyads/s40;->a(ZZ)Lyads/s40;

    move-result-object v2

    iget v3, p0, Lyads/jm0;->u:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p1, Lyads/jm0;->u:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v5}, Lyads/s40;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lyads/s40;

    move-result-object v2

    iget v3, p0, Lyads/jm0;->t:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p1, Lyads/jm0;->t:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lyads/jm0;->i:Lyads/mm0;

    iget-boolean v5, v5, Lyads/o06;->x:Z

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Lyads/xq4;->a()Lyads/xq4;

    move-result-object v1

    goto :goto_1

    :cond_1
    sget-object v1, Lyads/um0;->j:Lyads/xq4;

    :goto_1
    invoke-virtual {v2, v3, v4, v1}, Lyads/s40;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lyads/s40;

    move-result-object v1

    iget-boolean v2, p0, Lyads/jm0;->v:Z

    iget-boolean v3, p1, Lyads/jm0;->v:Z

    invoke-virtual {v1, v2, v3}, Lyads/s40;->a(ZZ)Lyads/s40;

    move-result-object v1

    iget-boolean v2, p0, Lyads/jm0;->w:Z

    iget-boolean v3, p1, Lyads/jm0;->w:Z

    invoke-virtual {v1, v2, v3}, Lyads/s40;->a(ZZ)Lyads/s40;

    move-result-object v1

    iget v2, p0, Lyads/jm0;->r:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lyads/jm0;->r:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lyads/s40;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lyads/s40;

    move-result-object v1

    iget v2, p0, Lyads/jm0;->s:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lyads/jm0;->s:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lyads/s40;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lyads/s40;

    move-result-object v1

    iget v2, p0, Lyads/jm0;->t:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lyads/jm0;->t:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object p0, p0, Lyads/jm0;->h:Ljava/lang/String;

    iget-object p1, p1, Lyads/jm0;->h:Ljava/lang/String;

    invoke-static {p0, p1}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    sget-object v0, Lyads/um0;->j:Lyads/xq4;

    :goto_2
    invoke-virtual {v1, v2, v3, v0}, Lyads/s40;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lyads/s40;

    move-result-object p0

    invoke-virtual {p0}, Lyads/s40;->a()I

    move-result p0

    return p0
.end method

.method public final a(Lyads/sm0;)Z
    .locals 4

    .line 258
    check-cast p1, Lyads/jm0;

    .line 259
    iget-object v0, p0, Lyads/jm0;->i:Lyads/mm0;

    iget-boolean v1, v0, Lyads/mm0;->J:Z

    const/4 v2, -0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lyads/sm0;->e:Lyads/vz2;

    iget v1, v1, Lyads/vz2;->z:I

    if-eq v1, v2, :cond_3

    iget-object v3, p1, Lyads/sm0;->e:Lyads/vz2;

    iget v3, v3, Lyads/vz2;->z:I

    if-ne v1, v3, :cond_3

    :cond_0
    iget-boolean v0, v0, Lyads/mm0;->H:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lyads/sm0;->e:Lyads/vz2;

    iget-object v0, v0, Lyads/vz2;->m:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v1, p1, Lyads/sm0;->e:Lyads/vz2;

    iget-object v1, v1, Lyads/vz2;->m:Ljava/lang/String;

    .line 260
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lyads/jm0;->i:Lyads/mm0;

    iget-boolean v1, v0, Lyads/mm0;->I:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lyads/sm0;->e:Lyads/vz2;

    iget v1, v1, Lyads/vz2;->A:I

    if-eq v1, v2, :cond_3

    iget-object v2, p1, Lyads/sm0;->e:Lyads/vz2;

    iget v2, v2, Lyads/vz2;->A:I

    if-ne v1, v2, :cond_3

    :cond_2
    iget-boolean v0, v0, Lyads/mm0;->K:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lyads/jm0;->v:Z

    iget-boolean v1, p1, Lyads/jm0;->v:Z

    if-ne v0, v1, :cond_3

    iget-boolean p0, p0, Lyads/jm0;->w:Z

    iget-boolean p1, p1, Lyads/jm0;->w:Z

    if-ne p0, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lyads/jm0;

    invoke-virtual {p0, p1}, Lyads/jm0;->a(Lyads/jm0;)I

    move-result p0

    return p0
.end method
