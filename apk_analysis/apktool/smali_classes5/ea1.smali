.class public final Lea1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lea1$a;
    }
.end annotation


# static fields
.field public static final o:Lq48;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq48<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final p:Lq48;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq48<",
            "[C>;"
        }
    .end annotation
.end field


# instance fields
.field public b:[Ljava/lang/String;

.field public c:Ljava/io/StringReader;

.field public d:[C

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Z

.field public k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public l:I

.field public m:Ljava/lang/String;

.field public n:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lq48;

    new-instance v1, Lca1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lq48;-><init>(Ljava/util/function/Supplier;)V

    sput-object v0, Lea1;->o:Lq48;

    new-instance v0, Lq48;

    new-instance v1, Lda1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lq48;-><init>(Ljava/util/function/Supplier;)V

    sput-object v0, Lea1;->p:Lq48;

    return-void
.end method

.method public constructor <init>(Ljava/io/StringReader;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lea1;->g:I

    const/4 v0, -0x1

    iput v0, p0, Lea1;->i:I

    const/4 v0, 0x0

    iput-object v0, p0, Lea1;->k:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lea1;->l:I

    iput-object p1, p0, Lea1;->c:Ljava/io/StringReader;

    sget-object p1, Lea1;->p:Lq48;

    invoke-virtual {p1}, Lq48;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    iput-object p1, p0, Lea1;->d:[C

    sget-object p1, Lea1;->o:Lq48;

    invoke-virtual {p1}, Lq48;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lea1;->b:[Ljava/lang/String;

    invoke-virtual {p0}, Lea1;->n()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 41
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lea1;-><init>(Ljava/io/StringReader;)V

    return-void
.end method

.method public static o([C[Ljava/lang/String;II)Ljava/lang/String;
    .locals 7

    const/16 v0, 0xc

    if-le p3, v0, :cond_0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0, p2, p3}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ge p3, v0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    add-int v0, p3, p2

    const/4 v1, 0x0

    move v2, p2

    move v3, v1

    :goto_0
    if-ge v2, v0, :cond_2

    mul-int/lit8 v3, v3, 0x1f

    aget-char v4, p0, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    and-int/lit16 v0, v3, 0x1ff

    aget-object v2, p1, v0

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne p3, v3, :cond_5

    move v4, p2

    move v3, p3

    :goto_1
    add-int/lit8 v5, v3, -0x1

    if-eqz v3, :cond_4

    add-int/lit8 v3, v4, 0x1

    aget-char v4, p0, v4

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v4, v1, :cond_3

    goto :goto_2

    :cond_3
    move v4, v3

    move v3, v5

    move v1, v6

    goto :goto_1

    :cond_4
    return-object v2

    :cond_5
    :goto_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p2, p3}, Ljava/lang/String;-><init>([CII)V

    aput-object v1, p1, v0

    return-object v1
.end method


# virtual methods
.method public final A0()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lea1;->z0()I

    move-result v1

    iget-object v2, p0, Lea1;->k:Ljava/util/ArrayList;

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lea1;->e0(I)I

    move-result v1

    iget v2, p0, Lea1;->l:I

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr v1, v2

    add-int/lit8 v2, v1, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lea1;->z0()I

    move-result v1

    iget-object v2, p0, Lea1;->k:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Lea1;->e0(I)I

    move-result v2

    if-ne v2, v3, :cond_3

    :cond_2
    :goto_1
    add-int/2addr v1, v4

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lea1;->k:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sub-int/2addr v1, p0

    goto :goto_1

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final B0()V
    .locals 2

    iget v0, p0, Lea1;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iput v0, p0, Lea1;->e:I

    iput v1, p0, Lea1;->i:I

    return-void

    :cond_0
    new-instance p0, Ljava/io/UncheckedIOException;

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mark invalid"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p0
.end method

.method public final C0()V
    .locals 2

    iget v0, p0, Lea1;->e:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    sub-int/2addr v0, v1

    iput v0, p0, Lea1;->e:I

    return-void

    :cond_0
    new-instance p0, Ljava/io/UncheckedIOException;

    new-instance v0, Ljava/io/IOException;

    const-string v1, "WTF: No buffer left to unconsume."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p0
.end method

.method public final E(Lea1$a;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lea1;->n()V

    iget v0, p0, Lea1;->e:I

    iget v1, p0, Lea1;->f:I

    iget-object v2, p0, Lea1;->d:[C

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-char v4, v2, v3

    invoke-interface {p1, v4}, Lea1$a;->a(C)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput v3, p0, Lea1;->e:I

    if-le v3, v0, :cond_1

    iget-object p1, p0, Lea1;->d:[C

    iget-object p0, p0, Lea1;->b:[Ljava/lang/String;

    sub-int/2addr v3, v0

    invoke-static {p1, p0, v0, v3}, Lea1;->o([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public final P(C)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lea1;->n()V

    iget v0, p0, Lea1;->e:I

    :goto_0
    iget v1, p0, Lea1;->f:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lea1;->d:[C

    aget-char v1, v1, v0

    if-ne p1, v1, :cond_0

    iget p1, p0, Lea1;->e:I

    sub-int/2addr v0, p1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_1
    if-eq v0, v2, :cond_2

    iget-object p1, p0, Lea1;->d:[C

    iget-object v1, p0, Lea1;->b:[Ljava/lang/String;

    iget v2, p0, Lea1;->e:I

    invoke-static {p1, v1, v2, v0}, Lea1;->o([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lea1;->e:I

    add-int/2addr v1, v0

    iput v1, p0, Lea1;->e:I

    return-object p1

    :cond_2
    invoke-virtual {p0}, Lea1;->V()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final varargs Q([C)Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Lea1;->n()V

    iget v0, p0, Lea1;->e:I

    iget v1, p0, Lea1;->f:I

    iget-object v2, p0, Lea1;->d:[C

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-char v4, v2, v3

    array-length v5, p1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget-char v7, p1, v6

    if-ne v4, v7, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    iput v3, p0, Lea1;->e:I

    if-le v3, v0, :cond_3

    iget-object p1, p0, Lea1;->d:[C

    iget-object p0, p0, Lea1;->b:[Ljava/lang/String;

    sub-int/2addr v3, v0

    invoke-static {p1, p0, v0, v3}, Lea1;->o([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method public final varargs U([C)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lea1;->n()V

    iget v0, p0, Lea1;->e:I

    iget v1, p0, Lea1;->f:I

    iget-object v2, p0, Lea1;->d:[C

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-char v4, v2, v3

    invoke-static {p1, v4}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v4

    if-gez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iput v3, p0, Lea1;->e:I

    if-le v3, v0, :cond_2

    iget-object p1, p0, Lea1;->d:[C

    iget-object p0, p0, Lea1;->b:[Ljava/lang/String;

    sub-int/2addr v3, v0

    invoke-static {p1, p0, v0, v3}, Lea1;->o([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    const-string p0, ""

    :goto_2
    return-object p0
.end method

.method public final V()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lea1;->n()V

    iget-object v0, p0, Lea1;->d:[C

    iget-object v1, p0, Lea1;->b:[Ljava/lang/String;

    iget v2, p0, Lea1;->e:I

    iget v3, p0, Lea1;->f:I

    sub-int/2addr v3, v2

    invoke-static {v0, v1, v2, v3}, Lea1;->o([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lea1;->f:I

    iput v1, p0, Lea1;->e:I

    return-object v0
.end method

.method public final X()C
    .locals 2

    invoke-virtual {p0}, Lea1;->n()V

    iget v0, p0, Lea1;->e:I

    iget v1, p0, Lea1;->f:I

    if-lt v0, v1, :cond_0

    const p0, 0xffff

    return p0

    :cond_0
    iget-object p0, p0, Lea1;->d:[C

    aget-char p0, p0, v0

    return p0
.end method

.method public final Z()Z
    .locals 1

    invoke-virtual {p0}, Lea1;->n()V

    iget v0, p0, Lea1;->e:I

    iget p0, p0, Lea1;->f:I

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final close()V
    .locals 6

    sget-object v0, Lea1;->o:Lq48;

    sget-object v1, Lea1;->p:Lq48;

    iget-object v2, p0, Lea1;->c:Ljava/io/StringReader;

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v4, p0, Lea1;->c:Ljava/io/StringReader;

    iget-object v2, p0, Lea1;->d:[C

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([CC)V

    iget-object v2, p0, Lea1;->d:[C

    invoke-virtual {v1, v2}, Lq48;->b(Ljava/lang/Object;)V

    iput-object v4, p0, Lea1;->d:[C

    iget-object v1, p0, Lea1;->b:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lq48;->b(Ljava/lang/Object;)V

    :goto_0
    iput-object v4, p0, Lea1;->b:[Ljava/lang/String;

    return-void

    :catchall_0
    move-exception v2

    iput-object v4, p0, Lea1;->c:Ljava/io/StringReader;

    iget-object v5, p0, Lea1;->d:[C

    invoke-static {v5, v3}, Ljava/util/Arrays;->fill([CC)V

    iget-object v3, p0, Lea1;->d:[C

    invoke-virtual {v1, v3}, Lq48;->b(Ljava/lang/Object;)V

    iput-object v4, p0, Lea1;->d:[C

    iget-object v1, p0, Lea1;->b:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lq48;->b(Ljava/lang/Object;)V

    iput-object v4, p0, Lea1;->b:[Ljava/lang/String;

    throw v2

    :catch_0
    iput-object v4, p0, Lea1;->c:Ljava/io/StringReader;

    iget-object v2, p0, Lea1;->d:[C

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([CC)V

    iget-object v2, p0, Lea1;->d:[C

    invoke-virtual {v1, v2}, Lq48;->b(Ljava/lang/Object;)V

    iput-object v4, p0, Lea1;->d:[C

    iget-object v1, p0, Lea1;->b:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lq48;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final e0(I)I
    .locals 0

    iget-object p0, p0, Lea1;->k:Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result p0

    const/4 p1, -0x1

    if-ge p0, p1, :cond_0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    :cond_0
    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final k0(Ljava/lang/String;)Z
    .locals 6

    invoke-virtual {p0}, Lea1;->n()V

    invoke-virtual {p0}, Lea1;->n()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lea1;->f:I

    iget v2, p0, Lea1;->e:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    goto :goto_1

    :cond_0
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v4, p0, Lea1;->d:[C

    iget v5, p0, Lea1;->e:I

    add-int/2addr v5, v1

    aget-char v4, v4, v5

    if-eq v3, v4, :cond_1

    :goto_1
    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lea1;->e:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lea1;->e:I

    const/4 p0, 0x1

    return p0
.end method

.method public final m()V
    .locals 1

    iget v0, p0, Lea1;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lea1;->e:I

    return-void
.end method

.method public final n()V
    .locals 7

    iget-boolean v0, p0, Lea1;->j:Z

    if-nez v0, :cond_9

    iget v0, p0, Lea1;->e:I

    iget v1, p0, Lea1;->g:I

    if-lt v0, v1, :cond_9

    iget v1, p0, Lea1;->i:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    goto/16 :goto_4

    :cond_0
    iget v1, p0, Lea1;->h:I

    add-int/2addr v1, v0

    iput v1, p0, Lea1;->h:I

    iget v1, p0, Lea1;->f:I

    sub-int/2addr v1, v0

    iput v1, p0, Lea1;->f:I

    const/4 v3, 0x0

    if-lez v1, :cond_1

    iget-object v4, p0, Lea1;->d:[C

    invoke-static {v4, v0, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput v3, p0, Lea1;->e:I

    :goto_0
    iget v0, p0, Lea1;->f:I

    const/16 v1, 0x800

    const/4 v4, 0x1

    if-ge v0, v1, :cond_4

    :try_start_0
    iget-object v1, p0, Lea1;->c:Ljava/io/StringReader;

    iget-object v5, p0, Lea1;->d:[C

    array-length v6, v5

    sub-int/2addr v6, v0

    invoke-virtual {v1, v5, v0, v6}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-ne v0, v2, :cond_2

    iput-boolean v4, p0, Lea1;->j:Z

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget v1, p0, Lea1;->f:I

    add-int/2addr v1, v0

    iput v1, p0, Lea1;->f:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/io/UncheckedIOException;

    invoke-direct {v0, p0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_4
    :goto_1
    iget v0, p0, Lea1;->f:I

    const/16 v1, 0x400

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lea1;->g:I

    iget-object v0, p0, Lea1;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget v0, p0, Lea1;->h:I

    invoke-virtual {p0, v0}, Lea1;->e0(I)I

    move-result v0

    if-ne v0, v2, :cond_5

    goto :goto_2

    :cond_5
    move v3, v0

    :goto_2
    iget-object v0, p0, Lea1;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p0, Lea1;->l:I

    add-int/2addr v1, v3

    iput v1, p0, Lea1;->l:I

    iget-object v1, p0, Lea1;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lea1;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget v0, p0, Lea1;->e:I

    :goto_3
    iget v1, p0, Lea1;->f:I

    if-ge v0, v1, :cond_8

    iget-object v1, p0, Lea1;->d:[C

    aget-char v1, v1, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lea1;->k:Ljava/util/ArrayList;

    iget v2, p0, Lea1;->h:I

    add-int/2addr v2, v4

    add-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, Lea1;->m:Ljava/lang/String;

    :cond_9
    :goto_4
    return-void
.end method

.method public final n0(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lea1;->x0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lea1;->e:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lea1;->e:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final p()C
    .locals 2

    invoke-virtual {p0}, Lea1;->n()V

    iget v0, p0, Lea1;->e:I

    iget v1, p0, Lea1;->f:I

    if-lt v0, v1, :cond_0

    const v1, 0xffff

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lea1;->d:[C

    aget-char v1, v1, v0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lea1;->e:I

    return v1
.end method

.method public final q0(C)Z
    .locals 1

    invoke-virtual {p0}, Lea1;->Z()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lea1;->d:[C

    iget p0, p0, Lea1;->e:I

    aget-char p0, v0, p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final varargs r0([C)Z
    .locals 4

    invoke-virtual {p0}, Lea1;->Z()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lea1;->n()V

    iget-object v0, p0, Lea1;->d:[C

    iget p0, p0, Lea1;->e:I

    aget-char p0, v0, p0

    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-char v3, p1, v2

    if-ne v3, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lea1;->f:I

    iget v1, p0, Lea1;->e:I

    sub-int v2, v0, v1

    if-gez v2, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v2, Ljava/lang/String;

    iget-object p0, p0, Lea1;->d:[C

    sub-int/2addr v0, v1

    invoke-direct {v2, p0, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method

.method public final u0()Z
    .locals 1

    invoke-virtual {p0}, Lea1;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lea1;->d:[C

    iget p0, p0, Lea1;->e:I

    aget-char p0, v0, p0

    invoke-static {p0}, Lja8;->d(C)Z

    move-result p0

    return p0
.end method

.method public final v()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lea1;->n()V

    iget v0, p0, Lea1;->e:I

    iget v1, p0, Lea1;->f:I

    iget-object v2, p0, Lea1;->d:[C

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-char v4, v2, v3

    const/16 v5, 0x26

    if-eq v4, v5, :cond_0

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_0

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iput v3, p0, Lea1;->e:I

    if-le v3, v0, :cond_2

    iget-object v1, p0, Lea1;->d:[C

    iget-object p0, p0, Lea1;->b:[Ljava/lang/String;

    sub-int/2addr v3, v0

    invoke-static {v1, p0, v0, v3}, Lea1;->o([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    const-string p0, ""

    :goto_2
    return-object p0
.end method

.method public final x0(Ljava/lang/String;)Z
    .locals 6

    invoke-virtual {p0}, Lea1;->n()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lea1;->f:I

    iget v2, p0, Lea1;->e:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v4, p0, Lea1;->d:[C

    iget v5, p0, Lea1;->e:I

    add-int/2addr v5, v1

    aget-char v4, v4, v5

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final y()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lea1;->n()V

    iget v0, p0, Lea1;->e:I

    iget v1, p0, Lea1;->f:I

    iget-object v2, p0, Lea1;->d:[C

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-char v4, v2, v3

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput v3, p0, Lea1;->e:I

    if-le v3, v0, :cond_1

    iget-object v1, p0, Lea1;->d:[C

    iget-object p0, p0, Lea1;->b:[Ljava/lang/String;

    sub-int/2addr v3, v0

    invoke-static {v1, p0, v0, v3}, Lea1;->o([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method public final y0(Ljava/lang/String;)I
    .locals 8

    invoke-virtual {p0}, Lea1;->n()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget v1, p0, Lea1;->e:I

    :goto_0
    iget v2, p0, Lea1;->f:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lea1;->d:[C

    aget-char v2, v2, v1

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    :goto_1
    add-int/2addr v1, v3

    iget v2, p0, Lea1;->f:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lea1;->d:[C

    aget-char v2, v2, v1

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    sub-int/2addr v4, v3

    iget v5, p0, Lea1;->f:I

    if-ge v1, v5, :cond_2

    if-gt v4, v5, :cond_2

    move v5, v2

    :goto_2
    if-ge v5, v4, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iget-object v7, p0, Lea1;->d:[C

    aget-char v7, v7, v5

    if-ne v6, v7, :cond_1

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    if-ne v5, v4, :cond_2

    iget p0, p0, Lea1;->e:I

    sub-int/2addr v1, p0

    return v1

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method public final z0()I
    .locals 1

    iget v0, p0, Lea1;->h:I

    iget p0, p0, Lea1;->e:I

    add-int/2addr v0, p0

    return v0
.end method
