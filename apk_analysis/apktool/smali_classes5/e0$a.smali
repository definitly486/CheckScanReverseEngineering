.class public final Le0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Le0;[Lnl3;Lnl3;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Target:",
            "Ljava/lang/Object;",
            "ActualSelf::",
            "Le0<",
            "TTarget;TActualSelf;>;>(",
            "Le0<",
            "TTarget;TActualSelf;>;[",
            "Lnl3<",
            "-TActualSelf;",
            "Lj59;",
            ">;",
            "Lnl3<",
            "-TActualSelf;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    invoke-interface {p0}, Le0;->s()Le0;

    move-result-object v4

    invoke-interface {v3, v4}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4}, Le0;->o()Lnq;

    move-result-object v3

    new-instance v4, Lwu1;

    iget-object v3, v3, Lnq;->a:Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Lwu1;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Le0;->s()Le0;

    move-result-object p1

    invoke-interface {p2, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Le0;->o()Lnq;

    move-result-object p1

    new-instance p2, Lwu1;

    iget-object p1, p1, Lnq;->a:Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Lwu1;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {p0}, Le0;->o()Lnq;

    move-result-object p0

    new-instance p1, Lwc;

    invoke-direct {p1, p2, v0}, Lwc;-><init>(Lwu1;Ljava/util/ArrayList;)V

    invoke-virtual {p0, p1}, Lnq;->a(Lti3;)V

    return-void
.end method

.method public static b(Le0;Ljava/lang/String;Lnl3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Target:",
            "Ljava/lang/Object;",
            "ActualSelf::",
            "Le0<",
            "TTarget;TActualSelf;>;>(",
            "Le0<",
            "TTarget;TActualSelf;>;",
            "Ljava/lang/String;",
            "Lnl3<",
            "-TActualSelf;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Le0;->o()Lnq;

    move-result-object v0

    invoke-interface {p0}, Le0;->s()Le0;

    move-result-object p0

    invoke-interface {p2, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lj59;->a:Lj59;

    invoke-interface {p0}, Le0;->o()Lnq;

    move-result-object p0

    new-instance p2, Lwu1;

    iget-object p0, p0, Lnq;->a:Ljava/util/ArrayList;

    invoke-direct {p2, p0}, Lwu1;-><init>(Ljava/util/ArrayList;)V

    new-instance p0, Luz5;

    invoke-direct {p0, p1, p2}, Luz5;-><init>(Ljava/lang/String;Lwu1;)V

    invoke-virtual {v0, p0}, Lnq;->a(Lti3;)V

    return-void
.end method

.method public static c(Le0;)Lyx0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Target:",
            "Ljava/lang/Object;",
            "ActualSelf::",
            "Le0<",
            "TTarget;TActualSelf;>;>(",
            "Le0<",
            "TTarget;TActualSelf;>;)",
            "Lyx0<",
            "TTarget;>;"
        }
    .end annotation

    new-instance v0, Lyx0;

    invoke-interface {p0}, Le0;->o()Lnq;

    move-result-object p0

    iget-object p0, p0, Lnq;->a:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Lyx0;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public static d(Le0;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Target:",
            "Ljava/lang/Object;",
            "ActualSelf::",
            "Le0<",
            "TTarget;TActualSelf;>;>(",
            "Le0<",
            "TTarget;TActualSelf;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Le0;->o()Lnq;

    move-result-object p0

    new-instance v0, Lhx1;

    invoke-direct {v0, p1}, Lhx1;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnq;->a(Lti3;)V

    return-void
.end method
