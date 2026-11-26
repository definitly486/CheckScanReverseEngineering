.class public final Lzl7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq21;
.implements Lcm7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzl7$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lq21;",
        "Lcm7<",
        "TR;>;"
    }
.end annotation


# static fields
.field public static final synthetic g:J

.field public static final synthetic h:I


# instance fields
.field public final b:Lo22;

.field public c:Ljava/util/ArrayList;

.field public d:Ljava/lang/Object;

.field public e:I

.field public f:Ljava/lang/Object;

.field private volatile synthetic state$volatile:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    const-class v1, Lzl7;

    const-string v2, "state$volatile"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lzl7;->g:J

    return-void
.end method

.method public constructor <init>(Lo22;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzl7;->b:Lo22;

    sget-object p1, Ldm7;->a:Lbh8;

    iput-object p1, p0, Lzl7;->state$volatile:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lzl7;->c:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Lzl7;->e:I

    sget-object p1, Ldm7;->d:Lbh8;

    iput-object p1, p0, Lzl7;->f:Ljava/lang/Object;

    return-void
.end method

.method public static g(Lzl7;Lpg8;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v1, Lzl7;->g:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lzl7$a;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lzl7;->f(Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lzl7;->h(Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lhl7;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhl7<",
            "*>;I)V"
        }
    .end annotation

    iput-object p1, p0, Lzl7;->d:Ljava/lang/Object;

    iput p2, p0, Lzl7;->e:I

    return-void
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 8

    :goto_0
    sget-object p1, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v0, Lzl7;->g:J

    invoke-virtual {p1, p0, v0, v1}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    sget-object p1, Ldm7;->b:Lbh8;

    if-ne v6, p1, :cond_0

    goto :goto_2

    :cond_0
    :goto_1
    sget-object v2, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v4, Lzl7;->g:J

    sget-object v7, Ldm7;->c:Lbh8;

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    iget-object p0, v3, Lzl7;->c:Ljava/util/ArrayList;

    if-nez p0, :cond_1

    :goto_2
    return-void

    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzl7$a;

    invoke-virtual {p1}, Lzl7$a;->a()V

    goto :goto_3

    :cond_2
    sget-object p0, Ldm7;->d:Lbh8;

    iput-object p0, v3, Lzl7;->f:Ljava/lang/Object;

    const/4 p0, 0x0

    iput-object p0, v3, Lzl7;->c:Ljava/util/ArrayList;

    return-void

    :cond_3
    invoke-virtual {v2, v3, v0, v1}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eq p0, v6, :cond_4

    move-object p0, v3

    goto :goto_0

    :cond_4
    move-object p0, v3

    goto :goto_1
.end method

.method public final c(Lhp2;)V
    .locals 0

    iput-object p1, p0, Lzl7;->d:Ljava/lang/Object;

    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lzl7;->f:Ljava/lang/Object;

    return-void
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lzl7;->m(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final f(Lf02;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v1, Lzl7;->g:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lzl7$a;

    iget-object v3, v0, Lzl7$a;->d:Ljava/lang/Object;

    iget-object v4, p0, Lzl7;->f:Ljava/lang/Object;

    iget-object v5, p0, Lzl7;->c:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lzl7$a;

    if-eq v6, v0, :cond_1

    invoke-virtual {v6}, Lzl7$a;->a()V

    goto :goto_0

    :cond_2
    sget-object v5, Ldm7;->b:Lbh8;

    sget-object v6, Lpz0;->a:Lsun/misc/Unsafe;

    invoke-virtual {v6, p0, v1, v2, v5}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    sget-object v1, Ldm7;->d:Lbh8;

    iput-object v1, p0, Lzl7;->f:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lzl7;->c:Ljava/util/ArrayList;

    :goto_1
    iget-object p0, v0, Lzl7$a;->c:Ldm3;

    iget-object v1, v0, Lzl7$a;->a:Ljava/lang/Object;

    invoke-interface {p0, v1, v3, v4}, Ldm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iget-object v0, v0, Lzl7$a;->e:Lpg8;

    sget-object v1, Ldm7;->e:Lbh8;

    if-ne v3, v1, :cond_3

    check-cast v0, Lnl3;

    invoke-interface {v0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    check-cast v0, Lbm3;

    invoke-interface {v0, p0, p1}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getContext()Lo22;
    .locals 0

    iget-object p0, p0, Lzl7;->b:Lo22;

    return-object p0
.end method

.method public final h(Lf02;)Ljava/lang/Object;
    .locals 14

    instance-of v2, p1, Lam7;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lam7;

    iget v3, v2, Lam7;->n:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lam7;->n:I

    :goto_0
    move-object v6, v2

    goto :goto_1

    :cond_0
    new-instance v2, Lam7;

    invoke-direct {v2, p0, p1}, Lam7;-><init>(Lzl7;Lf02;)V

    goto :goto_0

    :goto_1
    iget-object v0, v6, Lam7;->l:Ljava/lang/Object;

    sget-object v7, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v6, Lam7;->n:I

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v10, :cond_2

    if-ne v2, v9, :cond_1

    invoke-static {v0}, Lr57;->b(Ljava/lang/Object;)V

    return-object v0

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v8

    :cond_2
    invoke-static {v0}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_3
    invoke-static {v0}, Lr57;->b(Ljava/lang/Object;)V

    iput v10, v6, Lam7;->n:I

    new-instance v5, Lc31;

    invoke-static {v6}, Lzya;->b(Le02;)Le02;

    move-result-object v0

    invoke-direct {v5, v10, v0}, Lc31;-><init>(ILe02;)V

    invoke-virtual {v5}, Lc31;->u()V

    :goto_2
    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v11, Lzl7;->g:J

    invoke-virtual {v0, p0, v11, v12}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v5

    sget-object v5, Ldm7;->a:Lbh8;

    if-ne v4, v5, :cond_6

    move-object v5, v0

    :goto_3
    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lzl7;->g:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    move-object v13, v5

    if-eqz v2, :cond_4

    invoke-virtual {v13, p0}, Lc31;->w(Lno5;)V

    goto :goto_6

    :cond_4
    invoke-virtual {v0, p0, v11, v12}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v4, :cond_5

    goto :goto_5

    :cond_5
    move-object v5, v13

    goto :goto_3

    :cond_6
    move-object v13, v0

    instance-of v0, v4, Ljava/util/List;

    if-eqz v0, :cond_a

    :cond_7
    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lzl7;->g:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lzl7;->i(Ljava/lang/Object;)Lzl7$a;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v8, v2, Lzl7$a;->g:Ljava/lang/Object;

    const/4 v3, -0x1

    iput v3, v2, Lzl7$a;->h:I

    invoke-virtual {p0, v2, v10}, Lzl7;->l(Lzl7$a;Z)V

    goto :goto_4

    :cond_8
    invoke-virtual {v0, p0, v11, v12}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v4, :cond_7

    :cond_9
    :goto_5
    move-object v5, v13

    goto :goto_2

    :cond_a
    instance-of v0, v4, Lzl7$a;

    if-eqz v0, :cond_f

    sget-object v0, Lj59;->a:Lj59;

    check-cast v4, Lzl7$a;

    iget-object v2, p0, Lzl7;->f:Ljava/lang/Object;

    iget-object v3, v4, Lzl7$a;->f:Ldm3;

    if-eqz v3, :cond_b

    iget-object v4, v4, Lzl7$a;->d:Ljava/lang/Object;

    invoke-interface {v3, p0, v4, v2}, Ldm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ldm3;

    :cond_b
    invoke-virtual {v13, v0, v8}, Lc31;->q(Ljava/lang/Object;Ldm3;)V

    :goto_6
    invoke-virtual {v13}, Lc31;->s()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, La32;->COROUTINE_SUSPENDED:La32;

    if-ne v0, v2, :cond_c

    goto :goto_7

    :cond_c
    sget-object v0, Lj59;->a:Lj59;

    :goto_7
    if-ne v0, v7, :cond_d

    goto :goto_9

    :cond_d
    :goto_8
    iput v9, v6, Lam7;->n:I

    invoke-virtual {p0, v6}, Lzl7;->f(Lf02;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_e

    :goto_9
    return-object v7

    :cond_e
    return-object v0

    :cond_f
    const-string v0, "unexpected state: "

    invoke-static {v4, v0}, Lad2;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v8
.end method

.method public final i(Ljava/lang/Object;)Lzl7$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lzl7<",
            "TR;>.a;"
        }
    .end annotation

    iget-object p0, p0, Lzl7;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lzl7$a;

    iget-object v2, v2, Lzl7$a;->a:Ljava/lang/Object;

    if-ne v2, p1, :cond_1

    move-object v0, v1

    :cond_2
    check-cast v0, Lzl7$a;

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Clause with object "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not found"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final j(Lvl7;Lnl3;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvl7;",
            "Lnl3<",
            "-",
            "Le02<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lzl7$a;

    invoke-interface {p1}, Lyl7;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Lyl7;->c()Ldm3;

    move-result-object v3

    invoke-interface {p1}, Lyl7;->b()Ldm3;

    move-result-object v4

    invoke-interface {p1}, Lyl7;->a()Ldm3;

    move-result-object v7

    move-object v6, p2

    check-cast v6, Lpg8;

    sget-object v5, Ldm7;->e:Lbh8;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lzl7$a;-><init>(Lzl7;Ljava/lang/Object;Ldm3;Ldm3;Ljava/lang/Object;Lpg8;Ldm3;)V

    const/4 p0, 0x0

    invoke-virtual {v1, v0, p0}, Lzl7;->l(Lzl7$a;Z)V

    return-void
.end method

.method public final k(Lwl7;Lbm3;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Q:",
            "Ljava/lang/Object;",
            ">(",
            "Lwl7;",
            "Lbm3<",
            "-TQ;-",
            "Le02<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lzl7$a;

    invoke-interface {p1}, Lyl7;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Lyl7;->c()Ldm3;

    move-result-object v3

    invoke-interface {p1}, Lyl7;->b()Ldm3;

    move-result-object v4

    invoke-interface {p1}, Lyl7;->a()Ldm3;

    move-result-object v7

    move-object v6, p2

    check-cast v6, Lpg8;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lzl7$a;-><init>(Lzl7;Ljava/lang/Object;Ldm3;Ldm3;Ljava/lang/Object;Lpg8;Ldm3;)V

    const/4 p0, 0x0

    invoke-virtual {v1, v0, p0}, Lzl7;->l(Lzl7$a;Z)V

    return-void
.end method

.method public final l(Lzl7$a;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzl7<",
            "TR;>.a;Z)V"
        }
    .end annotation

    iget-object v0, p1, Lzl7$a;->a:Ljava/lang/Object;

    sget-object v1, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lzl7;->g:J

    invoke-virtual {v1, p0, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lzl7$a;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_3

    iget-object v1, p0, Lzl7;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzl7$a;

    iget-object v4, v4, Lzl7$a;->a:Ljava/lang/Object;

    if-eq v4, v0, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, "Cannot use select clauses on the same object: "

    invoke-static {v0, p0}, Lvh;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    iget-object v1, p1, Lzl7$a;->b:Ldm3;

    iget-object v4, p1, Lzl7$a;->d:Ljava/lang/Object;

    invoke-interface {v1, v0, p0, v4}, Ldm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lzl7;->f:Ljava/lang/Object;

    sget-object v1, Ldm7;->d:Lbh8;

    if-ne v0, v1, :cond_5

    if-nez p2, :cond_4

    iget-object p2, p0, Lzl7;->c:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object p2, p0, Lzl7;->d:Ljava/lang/Object;

    iput-object p2, p1, Lzl7$a;->g:Ljava/lang/Object;

    iget p2, p0, Lzl7;->e:I

    iput p2, p1, Lzl7$a;->h:I

    const/4 p1, 0x0

    iput-object p1, p0, Lzl7;->d:Ljava/lang/Object;

    const/4 p1, -0x1

    iput p1, p0, Lzl7;->e:I

    return-void

    :cond_5
    sget-object p2, Lpz0;->a:Lsun/misc/Unsafe;

    invoke-virtual {p2, p0, v2, v3, p1}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public final m(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 11

    :goto_0
    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v1, Lzl7;->g:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    instance-of v0, v7, La31;

    const/4 v9, 0x0

    const/4 v10, 0x2

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Lzl7;->i(Ljava/lang/Object;)Lzl7$a;

    move-result-object v8

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v8, Lzl7$a;->f:Ldm3;

    if-eqz v0, :cond_1

    iget-object v3, v8, Lzl7$a;->d:Ljava/lang/Object;

    invoke-interface {v0, p0, v3, p2}, Ldm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldm3;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sget-object v3, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v5, Lzl7;->g:J

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    check-cast v7, La31;

    iput-object p2, v4, Lzl7;->f:Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    invoke-interface {v7, p0, v0}, La31;->k(Ljava/lang/Object;Ldm3;)Lbh8;

    move-result-object p0

    if-nez p0, :cond_2

    sget-object p0, Ldm7;->d:Lbh8;

    iput-object p0, v4, Lzl7;->f:Ljava/lang/Object;

    return v10

    :cond_2
    invoke-interface {v7, p0}, La31;->j(Ljava/lang/Object;)V

    return v9

    :cond_3
    invoke-virtual {v3, v4, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eq p0, v7, :cond_4

    :goto_2
    move-object p0, v4

    goto :goto_0

    :cond_4
    move-object p0, v4

    goto :goto_1

    :cond_5
    move-object v4, p0

    sget-object p0, Ldm7;->b:Lbh8;

    invoke-static {v7, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    instance-of p0, v7, Lzl7$a;

    if-eqz p0, :cond_6

    goto :goto_4

    :cond_6
    sget-object p0, Ldm7;->c:Lbh8;

    invoke-static {v7, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    return v10

    :cond_7
    sget-object p0, Ldm7;->a:Lbh8;

    invoke-static {v7, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-static {p1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    :cond_8
    sget-object v3, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v5, Lzl7;->g:J

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {v3, v4, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eq p0, v7, :cond_8

    goto :goto_2

    :cond_a
    instance-of p0, v7, Ljava/util/List;

    if-eqz p0, :cond_d

    move-object p0, v7

    check-cast p0, Ljava/util/Collection;

    invoke-static {p1, p0}, Lqn1;->i0(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v8

    :cond_b
    sget-object v3, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v5, Lzl7;->g:J

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    :goto_3
    const/4 p0, 0x1

    return p0

    :cond_c
    invoke-virtual {v3, v4, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    if-eq p0, v7, :cond_b

    goto :goto_2

    :cond_d
    const-string p0, "Unexpected state: "

    invoke-static {v7, p0}, Lad2;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return v9

    :cond_e
    :goto_4
    const/4 p0, 0x3

    return p0
.end method
