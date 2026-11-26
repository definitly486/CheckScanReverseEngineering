.class public abstract Lyads/je5;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lyads/fe5;)Z
    .locals 0

    iget-object p0, p0, Lyads/fe5;->K0:Lyads/fz2;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lyads/fz2;->a:Lyads/nz2;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
