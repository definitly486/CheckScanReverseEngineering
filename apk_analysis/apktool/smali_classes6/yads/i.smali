.class public abstract Lyads/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public b:I

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lyads/i;->b:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 11

    iget v0, p0, Lyads/i;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_c

    invoke-static {v0}, Lyads/xn0;->a(I)I

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_b

    const/4 v4, 0x2

    if-eq v0, v4, :cond_a

    iput v2, p0, Lyads/i;->b:I

    move-object v0, p0

    check-cast v0, Lyads/np5;

    iget v2, v0, Lyads/np5;->f:I

    :cond_0
    :goto_0
    iget v4, v0, Lyads/np5;->f:I

    const/4 v5, 0x3

    const/4 v6, -0x1

    if-eq v4, v6, :cond_9

    iget-object v7, v0, Lyads/np5;->h:Lyads/op5;

    iget-object v7, v7, Lyads/op5;->a:Lyads/yy;

    iget-object v8, v0, Lyads/np5;->d:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-static {v4, v9}, Lyads/wx4;->b(II)V

    :goto_1
    if-ge v4, v9, :cond_2

    invoke-interface {v8, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    invoke-virtual {v7, v10}, Lyads/yy;->a(C)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move v4, v6

    :goto_2
    if-ne v4, v6, :cond_3

    iget-object v4, v0, Lyads/np5;->d:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iput v6, v0, Lyads/np5;->f:I

    move v7, v6

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v4, 0x1

    iput v7, v0, Lyads/np5;->f:I

    :goto_3
    if-ne v7, v2, :cond_4

    add-int/lit8 v7, v7, 0x1

    iput v7, v0, Lyads/np5;->f:I

    iget-object v4, v0, Lyads/np5;->d:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v7, v4, :cond_0

    iput v6, v0, Lyads/np5;->f:I

    goto :goto_0

    :cond_4
    if-ge v2, v4, :cond_5

    iget-object v7, v0, Lyads/np5;->e:Lyads/zy;

    iget-object v8, v0, Lyads/np5;->d:Ljava/lang/CharSequence;

    invoke-interface {v8, v2}, Ljava/lang/CharSequence;->charAt(I)C

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_5
    if-le v4, v2, :cond_6

    iget-object v7, v0, Lyads/np5;->e:Lyads/zy;

    iget-object v8, v0, Lyads/np5;->d:Ljava/lang/CharSequence;

    add-int/lit8 v9, v4, -0x1

    invoke-interface {v8, v9}, Ljava/lang/CharSequence;->charAt(I)C

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_6
    iget v7, v0, Lyads/np5;->g:I

    if-ne v7, v3, :cond_7

    iget-object v4, v0, Lyads/np5;->d:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iput v6, v0, Lyads/np5;->f:I

    if-le v4, v2, :cond_8

    iget-object v6, v0, Lyads/np5;->e:Lyads/zy;

    iget-object v7, v0, Lyads/np5;->d:Ljava/lang/CharSequence;

    add-int/lit8 v8, v4, -0x1

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_4

    :cond_7
    sub-int/2addr v7, v3

    iput v7, v0, Lyads/np5;->g:I

    :cond_8
    :goto_4
    iget-object v0, v0, Lyads/np5;->d:Ljava/lang/CharSequence;

    invoke-interface {v0, v2, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_9
    iput v5, v0, Lyads/i;->b:I

    const/4 v0, 0x0

    :goto_5
    iput-object v0, p0, Lyads/i;->c:Ljava/lang/String;

    iget v0, p0, Lyads/i;->b:I

    if-eq v0, v5, :cond_a

    iput v3, p0, Lyads/i;->b:I

    return v3

    :cond_a
    return v1

    :cond_b
    return v3

    :cond_c
    invoke-static {}, Lud;->g()V

    return v1
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lyads/i;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lyads/i;->b:I

    iget-object v0, p0, Lyads/i;->c:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lyads/i;->c:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-static {}, Lqz0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
