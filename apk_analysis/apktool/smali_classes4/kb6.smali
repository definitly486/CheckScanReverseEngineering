.class public final synthetic Lkb6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhm3;


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lnb6;

    check-cast p2, Ldb6;

    check-cast p3, Ljava/util/concurrent/ExecutorService;

    check-cast p4, Lrb6;

    check-cast p5, Lnc6;

    check-cast p6, Lxb6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lad6;

    if-nez p4, :cond_0

    new-instance p4, Llb6;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    :cond_0
    if-nez p6, :cond_1

    new-instance p6, Lmb6;

    invoke-direct {p6}, Ljava/lang/Object;-><init>()V

    :cond_1
    move-object v0, p6

    move-object p6, p5

    move-object p5, v0

    invoke-direct/range {p0 .. p6}, Lad6;-><init>(Lnb6;Ldb6;Ljava/util/concurrent/ExecutorService;Lrb6;Lxb6;Lnc6;)V

    return-object p0
.end method
