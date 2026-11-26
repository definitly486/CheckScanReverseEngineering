.class public abstract Lj1;
.super Ldx6;
.source "SourceFile"


# virtual methods
.method public final a(I)I
    .locals 0

    invoke-virtual {p0}, Lj1;->b()Ljava/util/Random;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    return p0
.end method

.method public abstract b()Ljava/util/Random;
.end method

.method public final d()I
    .locals 0

    invoke-virtual {p0}, Lj1;->b()Ljava/util/Random;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Random;->nextInt()I

    move-result p0

    return p0
.end method
