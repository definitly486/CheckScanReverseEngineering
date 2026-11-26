.class public final Lqm6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lom6;


# instance fields
.field public final a:Lmk6;

.field public final b:Lk5;


# direct methods
.method public constructor <init>(Lmk6;Lk5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqm6;->a:Lmk6;

    iput-object p2, p0, Lqm6;->b:Lk5;

    return-void
.end method


# virtual methods
.method public final a(Lf02;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lpm6;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lpm6;

    iget v3, v2, Lpm6;->o:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lpm6;->o:I

    goto :goto_0

    :cond_0
    new-instance v2, Lpm6;

    invoke-direct {v2, v0, v1}, Lpm6;-><init>(Lqm6;Lf02;)V

    :goto_0
    iget-object v1, v2, Lpm6;->m:Ljava/lang/Object;

    sget-object v3, La32;->COROUTINE_SUSPENDED:La32;

    iget v4, v2, Lpm6;->o:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v0, v2, Lpm6;->l:Lrm6;

    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v7

    :cond_2
    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    iput v6, v2, Lpm6;->o:I

    iget-object v1, v0, Lqm6;->a:Lmk6;

    invoke-interface {v1, v2}, Lmk6;->a(Le02;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    check-cast v1, Lrm6;

    iput-object v1, v2, Lpm6;->l:Lrm6;

    iput v5, v2, Lpm6;->o:I

    iget-object v0, v0, Lqm6;->b:Lk5;

    invoke-interface {v0, v2}, Lk5;->d(Lf02;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_5

    :goto_2
    return-object v3

    :cond_5
    move-object/from16 v24, v1

    move-object v1, v0

    move-object/from16 v0, v24

    :goto_3
    check-cast v1, Lba9;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lrm6;->e()Lrm6$n;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lrm6$n;->a()Lrm6$b;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lrm6$b;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lrm6$b;->e()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lrm6$b;->d()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Lrm6;->d()Lrm6$l;

    move-result-object v3

    invoke-virtual {v3}, Lrm6$l;->b()Lrm6$g;

    move-result-object v3

    invoke-virtual {v3}, Lrm6$g;->c()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2}, Lrm6$b;->a()Lrm6$c;

    move-result-object v3

    if-eqz v3, :cond_6

    new-instance v3, Lvm6$a;

    invoke-virtual {v2}, Lrm6$b;->a()Lrm6$c;

    move-result-object v4

    invoke-virtual {v4}, Lrm6$c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lrm6$b;->a()Lrm6$c;

    move-result-object v8

    invoke-virtual {v8}, Lrm6$c;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lrm6$b;->a()Lrm6$c;

    move-result-object v12

    invoke-virtual {v12}, Lrm6$c;->a()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v4, v8, v12}, Lvm6$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v14, v3

    goto :goto_4

    :cond_6
    move-object v14, v7

    :goto_4
    invoke-virtual {v2}, Lrm6$b;->b()Ljava/lang/String;

    move-result-object v15

    new-instance v8, Lvm6;

    const/4 v12, 0x0

    invoke-direct/range {v8 .. v15}, Lvm6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lvm6$a;Ljava/lang/String;)V

    move-object v15, v8

    goto :goto_5

    :cond_7
    move-object v15, v7

    :goto_5
    invoke-virtual {v0}, Lrm6;->e()Lrm6$n;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lrm6$n;->b()Lrm6$i;

    move-result-object v2

    if-eqz v2, :cond_a

    new-instance v16, Lvm6;

    invoke-virtual {v2}, Lrm6$i;->c()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v2}, Lrm6$i;->e()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v2}, Lrm6$i;->d()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v2}, Lrm6$i;->a()Lrm6$a;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lrm6$a;->a()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v20, v3

    goto :goto_6

    :cond_8
    move-object/from16 v20, v7

    :goto_6
    invoke-virtual {v2}, Lrm6$i;->a()Lrm6$a;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lrm6$a;->b()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v21, v3

    goto :goto_7

    :cond_9
    move-object/from16 v21, v7

    :goto_7
    const/16 v22, 0x0

    invoke-virtual {v2}, Lrm6$i;->b()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v16 .. v23}, Lvm6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lvm6$a;Ljava/lang/String;)V

    goto :goto_8

    :cond_a
    move-object/from16 v16, v7

    :goto_8
    invoke-virtual {v0}, Lrm6;->a()Lrm6$h;

    move-result-object v2

    if-eqz v2, :cond_b

    new-instance v8, Lkw2;

    invoke-virtual {v0}, Lrm6;->a()Lrm6$h;

    move-result-object v2

    invoke-virtual {v2}, Lrm6$h;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lrm6;->a()Lrm6$h;

    move-result-object v2

    invoke-virtual {v2}, Lrm6$h;->d()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lrm6;->a()Lrm6$h;

    move-result-object v2

    invoke-virtual {v2}, Lrm6$h;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Lrm6;->a()Lrm6$h;

    move-result-object v2

    invoke-virtual {v2}, Lrm6$h;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Lrm6;->a()Lrm6$h;

    move-result-object v2

    invoke-virtual {v2}, Lrm6$h;->e()Ljava/lang/String;

    move-result-object v13

    invoke-direct/range {v8 .. v13}, Lkw2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v17, v8

    goto :goto_9

    :cond_b
    move-object/from16 v17, v7

    :goto_9
    invoke-virtual {v0}, Lrm6;->d()Lrm6$l;

    move-result-object v2

    invoke-virtual {v2}, Lrm6$l;->a()Lrm6$d;

    move-result-object v2

    invoke-virtual {v2}, Lrm6$d;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lrm6;->d()Lrm6$l;

    move-result-object v2

    invoke-virtual {v2}, Lrm6$l;->e()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Lrm6;->d()Lrm6$l;

    move-result-object v2

    invoke-virtual {v2}, Lrm6$l;->d()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Lrm6;->d()Lrm6$l;

    move-result-object v2

    invoke-virtual {v2}, Lrm6$l;->c()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Lrm6;->d()Lrm6$l;

    move-result-object v2

    invoke-virtual {v2}, Lrm6$l;->b()Lrm6$g;

    move-result-object v2

    invoke-virtual {v2}, Lrm6$g;->a()Lrm6$e;

    move-result-object v2

    if-eqz v2, :cond_c

    new-instance v2, Lhl6$a;

    invoke-virtual {v0}, Lrm6;->d()Lrm6$l;

    move-result-object v3

    invoke-virtual {v3}, Lrm6$l;->b()Lrm6$g;

    move-result-object v3

    invoke-virtual {v3}, Lrm6$g;->a()Lrm6$e;

    move-result-object v3

    invoke-virtual {v3}, Lrm6$e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lrm6;->d()Lrm6$l;

    move-result-object v4

    invoke-virtual {v4}, Lrm6$l;->b()Lrm6$g;

    move-result-object v4

    invoke-virtual {v4}, Lrm6$g;->a()Lrm6$e;

    move-result-object v4

    invoke-virtual {v4}, Lrm6$e;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lrm6;->d()Lrm6$l;

    move-result-object v8

    invoke-virtual {v8}, Lrm6$l;->b()Lrm6$g;

    move-result-object v8

    invoke-virtual {v8}, Lrm6$g;->a()Lrm6$e;

    move-result-object v8

    invoke-virtual {v8}, Lrm6$e;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lrm6;->d()Lrm6$l;

    move-result-object v9

    invoke-virtual {v9}, Lrm6$l;->b()Lrm6$g;

    move-result-object v9

    invoke-virtual {v9}, Lrm6$g;->b()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v3, v4, v8, v9}, Lhl6$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v14, v2

    goto :goto_a

    :cond_c
    move-object v14, v7

    :goto_a
    new-instance v9, Lhl6;

    invoke-direct/range {v9 .. v17}, Lhl6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lhl6$a;Lvm6;Lvm6;Lkw2;)V

    new-instance v10, Lpl6;

    invoke-virtual {v0}, Lrm6;->c()Lrm6$k;

    move-result-object v2

    invoke-virtual {v2}, Lrm6$k;->d()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Lrm6;->c()Lrm6$k;

    move-result-object v2

    invoke-virtual {v2}, Lrm6$k;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Lrm6;->c()Lrm6$k;

    move-result-object v2

    invoke-virtual {v2}, Lrm6$k;->b()Lrm6$f;

    move-result-object v2

    invoke-virtual {v2}, Lrm6$f;->a()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Lrm6;->c()Lrm6$k;

    move-result-object v2

    invoke-virtual {v2}, Lrm6$k;->c()Lrm6$f;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lrm6$f;->a()Ljava/lang/String;

    move-result-object v2

    move-object v14, v2

    goto :goto_b

    :cond_d
    move-object v14, v7

    :goto_b
    const/4 v15, 0x0

    invoke-direct/range {v10 .. v15}, Lpl6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1}, Lba9;->l()Lzp6;

    move-result-object v1

    if-eqz v1, :cond_f

    new-instance v2, Lrl6$a;

    new-instance v3, Lcom/warefly/checkscan/profile/domain/entities/PromocodeBlock;

    invoke-virtual {v1}, Lzp6;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lzp6;->b()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_e

    const-string v8, ""

    :cond_e
    invoke-direct {v3, v4, v8}, Lcom/warefly/checkscan/profile/domain/entities/PromocodeBlock;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lrl6$a;-><init>(Lcom/warefly/checkscan/profile/domain/entities/PromocodeBlock;)V

    invoke-virtual {v1}, Lzp6;->a()Z

    move-result v1

    if-nez v1, :cond_f

    move-object v7, v2

    :cond_f
    const/4 v1, 0x6

    new-array v2, v1, [Lrl6;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    sget-object v4, Lrl6$b;->c:Lrl6$b;

    aput-object v4, v2, v6

    sget-object v4, Lrl6$c;->c:Lrl6$c;

    aput-object v4, v2, v5

    sget-object v4, Lrl6$d;->c:Lrl6$d;

    const/4 v7, 0x3

    aput-object v4, v2, v7

    sget-object v4, Lrl6$e;->c:Lrl6$e;

    const/4 v8, 0x4

    aput-object v4, v2, v8

    sget-object v4, Lrl6$f;->c:Lrl6$f;

    const/4 v11, 0x5

    aput-object v4, v2, v11

    invoke-static {v2}, Lyr;->G([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v4, Lem6;

    invoke-direct {v4, v2}, Lem6;-><init>(Ljava/util/ArrayList;)V

    new-instance v2, Lkm6;

    invoke-virtual {v0}, Lrm6;->b()Lrm6$j;

    move-result-object v12

    invoke-virtual {v12}, Lrm6$j;->c()Lrm6$m;

    move-result-object v12

    invoke-virtual {v12}, Lrm6$m;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Lrm6;->b()Lrm6$j;

    move-result-object v13

    invoke-virtual {v13}, Lrm6$j;->c()Lrm6$m;

    move-result-object v13

    invoke-virtual {v13}, Lrm6$m;->b()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v2, v12, v13}, Lkm6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Lyl6;

    invoke-virtual {v0}, Lrm6;->b()Lrm6$j;

    move-result-object v13

    invoke-virtual {v13}, Lrm6$j;->b()Lrm6$p;

    move-result-object v13

    invoke-virtual {v13}, Lrm6$p;->a()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lyl6;-><init>(Ljava/lang/String;)V

    new-instance v13, Ldl6;

    invoke-virtual {v0}, Lrm6;->b()Lrm6$j;

    move-result-object v0

    invoke-virtual {v0}, Lrm6$j;->a()Lrm6$p;

    move-result-object v0

    invoke-virtual {v0}, Lrm6$p;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v0}, Ldl6;-><init>(Ljava/lang/String;)V

    new-array v0, v1, [Lpz3;

    aput-object v9, v0, v3

    aput-object v10, v0, v6

    aput-object v4, v0, v5

    aput-object v2, v0, v7

    aput-object v12, v0, v8

    aput-object v13, v0, v11

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
