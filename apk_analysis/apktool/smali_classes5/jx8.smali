.class public final Ljx8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final u:[C

.field public static final v:[I


# instance fields
.field public final a:Lea1;

.field public final b:Lp36;

.field public c:Lkx8;

.field public d:Lgx8;

.field public e:Z

.field public final f:Lm54;

.field public final g:Lorg/jsoup/nodes/f$a$a;

.field public final h:Lgx8$g;

.field public final i:Lgx8$f;

.field public j:Lgx8$h;

.field public final k:Lgx8$b;

.field public final l:Lgx8$d;

.field public final m:Lgx8$c;

.field public final n:Lgx8$j;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:I

.field public r:I

.field public final s:[I

.field public final t:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x7

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Ljx8;->u:[C

    const/16 v1, 0x20

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Ljx8;->v:[I

    invoke-static {v0}, Ljava/util/Arrays;->sort([C)V

    return-void

    nop

    :array_0
    .array-data 2
        0x9s
        0xas
        0xds
        0xcs
        0x20s
        0x3cs
        0x26s
    .end array-data

    nop

    :array_1
    .array-data 4
        0x20ac
        0x81
        0x201a
        0x192
        0x201e
        0x2026
        0x2020
        0x2021
        0x2c6
        0x2030
        0x160
        0x2039
        0x152
        0x8d
        0x17d
        0x8f
        0x90
        0x2018
        0x2019
        0x201c
        0x201d
        0x2022
        0x2013
        0x2014
        0x2dc
        0x2122
        0x161
        0x203a
        0x153
        0x9d
        0x17e
        0x178
    .end array-data
.end method

.method public constructor <init>(Lby3;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lkx8;->Data:Lkx8;

    iput-object v0, p0, Ljx8;->c:Lkx8;

    const/4 v0, 0x0

    iput-object v0, p0, Ljx8;->d:Lgx8;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljx8;->e:Z

    new-instance v1, Lm54;

    invoke-direct {v1}, Lm54;-><init>()V

    iput-object v1, p0, Ljx8;->f:Lm54;

    new-instance v1, Lgx8$b;

    invoke-direct {v1}, Lgx8$b;-><init>()V

    iput-object v1, p0, Ljx8;->k:Lgx8$b;

    new-instance v1, Lgx8$d;

    invoke-direct {v1}, Lgx8$d;-><init>()V

    iput-object v1, p0, Ljx8;->l:Lgx8$d;

    new-instance v1, Lgx8$c;

    invoke-direct {v1}, Lgx8$c;-><init>()V

    iput-object v1, p0, Ljx8;->m:Lgx8$c;

    iput v0, p0, Ljx8;->r:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    iput-object v1, p0, Ljx8;->s:[I

    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Ljx8;->t:[I

    sget-object v1, Lorg/jsoup/nodes/f$a$a;->html:Lorg/jsoup/nodes/f$a$a;

    iput-object v1, p0, Ljx8;->g:Lorg/jsoup/nodes/f$a$a;

    new-instance v1, Lgx8$g;

    invoke-direct {v1, p1}, Lgx8$g;-><init>(Lby3;)V

    iput-object v1, p0, Ljx8;->h:Lgx8$g;

    iput-object v1, p0, Ljx8;->j:Lgx8$h;

    new-instance v1, Lgx8$f;

    invoke-direct {v1, p1}, Lgx8$f;-><init>(Lh39;)V

    iput-object v1, p0, Ljx8;->i:Lgx8$f;

    new-instance v1, Lgx8$j;

    sget-object v2, Lgx8$i;->XmlDecl:Lgx8$i;

    invoke-direct {v1, v2, p1}, Lgx8$h;-><init>(Lgx8$i;Lh39;)V

    iput-boolean v0, v1, Lgx8$j;->k:Z

    iput-object v1, p0, Ljx8;->n:Lgx8$j;

    iget-object v0, p1, Lh39;->b:Lea1;

    iput-object v0, p0, Ljx8;->a:Lea1;

    iget-object p1, p1, Lh39;->a:Lw36;

    iget-object p1, p1, Lw36;->b:Lp36;

    iput-object p1, p0, Ljx8;->b:Lp36;

    return-void
.end method


# virtual methods
.method public final a(Lkx8;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljx8;->o(Lkx8;)V

    iget-object p0, p0, Ljx8;->a:Lea1;

    invoke-virtual {p0}, Lea1;->m()V

    return-void
.end method

.method public final varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Ljx8;->b:Lp36;

    invoke-virtual {v0}, Lp36;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ln36;

    const-string v2, "Invalid character reference: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Ljx8;->a:Lea1;

    invoke-direct {v1, p0, p1}, Ln36;-><init>(Lea1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/Character;Z)[I
    .locals 12

    iget-object v0, p0, Ljx8;->a:Lea1;

    invoke-virtual {v0}, Lea1;->Z()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto/16 :goto_a

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {v0}, Lea1;->X()C

    move-result v1

    if-ne p1, v1, :cond_1

    goto/16 :goto_a

    :cond_1
    invoke-virtual {v0}, Lea1;->n()V

    invoke-virtual {v0}, Lea1;->Z()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, v0, Lea1;->d:[C

    iget v1, v0, Lea1;->e:I

    aget-char p1, p1, v1

    sget-object v1, Ljx8;->u:[C

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result p1

    if-ltz p1, :cond_2

    goto/16 :goto_a

    :cond_2
    iget p1, v0, Lea1;->f:I

    iget v1, v0, Lea1;->e:I

    sub-int/2addr p1, v1

    const/16 v1, 0x400

    const/4 v3, 0x0

    if-ge p1, v1, :cond_3

    iput v3, v0, Lea1;->g:I

    :cond_3
    invoke-virtual {v0}, Lea1;->n()V

    iget p1, v0, Lea1;->e:I

    iput p1, v0, Lea1;->i:I

    const-string p1, "#"

    invoke-virtual {v0, p1}, Lea1;->k0(Ljava/lang/String;)Z

    move-result p1

    const-string v1, ";"

    const-string v4, ""

    const/4 v5, -0x1

    iget-object v6, p0, Ljx8;->s:[I

    if-eqz p1, :cond_e

    const-string p1, "X"

    invoke-virtual {v0, p1}, Lea1;->n0(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Lea1;->n()V

    iget p2, v0, Lea1;->e:I

    iget v7, v0, Lea1;->f:I

    iget-object v8, v0, Lea1;->d:[C

    move v9, p2

    :goto_0
    if-ge v9, v7, :cond_4

    aget-char v10, v8, v9

    invoke-static {v10}, Lja8;->g(C)Z

    move-result v10

    if-eqz v10, :cond_4

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_4
    iput v9, v0, Lea1;->e:I

    if-le v9, p2, :cond_7

    iget-object v4, v0, Lea1;->d:[C

    iget-object v7, v0, Lea1;->b:[Ljava/lang/String;

    sub-int/2addr v9, p2

    invoke-static {v4, v7, p2, v9}, Lea1;->o([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lea1;->n()V

    iget p2, v0, Lea1;->e:I

    iget v7, v0, Lea1;->f:I

    iget-object v8, v0, Lea1;->d:[C

    move v9, p2

    :goto_1
    if-ge v9, v7, :cond_6

    aget-char v10, v8, v9

    const/16 v11, 0x30

    if-lt v10, v11, :cond_6

    const/16 v11, 0x39

    if-gt v10, v11, :cond_6

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_6
    iput v9, v0, Lea1;->e:I

    if-le v9, p2, :cond_7

    iget-object v4, v0, Lea1;->d:[C

    iget-object v7, v0, Lea1;->b:[Ljava/lang/String;

    sub-int/2addr v9, p2

    invoke-static {v4, v7, p2, v9}, Lea1;->o([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    :cond_7
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p1, "numeric reference with no numerals"

    new-array p2, v3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Ljx8;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lea1;->B0()V

    return-object v2

    :cond_8
    iput v5, v0, Lea1;->i:I

    invoke-virtual {v0, v1}, Lea1;->k0(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_9

    const-string p2, "missing semicolon on [&#%s]"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Ljx8;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    if-eqz p1, :cond_a

    const/16 p1, 0x10

    goto :goto_3

    :cond_a
    const/16 p1, 0xa

    :goto_3
    :try_start_0
    invoke-static {v4, p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move p1, v5

    :goto_4
    if-eq p1, v5, :cond_d

    const p2, 0x10ffff

    if-le p1, p2, :cond_b

    goto :goto_5

    :cond_b
    const/16 p2, 0x80

    if-lt p1, p2, :cond_c

    const/16 p2, 0xa0

    if-ge p1, p2, :cond_c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "character [%s] is not a valid unicode code point"

    invoke-virtual {p0, v0, p2}, Ljx8;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 p1, p1, -0x80

    sget-object p0, Ljx8;->v:[I

    aget p1, p0, p1

    :cond_c
    aput p1, v6, v3

    goto :goto_6

    :cond_d
    :goto_5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "character [%s] outside of valid range"

    invoke-virtual {p0, p2, p1}, Ljx8;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const p0, 0xfffd

    aput p0, v6, v3

    :goto_6
    return-object v6

    :cond_e
    invoke-virtual {v0}, Lea1;->n()V

    iget p1, v0, Lea1;->e:I

    :goto_7
    iget v7, v0, Lea1;->e:I

    iget v8, v0, Lea1;->f:I

    const/4 v9, 0x1

    if-ge v7, v8, :cond_f

    iget-object v8, v0, Lea1;->d:[C

    aget-char v7, v8, v7

    invoke-static {v7}, Lja8;->d(C)Z

    move-result v7

    if-eqz v7, :cond_f

    iget v7, v0, Lea1;->e:I

    add-int/2addr v7, v9

    iput v7, v0, Lea1;->e:I

    goto :goto_7

    :cond_f
    :goto_8
    iget v7, v0, Lea1;->e:I

    iget v8, v0, Lea1;->f:I

    if-lt v7, v8, :cond_10

    goto :goto_9

    :cond_10
    iget-object v8, v0, Lea1;->d:[C

    aget-char v7, v8, v7

    invoke-static {v7}, Lja8;->f(C)Z

    move-result v7

    if-eqz v7, :cond_11

    iget v7, v0, Lea1;->e:I

    add-int/2addr v7, v9

    iput v7, v0, Lea1;->e:I

    goto :goto_8

    :cond_11
    :goto_9
    iget-object v7, v0, Lea1;->d:[C

    iget-object v8, v0, Lea1;->b:[Ljava/lang/String;

    iget v10, v0, Lea1;->e:I

    sub-int/2addr v10, p1

    invoke-static {v7, v8, p1, v10}, Lea1;->o([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    const/16 v7, 0x3b

    invoke-virtual {v0, v7}, Lea1;->q0(C)Z

    move-result v7

    sget-object v8, Lorg/jsoup/nodes/j;->a:[C

    sget-object v8, Lorg/jsoup/nodes/j$c;->base:Lorg/jsoup/nodes/j$c;

    invoke-virtual {v8, p1}, Lorg/jsoup/nodes/j$c;->a(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v5, :cond_12

    goto :goto_b

    :cond_12
    sget-object v8, Lorg/jsoup/nodes/j$c;->extended:Lorg/jsoup/nodes/j$c;

    invoke-virtual {v8, p1}, Lorg/jsoup/nodes/j$c;->a(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v5, :cond_13

    if-eqz v7, :cond_13

    goto :goto_b

    :cond_13
    invoke-virtual {v0}, Lea1;->B0()V

    if-eqz v7, :cond_14

    const-string v7, "invalid named reference [%s]"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Ljx8;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_14
    if-eqz p2, :cond_15

    goto :goto_a

    :cond_15
    sget-object v7, Lorg/jsoup/nodes/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_16
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_16

    move-object v4, v8

    :cond_17
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_18

    :goto_a
    return-object v2

    :cond_18
    invoke-virtual {v0, v4}, Lea1;->k0(Ljava/lang/String;)Z

    move-object p1, v4

    :goto_b
    if-eqz p2, :cond_1b

    invoke-virtual {v0}, Lea1;->u0()Z

    move-result p2

    if-nez p2, :cond_1a

    invoke-virtual {v0}, Lea1;->Z()Z

    move-result p2

    if-eqz p2, :cond_19

    move p2, v3

    goto :goto_c

    :cond_19
    iget-object p2, v0, Lea1;->d:[C

    iget v4, v0, Lea1;->e:I

    aget-char p2, p2, v4

    invoke-static {p2}, Lja8;->f(C)Z

    move-result p2

    :goto_c
    if-nez p2, :cond_1a

    const/4 p2, 0x3

    new-array p2, p2, [C

    fill-array-data p2, :array_0

    invoke-virtual {v0, p2}, Lea1;->r0([C)Z

    move-result p2

    if-eqz p2, :cond_1b

    :cond_1a
    invoke-virtual {v0}, Lea1;->B0()V

    return-object v2

    :cond_1b
    iput v5, v0, Lea1;->i:I

    invoke-virtual {v0, v1}, Lea1;->k0(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1c

    const-string p2, "missing semicolon on [&%s]"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Ljx8;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1c
    sget-object p2, Lorg/jsoup/nodes/j;->b:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 v0, 0x2

    iget-object p0, p0, Ljx8;->t:[I

    if-eqz p2, :cond_1d

    invoke-virtual {p2, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    aput v1, p0, v3

    invoke-virtual {p2, v9}, Ljava/lang/String;->codePointAt(I)I

    move-result p2

    aput p2, p0, v9

    move p2, v0

    goto :goto_d

    :cond_1d
    sget-object p2, Lorg/jsoup/nodes/j$c;->extended:Lorg/jsoup/nodes/j$c;

    invoke-virtual {p2, p1}, Lorg/jsoup/nodes/j$c;->a(Ljava/lang/String;)I

    move-result p2

    if-eq p2, v5, :cond_1e

    aput p2, p0, v3

    move p2, v9

    goto :goto_d

    :cond_1e
    move p2, v3

    :goto_d
    if-ne p2, v9, :cond_1f

    aget p0, p0, v3

    aput p0, v6, v3

    return-object v6

    :cond_1f
    if-ne p2, v0, :cond_20

    return-object p0

    :cond_20
    const-string p0, "Unexpected characters returned for "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/jsoup/helper/ValidationException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 2
        0x3ds
        0x2ds
        0x5fs
    .end array-data
.end method

.method public final d(Z)Lgx8$h;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Ljx8;->h:Lgx8$g;

    invoke-virtual {p1}, Lgx8$g;->m()Lgx8$h;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ljx8;->i:Lgx8$f;

    invoke-virtual {p1}, Lgx8$h;->m()Lgx8$h;

    :goto_0
    iput-object p1, p0, Ljx8;->j:Lgx8$h;

    return-object p1
.end method

.method public final e()V
    .locals 0

    iget-object p0, p0, Ljx8;->f:Lm54;

    invoke-virtual {p0}, Lm54;->d()V

    return-void
.end method

.method public final f(C)V
    .locals 2

    iget-object v0, p0, Ljx8;->k:Lgx8$b;

    iget-object v1, v0, Lgx8$b;->d:Lm54;

    invoke-virtual {v1, p1}, Lm54;->a(C)V

    iget p1, p0, Ljx8;->r:I

    iput p1, v0, Lgx8;->b:I

    iget-object p0, p0, Ljx8;->a:Lea1;

    invoke-virtual {p0}, Lea1;->z0()I

    move-result p0

    iput p0, v0, Lgx8;->c:I

    return-void
.end method

.method public final g(Lgx8;)V
    .locals 3

    iget-boolean v0, p0, Ljx8;->e:Z

    if-nez v0, :cond_2

    iput-object p1, p0, Ljx8;->d:Lgx8;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljx8;->e:Z

    iget v0, p0, Ljx8;->q:I

    iput v0, p1, Lgx8;->b:I

    iget-object v0, p0, Ljx8;->a:Lea1;

    invoke-virtual {v0}, Lea1;->z0()I

    move-result v1

    iput v1, p1, Lgx8;->c:I

    invoke-virtual {v0}, Lea1;->z0()I

    move-result v1

    iput v1, p0, Ljx8;->r:I

    iget-object v1, p1, Lgx8;->a:Lgx8$i;

    sget-object v2, Lgx8$i;->StartTag:Lgx8$i;

    if-ne v1, v2, :cond_0

    check-cast p1, Lgx8$g;

    iget-object p1, p1, Lgx8$h;->d:Lm54;

    invoke-virtual {p1}, Lm54;->e()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljx8;->o:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Ljx8;->p:Ljava/lang/String;

    return-void

    :cond_0
    sget-object v2, Lgx8$i;->EndTag:Lgx8$i;

    if-ne v1, v2, :cond_1

    check-cast p1, Lgx8$f;

    iget-object v1, p1, Lgx8$h;->g:Lorg/jsoup/nodes/b;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lgx8$h;->l()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Ljx8;->b:Lp36;

    invoke-virtual {p0}, Lp36;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ln36;

    const-string v2, "Attributes incorrectly present on end tag [/%s]"

    invoke-direct {v1, v0, v2, p1}, Ln36;-><init>(Lea1;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    new-instance p0, Lorg/jsoup/helper/ValidationException;

    const-string p1, "Must be false"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Ljx8;->k:Lgx8$b;

    iget-object v1, v0, Lgx8$b;->d:Lm54;

    invoke-virtual {v1, p1}, Lm54;->b(Ljava/lang/String;)V

    iget p1, p0, Ljx8;->r:I

    iput p1, v0, Lgx8;->b:I

    iget-object p0, p0, Ljx8;->a:Lea1;

    invoke-virtual {p0}, Lea1;->z0()I

    move-result p0

    iput p0, v0, Lgx8;->c:I

    return-void
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Ljx8;->m:Lgx8$c;

    invoke-virtual {p0, v0}, Ljx8;->g(Lgx8;)V

    return-void
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Ljx8;->l:Lgx8$d;

    invoke-virtual {p0, v0}, Ljx8;->g(Lgx8;)V

    return-void
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Ljx8;->j:Lgx8$h;

    iget-object v1, v0, Lgx8$h;->h:Lm54;

    invoke-virtual {v1}, Lm54;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lgx8$h;->k()V

    :cond_0
    iget-object v0, p0, Ljx8;->j:Lgx8$h;

    invoke-virtual {p0, v0}, Ljx8;->g(Lgx8;)V

    return-void
.end method

.method public final l(Lkx8;)V
    .locals 3

    iget-object v0, p0, Ljx8;->b:Lp36;

    invoke-virtual {v0}, Lp36;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ln36;

    const-string v2, "Unexpectedly reached end of file (EOF) in input state [%s]"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Ljx8;->a:Lea1;

    invoke-direct {v1, p0, v2, p1}, Ln36;-><init>(Lea1;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final m(Lkx8;)V
    .locals 3

    iget-object v0, p0, Ljx8;->b:Lp36;

    invoke-virtual {v0}, Lp36;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ln36;

    iget-object p0, p0, Ljx8;->a:Lea1;

    invoke-virtual {p0}, Lea1;->X()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Unexpected character \'%s\' in input state [%s]"

    invoke-direct {v1, p0, v2, p1}, Ln36;-><init>(Lea1;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final n()Z
    .locals 1

    iget-object v0, p0, Ljx8;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljx8;->j:Lgx8$h;

    iget-object v0, v0, Lgx8$h;->d:Lm54;

    invoke-virtual {v0}, Lm54;->e()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Ljx8;->o:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final o(Lkx8;)V
    .locals 1

    sget-object v0, Lkx8;->TagOpen:Lkx8;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Ljx8;->a:Lea1;

    invoke-virtual {v0}, Lea1;->z0()I

    move-result v0

    iput v0, p0, Ljx8;->q:I

    :cond_0
    iput-object p1, p0, Ljx8;->c:Lkx8;

    return-void
.end method
