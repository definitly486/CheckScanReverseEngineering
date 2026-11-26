.class public abstract Lp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public b:Lp0$a;

.field public c:Ljava/lang/String;


# virtual methods
.method public final hasNext()Z
    .locals 9

    iget-object v0, p0, Lp0;->b:Lp0$a;

    sget-object v1, Lp0$a;->FAILED:Lp0$a;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lo8;->r(Z)V

    iget-object v0, p0, Lp0;->b:Lp0$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v4, 0x2

    if-eq v0, v4, :cond_a

    iput-object v1, p0, Lp0;->b:Lp0$a;

    move-object v0, p0

    check-cast v0, Lk68$a;

    iget v1, v0, Lk68$a;->g:I

    :cond_1
    :goto_1
    iget v4, v0, Lk68$a;->g:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_9

    invoke-virtual {v0, v4}, Lk68$a;->b(I)I

    move-result v4

    iget-object v6, v0, Lk68$a;->d:Ljava/lang/CharSequence;

    if-ne v4, v5, :cond_2

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iput v5, v0, Lk68$a;->g:I

    move v7, v5

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v4}, Lk68$a;->a(I)I

    move-result v7

    iput v7, v0, Lk68$a;->g:I

    :goto_2
    if-ne v7, v1, :cond_3

    add-int/lit8 v7, v7, 0x1

    iput v7, v0, Lk68$a;->g:I

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v7, v4, :cond_1

    iput v5, v0, Lk68$a;->g:I

    goto :goto_1

    :cond_3
    :goto_3
    iget-object v7, v0, Lk68$a;->e:Ly91;

    if-ge v1, v4, :cond_4

    invoke-interface {v6, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ly91;->c(C)Z

    move-result v8

    if-eqz v8, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    if-le v4, v1, :cond_5

    add-int/lit8 v8, v4, -0x1

    invoke-interface {v6, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ly91;->c(C)Z

    move-result v8

    if-eqz v8, :cond_5

    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    :cond_5
    iget-boolean v8, v0, Lk68$a;->f:Z

    if-eqz v8, :cond_6

    if-ne v1, v4, :cond_6

    iget v1, v0, Lk68$a;->g:I

    goto :goto_1

    :cond_6
    iget v8, v0, Lk68$a;->h:I

    if-ne v8, v3, :cond_7

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iput v5, v0, Lk68$a;->g:I

    :goto_5
    if-le v4, v1, :cond_8

    add-int/lit8 v0, v4, -0x1

    invoke-interface {v6, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {v7, v0}, Ly91;->c(C)Z

    move-result v0

    if-eqz v0, :cond_8

    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    :cond_7
    sub-int/2addr v8, v3

    iput v8, v0, Lk68$a;->h:I

    :cond_8
    invoke-interface {v6, v1, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_9
    sget-object v1, Lp0$a;->DONE:Lp0$a;

    iput-object v1, v0, Lp0;->b:Lp0$a;

    const/4 v0, 0x0

    :goto_6
    iput-object v0, p0, Lp0;->c:Ljava/lang/String;

    iget-object v0, p0, Lp0;->b:Lp0$a;

    sget-object v1, Lp0$a;->DONE:Lp0$a;

    if-eq v0, v1, :cond_a

    sget-object v0, Lp0$a;->READY:Lp0$a;

    iput-object v0, p0, Lp0;->b:Lp0$a;

    return v3

    :cond_a
    return v2

    :cond_b
    return v3
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lp0;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lp0$a;->NOT_READY:Lp0$a;

    iput-object v0, p0, Lp0;->b:Lp0$a;

    iget-object v0, p0, Lp0;->c:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lp0;->c:Ljava/lang/String;

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
