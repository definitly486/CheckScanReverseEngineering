.class public abstract Lyads/zs4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lyads/ys4;)Ljava/util/List;
    .locals 1

    instance-of v0, p0, Lyads/zn2;

    if-eqz v0, :cond_0

    check-cast p0, Lyads/zn2;

    iget-object p0, p0, Lyads/zn2;->b:Ljava/util/ArrayList;

    return-object p0

    :cond_0
    instance-of v0, p0, Lyads/at4;

    if-eqz v0, :cond_1

    check-cast p0, Lyads/at4;

    invoke-interface {p0}, Lyads/at4;->c()Lyads/ys4;

    move-result-object p0

    invoke-static {p0}, Lyads/zs4;->a(Lyads/ys4;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Lkx2;->b:Lkx2;

    return-object p0
.end method

.method public static final b(Lyads/ys4;)Lyads/tr4;
    .locals 1

    instance-of v0, p0, Lyads/tr4;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/tr4;

    invoke-direct {v0, p0}, Lyads/tr4;-><init>(Lyads/ys4;)V

    move-object p0, v0

    :goto_0
    check-cast p0, Lyads/tr4;

    return-object p0
.end method
