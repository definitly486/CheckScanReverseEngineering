.class public abstract Lyads/d50;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static varargs a([Lyads/wx3;)Lyads/e50;
    .locals 2

    new-instance v0, Lyads/e50;

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lyads/wx3;

    invoke-direct {v0, p0}, Lyads/e50;-><init>([Lyads/wx3;)V

    return-object v0
.end method
