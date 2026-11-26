.class public abstract Lcom/my/target/b1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/b1$a;
    }
.end annotation


# instance fields
.field public final a:Lz2a;

.field public final b:Lcom/my/target/t0$a;

.field public c:Lcom/my/target/b1$a;


# direct methods
.method public constructor <init>(Lcom/my/target/u$a;Lz2a;Lcom/my/target/t0$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/my/target/b1;->a:Lz2a;

    iput-object p3, p0, Lcom/my/target/b1;->b:Lcom/my/target/t0$a;

    return-void
.end method

.method public static b(Lcom/my/target/t0;IJ)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    iget-object p2, p0, Lcom/my/target/t0;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    add-long/2addr v0, p2

    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/my/target/t0;->a(IJ)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;Lkia;Lcom/my/target/v2;Lcom/my/target/t0;Lj8a;)Lvha;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v4, p4

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object/from16 v1, p2

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Llia;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v2, v0, Lcom/my/target/b1;->a:Lz2a;

    iget-object v11, v2, Lz2a;->h:Lik0;

    iget-object v7, v2, Lz2a;->g:Lz8a;

    new-instance v8, Lg5a;

    invoke-direct {v8, v7}, Lg5a;-><init>(Lz8a;)V

    iget-object v7, v3, Llia;->a:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v7, v9, v9}, Lg5a;->U(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lvda;

    move-result-object v12

    const/4 v7, 0x1

    invoke-static {v4, v7, v5, v6}, Lcom/my/target/b1;->b(Lcom/my/target/t0;IJ)V

    iget-boolean v5, v12, Lvda;->a:Z

    if-nez v5, :cond_0

    new-instance v2, Lyn9;

    invoke-direct {v2, v12, v1}, Lyn9;-><init>(Lvda;Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_0
    const-string v5, "serviceRequested"

    invoke-virtual {v3, v5}, Llia;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, v2, Lz2a;->g:Lz8a;

    invoke-static {v5, v6, v11}, Lcom/my/target/m1;->b(Ljava/util/ArrayList;Lz8a;Lik0;)V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lvha;->a()I

    move-result v5

    move v14, v5

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    :goto_1
    iget-object v5, v12, Lvda;->c:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-wide v7, v6

    iget-object v6, v0, Lcom/my/target/b1;->b:Lcom/my/target/t0$a;

    move-wide v15, v7

    const/4 v8, 0x0

    move-object/from16 p2, v5

    move-object v5, v2

    move-object/from16 v2, p2

    move-object/from16 v9, p5

    move-object v7, v4

    move/from16 p2, v14

    move-wide v13, v15

    move-object v4, v1

    move-object/from16 v1, p3

    invoke-virtual/range {v1 .. v9}, Lcom/my/target/v2;->d(Ljava/lang/String;Llia;Lvha;Lz2a;Lcom/my/target/t0$a;Lcom/my/target/t0;Ljava/util/ArrayList;Lj8a;)Lkia;

    move-result-object v2

    move-object v6, v3

    move-object v4, v7

    move-object v7, v5

    const/4 v1, 0x2

    invoke-static {v4, v1, v13, v14}, Lcom/my/target/b1;->b(Lcom/my/target/t0;IJ)V

    iget-object v1, v6, Llia;->b:Ljava/util/ArrayList;

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/my/target/b1;->a(Ljava/util/ArrayList;Lkia;Lcom/my/target/v2;Lcom/my/target/t0;Lj8a;)Lvha;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v4, v1

    move-object v7, v2

    move-object v6, v3

    move/from16 p2, v14

    :goto_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lvha;->a()I

    move-result v13

    :goto_3
    move/from16 v5, p2

    goto :goto_4

    :cond_3
    const/4 v13, 0x0

    goto :goto_3

    :goto_4
    if-ne v5, v13, :cond_4

    const-string v0, "serviceAnswerEmpty"

    invoke-virtual {v6, v0}, Llia;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, v7, Lz2a;->g:Lz8a;

    invoke-static {v0, v2, v11}, Lcom/my/target/m1;->b(Ljava/util/ArrayList;Lz8a;Lik0;)V

    :cond_4
    new-instance v2, Lyn9;

    invoke-direct {v2, v12, v1}, Lyn9;-><init>(Lvda;Ljava/lang/Object;)V

    :goto_5
    iget-object v0, v2, Lyn9;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lvha;

    move-object/from16 v0, p0

    move-object/from16 v4, p4

    goto/16 :goto_0

    :cond_5
    move-object v4, v1

    return-object v4

    :cond_6
    return-object p2
.end method

.method public final c(Lvha;Lj8a;Lcom/my/target/t0;)V
    .locals 1

    invoke-virtual {p3}, Lcom/my/target/t0;->b()V

    iget-object p3, p0, Lcom/my/target/b1;->c:Lcom/my/target/b1$a;

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p3, v0, :cond_1

    iget-object p3, p0, Lcom/my/target/b1;->c:Lcom/my/target/b1$a;

    invoke-interface {p3, p1, p2}, Lcom/my/target/b1$a;->a(Lvha;Lj8a;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/my/target/b1;->c:Lcom/my/target/b1$a;

    return-void

    :cond_1
    new-instance p3, Lf52;

    const/4 v0, 0x1

    invoke-direct {p3, p0, p1, p2, v0}, Lf52;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {p3}, Lw4a;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d(Lvha;Lj8a;)Lvha;
    .locals 2

    iget-object p0, p0, Lcom/my/target/b1;->a:Lz2a;

    iget-object p0, p0, Lz2a;->g:Lz8a;

    const/16 v0, 0xfa0

    invoke-virtual {p0, v0}, Lz8a;->b(I)V

    if-eqz p1, :cond_9

    check-cast p1, Lkia;

    iget-object p0, p1, Lkia;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p1, Lvha;->a:Lfq9;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lfq9;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object p0, Ll6a;->r:Ll6a;

    invoke-virtual {p2, p0}, Lj8a;->a(Ll6a;)V

    return-object v1

    :cond_1
    invoke-static {p0}, Ltc0;->c(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljia;

    iget-object v0, p2, Lao9;->a:Ln4a;

    iget-boolean v1, v0, Ln4a;->i:Z

    if-nez v1, :cond_3

    invoke-static {v0}, Ltc0;->d(Ln4a;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    instance-of v0, p2, Lxda;

    if-eqz v0, :cond_4

    move-object v0, p2

    check-cast v0, Lxda;

    iget-object v0, v0, Lxda;->Z:Lkha;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lao9;->a:Ln4a;

    iget-boolean v1, v0, Ln4a;->i:Z

    if-nez v1, :cond_4

    invoke-static {v0}, Ltc0;->d(Ln4a;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    instance-of v0, p2, Lj1a;

    if-eqz v0, :cond_2

    check-cast p2, Lj1a;

    iget-object v0, p2, Lj1a;->a0:Ly8a;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lu1;->b:Ljava/lang/Object;

    check-cast v0, Ln4a;

    iget-boolean v1, v0, Ln4a;->i:Z

    if-nez v1, :cond_5

    invoke-static {v0}, Ltc0;->d(Ln4a;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    iget-object v0, p2, Lj1a;->X:Lj4a;

    iget-object v0, v0, Lu1;->b:Ljava/lang/Object;

    check-cast v0, Ln4a;

    iget-boolean v1, v0, Ln4a;->i:Z

    if-nez v1, :cond_6

    invoke-static {v0}, Ltc0;->d(Ln4a;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    iget-object p2, p2, Lj1a;->Y:Lk6a;

    iget-object p2, p2, Lu1;->b:Ljava/lang/Object;

    check-cast p2, Ln4a;

    iget-boolean v0, p2, Ln4a;->i:Z

    if-nez v0, :cond_2

    invoke-static {p2}, Ltc0;->d(Ln4a;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_7
    :goto_0
    return-object p1

    :cond_8
    sget-object p0, Ll6a;->s:Ll6a;

    invoke-virtual {p2, p0}, Lj8a;->a(Ll6a;)V

    return-object v1

    :cond_9
    return-object p1
.end method
