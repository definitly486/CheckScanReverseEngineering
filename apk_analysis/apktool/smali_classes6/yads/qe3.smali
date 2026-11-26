.class public final Lyads/qe3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final b:[Ljava/lang/Object;

.field public final c:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lyads/re3;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    check-cast v0, Lyads/p55;

    iget v0, v0, Lyads/p55;->g:I

    new-array v1, v0, [Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lyads/re3;->a()Lyads/te3;

    move-result-object p1

    invoke-virtual {p1}, Lyads/ie3;->iterator()Lyads/i46;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lyads/qe3;->b:[Ljava/lang/Object;

    iput-object v0, p0, Lyads/qe3;->c:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final readResolve()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lyads/qe3;->b:[Ljava/lang/Object;

    instance-of v1, v0, Lyads/te3;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object p0, p0, Lyads/qe3;->c:[Ljava/lang/Object;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    move v3, v2

    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_1

    aget-object v4, v0, v2

    aget-object v5, p0, v2

    add-int/lit8 v6, v3, 0x1

    mul-int/lit8 v7, v6, 0x2

    array-length v8, v1

    if-le v7, v8, :cond_0

    array-length v8, v1

    invoke-static {v8, v7}, Lyads/he3;->a(II)I

    move-result v7

    invoke-static {v1, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    :cond_0
    invoke-static {v4, v5}, Lyads/h20;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    mul-int/lit8 v3, v3, 0x2

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    aput-object v5, v1, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v6

    goto :goto_0

    :cond_1
    invoke-static {v3, v1}, Lyads/p55;->a(I[Ljava/lang/Object;)Lyads/p55;

    move-result-object p0

    return-object p0

    :cond_2
    check-cast v0, Lyads/te3;

    iget-object p0, p0, Lyads/qe3;->c:[Ljava/lang/Object;

    check-cast p0, Lyads/ie3;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lyads/ie3;->iterator()Lyads/i46;

    move-result-object v0

    invoke-virtual {p0}, Lyads/ie3;->iterator()Lyads/i46;

    move-result-object p0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    mul-int/lit8 v6, v5, 0x2

    array-length v7, v1

    if-le v6, v7, :cond_3

    array-length v7, v1

    invoke-static {v7, v6}, Lyads/he3;->a(II)I

    move-result v6

    invoke-static {v1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    :cond_3
    invoke-static {v3, v4}, Lyads/h20;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    mul-int/lit8 v2, v2, 0x2

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    aput-object v4, v1, v2

    move v2, v5

    goto :goto_1

    :cond_4
    invoke-static {v2, v1}, Lyads/p55;->a(I[Ljava/lang/Object;)Lyads/p55;

    move-result-object p0

    return-object p0
.end method
