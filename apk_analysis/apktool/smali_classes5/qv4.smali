.class public final Lqv4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llv4;


# instance fields
.field public final a:Lkv;

.field public final b:Lg6;


# direct methods
.method public constructor <init>(Lkv;Lg6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqv4;->a:Lkv;

    iput-object p2, p0, Lqv4;->b:Lg6;

    return-void
.end method


# virtual methods
.method public final a()Lp08;
    .locals 11

    iget-object v0, p0, Lqv4;->a:Lkv;

    iget-object v1, v0, Lkv;->d:Lc4;

    iget-object v2, v1, Lc4;->b:Lj5;

    invoke-interface {v2}, Lj5;->a()Le08;

    move-result-object v2

    new-instance v3, Lg4;

    invoke-direct {v3, v1}, Lg4;-><init>(Lc4;)V

    new-instance v1, Lq3;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lq3;-><init>(Ljava/lang/Object;I)V

    new-instance v6, Lh08;

    invoke-direct {v6, v2, v1}, Lh08;-><init>(Lmz7;Lxl3;)V

    new-instance v1, Lov;

    invoke-direct {v1, v0, v4}, Lov;-><init>(Ljava/lang/Object;I)V

    new-instance v7, Liv;

    invoke-direct {v7, v1, v4}, Liv;-><init>(Lgh4;I)V

    new-instance v5, Loq1;

    sget-object v8, Lrm3;->d:Lrm3$e;

    sget-object v9, Lrm3;->c:Lrm3$d;

    move-object v10, v9

    invoke-direct/range {v5 .. v10}, Loq1;-><init>(Lqp1;Lqx1;Lqx1;Lh6;Lh6;)V

    iget-object v1, v0, Lkv;->b:Luw;

    invoke-interface {v1}, Luw;->a()Lmz7;

    move-result-object v1

    new-instance v2, Law;

    invoke-direct {v2, v0, v4}, Law;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Ljv;

    invoke-direct {v0, v2, v4}, Ljv;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Le08;

    invoke-direct {v2, v1, v0}, Le08;-><init>(Lmz7;Lxl3;)V

    invoke-virtual {v5, v2}, Lqp1;->d(Lmz7;)Lrz7;

    move-result-object v0

    new-instance v1, Lmv4;

    invoke-direct {v1, p0}, Lmv4;-><init>(Lqv4;)V

    new-instance p0, Ltk1;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Ltk1;-><init>(Lgh4;I)V

    new-instance v1, Lyz7;

    invoke-direct {v1, v0, p0}, Lyz7;-><init>(Lmz7;Lqx1;)V

    new-instance p0, Lzq;

    sget-object v0, Lnv4;->f:Lnv4;

    invoke-direct {p0, v0, v2}, Lzq;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lp08;

    invoke-direct {v0, v1, p0}, Lp08;-><init>(Lmz7;Lxl3;)V

    return-object v0
.end method

.method public final g()Lp08;
    .locals 3

    iget-object v0, p0, Lqv4;->a:Lkv;

    invoke-virtual {v0}, Lkv;->d()Lrz7;

    move-result-object v0

    new-instance v1, Lov4;

    invoke-direct {v1, p0}, Lov4;-><init>(Lqv4;)V

    new-instance p0, Lvk1;

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lvk1;-><init>(Lgh4;I)V

    new-instance v1, Lyz7;

    invoke-direct {v1, v0, p0}, Lyz7;-><init>(Lmz7;Lqx1;)V

    new-instance p0, Li7;

    sget-object v0, Lpv4;->f:Lpv4;

    invoke-direct {p0, v0}, Li7;-><init>(Lnl3;)V

    new-instance v0, Lp08;

    invoke-direct {v0, v1, p0}, Lp08;-><init>(Lmz7;Lxl3;)V

    return-object v0
.end method
