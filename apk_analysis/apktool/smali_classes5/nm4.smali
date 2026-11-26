.class public Lnm4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnm4$a;
    }
.end annotation


# direct methods
.method public static a(Lpo4;Lll3;)Lcl4;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lpo4;",
            "Lll3<",
            "+TT;>;)",
            "Lcl4<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lsm1;->d:Lsm1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lnm4$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    new-instance p0, Lf79;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf79;->b:Lll3;

    iput-object v0, p0, Lf79;->c:Ljava/lang/Object;

    return-object p0

    :cond_0
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance p0, Lwb7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwb7;->b:Lll3;

    iput-object v0, p0, Lwb7;->c:Ljava/lang/Object;

    return-object p0

    :cond_2
    new-instance p0, Lfh8;

    invoke-direct {p0, p1}, Lfh8;-><init>(Lll3;)V

    return-object p0
.end method

.method public static b(Lll3;)Lfh8;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lfh8;

    invoke-direct {v0, p0}, Lfh8;-><init>(Lll3;)V

    return-object v0
.end method
