.class public final Lx51;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lb36<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lst6;",
        ">;+",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/Long;",
        ">;>;",
        "Lqq1;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Ld61;


# direct methods
.method public constructor <init>(Ld61;)V
    .locals 0

    iput-object p1, p0, Lx51;->f:Ld61;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p1

    check-cast v0, Lb36;

    move-object/from16 v1, p0

    iget-object v1, v1, Lx51;->f:Ld61;

    iget-object v1, v1, Ld61;->b:Lzt6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lb36;->b:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Ljava/util/List;

    iget-object v0, v0, Lb36;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/16 v5, 0xa

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    move-object v8, v2

    check-cast v8, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v8, v5}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v9, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lst6;

    invoke-virtual {v8}, Lst6;->e()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v3, v5}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-interface {v1, v6, v7}, Lzt6;->b(J)Lqp1;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2, v5}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lst6;

    new-instance v5, Lrt6;

    invoke-virtual {v4}, Lst6;->e()J

    move-result-wide v6

    invoke-virtual {v4}, Lst6;->k()Lyt6;

    move-result-object v8

    invoke-virtual {v4}, Lst6;->a()Z

    move-result v9

    invoke-virtual {v4}, Lst6;->c()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lst6;->d()J

    move-result-wide v11

    invoke-virtual {v4}, Lst6;->j()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4}, Lst6;->i()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4}, Lst6;->f()Ljava/lang/String;

    move-result-object v15

    sget-object v16, Lvt6;->New:Lvt6;

    invoke-direct/range {v5 .. v16}, Lrt6;-><init>(JLyt6;ZLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lvt6;)V

    invoke-virtual {v4}, Lst6;->h()Lxt6;

    move-result-object v6

    invoke-virtual {v6}, Lxt6;->c()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lst6;->h()Lxt6;

    move-result-object v6

    invoke-virtual {v6}, Lxt6;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lst6;->h()Lxt6;

    move-result-object v6

    invoke-virtual {v6}, Lxt6;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4}, Lst6;->e()J

    move-result-wide v8

    new-instance v7, Lwt6;

    invoke-direct/range {v7 .. v12}, Lwt6;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lst6;->b()Lqt6;

    move-result-object v6

    invoke-virtual {v6}, Lqt6;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lst6;->b()Lqt6;

    move-result-object v8

    invoke-virtual {v8}, Lqt6;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lst6;->e()J

    move-result-wide v9

    new-instance v11, Lpt6;

    invoke-direct {v11, v9, v10, v6, v8}, Lpt6;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lst6;->g()Lut6;

    move-result-object v6

    invoke-virtual {v6}, Lut6;->c()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4}, Lst6;->g()Lut6;

    move-result-object v6

    invoke-virtual {v6}, Lut6;->b()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v4}, Lst6;->g()Lut6;

    move-result-object v6

    invoke-virtual {v6}, Lut6;->a()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v4}, Lst6;->e()J

    move-result-wide v13

    new-instance v12, Ltt6;

    invoke-direct/range {v12 .. v17}, Ltt6;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Lzt6;->g(Lrt6;)Lqp1;

    move-result-object v4

    invoke-interface {v1, v7}, Lzt6;->h(Lwt6;)Lqp1;

    move-result-object v5

    invoke-virtual {v4, v5}, Lqp1;->c(Lqq1;)Lrp1;

    move-result-object v4

    invoke-interface {v1, v11}, Lzt6;->f(Lpt6;)Lqp1;

    move-result-object v5

    invoke-virtual {v4, v5}, Lqp1;->c(Lqq1;)Lrp1;

    move-result-object v4

    invoke-interface {v1, v12}, Lzt6;->e(Ltt6;)Lqp1;

    move-result-object v5

    invoke-virtual {v4, v5}, Lqp1;->c(Lqq1;)Lrp1;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lup1;

    invoke-direct {v0, v1}, Lup1;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method
