.class public final Lz07;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz07$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/util/List;Ljava/lang/Class;)Ly07$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ly07;",
            ">;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ly07$a;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly07;

    invoke-interface {p1}, Ly07;->a()Ly07$a;

    move-result-object p1

    sget-object v0, Ly07$a;->INDECISIVE:Ly07$a;

    if-eq p1, v0, :cond_0

    return-object p1

    :cond_1
    sget-object p0, Ly07$a;->ALLOW:Ly07$a;

    return-object p0
.end method
