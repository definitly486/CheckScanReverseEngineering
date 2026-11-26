.class public final Lqv;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqv$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lwu4;",
        "Lc18<",
        "+",
        "Lb36<",
        "+",
        "Lxu4;",
        "+",
        "Lwu4$a;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lkv;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkv;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lqv;->f:Lkv;

    iput-object p2, p0, Lqv;->g:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    check-cast p1, Lwu4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lwu4;->a:Lxu4;

    iget-object v1, p1, Lwu4;->b:Lh3;

    iget-object v2, p1, Lwu4;->c:Ljava/lang/String;

    iget-object p1, p1, Lwu4;->d:Lwu4$a;

    sget-object v3, Lxu4;->LoggedIn:Lxu4;

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v0, v3, :cond_1

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    if-eqz v2, :cond_0

    iget-object v0, p0, Lqv;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lqv;->f:Lkv;

    iget-object v0, p0, Lkv;->d:Lc4;

    new-instance v6, Lr3;

    invoke-direct {v6, v0, v2, v1}, Lr3;-><init>(Lc4;Ljava/lang/String;Lh3;)V

    new-instance v1, Lwp1;

    invoke-direct {v1, v6}, Lwp1;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v6, Ls3;

    invoke-direct {v6, v0, v2}, Ls3;-><init>(Lc4;Ljava/lang/String;)V

    new-instance v0, Lwp1;

    invoke-direct {v0, v6}, Lwp1;-><init>(Ljava/util/concurrent/Callable;)V

    new-array v2, v5, [Lqq1;

    const/4 v5, 0x0

    aput-object v1, v2, v5

    aput-object v0, v2, v4

    new-instance v7, Liq1;

    invoke-direct {v7, v2}, Liq1;-><init>([Lqq1;)V

    new-instance v11, Lgv;

    invoke-direct {v11, p0}, Lgv;-><init>(Lkv;)V

    new-instance v6, Loq1;

    sget-object v8, Lrm3;->d:Lrm3$e;

    sget-object v10, Lrm3;->c:Lrm3$d;

    move-object v9, v8

    invoke-direct/range {v6 .. v11}, Loq1;-><init>(Lqp1;Lqx1;Lqx1;Lh6;Lh6;)V

    invoke-virtual {v6}, Lqp1;->g()Lcp2;

    move-result-object v0

    iget-object p0, p0, Lkv;->g:Lfu1;

    invoke-virtual {p0, v0}, Lfu1;->b(Lcp2;)Z

    new-instance p0, Lb36;

    invoke-direct {p0, v3, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0}, Lmz7;->e(Ljava/lang/Object;)Lo08;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Authentication token is not received"

    invoke-static {p0}, Ls0;->c(Ljava/lang/String;)V

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object p1

    :cond_1
    sget-object p0, Lqv$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p0, p0, v1

    if-eq p0, v4, :cond_3

    if-eq p0, v5, :cond_2

    new-instance p0, Lkd$a$g$a;

    invoke-direct {p0}, Lkd$a$g$a;-><init>()V

    invoke-virtual {p0}, Lkd;->a()V

    goto :goto_0

    :cond_2
    new-instance p0, Lkd$a$g$b;

    const-string v1, "PASSWORD_LOGIN_INCORRECT"

    invoke-direct {p0, v1}, Lkd$a$g;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lkd;->a()V

    goto :goto_0

    :cond_3
    new-instance p0, Lkd$a$g$a;

    invoke-direct {p0}, Lkd$a$g$a;-><init>()V

    invoke-virtual {p0}, Lkd;->a()V

    :goto_0
    new-instance p0, Lb36;

    invoke-direct {p0, v0, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0}, Lmz7;->e(Ljava/lang/Object;)Lo08;

    move-result-object p0

    return-object p0
.end method
