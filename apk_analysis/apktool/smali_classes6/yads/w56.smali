.class public abstract Lyads/w56;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lyads/fs2;)Lyads/gs2;
    .locals 1

    instance-of v0, p0, Lyads/gs2;

    if-eqz v0, :cond_0

    check-cast p0, Lyads/gs2;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final b(Lyads/fs2;)Lyads/z66;
    .locals 0

    invoke-static {p0}, Lyads/w56;->a(Lyads/fs2;)Lyads/gs2;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lyads/gs2;->d:Lyads/z66;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
