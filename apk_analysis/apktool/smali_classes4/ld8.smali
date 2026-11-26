.class public final Lld8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lld8$b;,
        Lld8$a;,
        Lld8$c;
    }
.end annotation


# direct methods
.method public static a(Lkd8;)Lkd8;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkd8<",
            "TT;>;)",
            "Lkd8<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p0, Lld8$b;

    if-nez v0, :cond_2

    instance-of v0, p0, Lld8$a;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    new-instance v0, Lld8$a;

    invoke-direct {v0, p0}, Lld8$a;-><init>(Lkd8;)V

    return-object v0

    :cond_1
    new-instance v0, Lld8$b;

    invoke-direct {v0, p0}, Lld8$b;-><init>(Lkd8;)V

    return-object v0

    :cond_2
    return-object p0
.end method
