.class public final Lwp6$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwp6$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwp6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwp6$a$a;,
        Lwp6$a$b;,
        Lwp6$a$c;,
        Lwp6$a$d;,
        Lwp6$a$e;,
        Lwp6$a$f;,
        Lwp6$a$g;
    }
.end annotation


# instance fields
.field private final a:I
    .annotation runtime Lbq7;
        value = "id"
    .end annotation
.end field

.field private final b:Lwa8;
    .annotation runtime Lbq7;
        value = "stroke"
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "title"
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "text"
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "logoUrl"
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation runtime Lbq7;
        value = "conditions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lwp6$a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lwp6$a$g;
    .annotation runtime Lbq7;
        value = "tagsBlock"
    .end annotation
.end field

.field private final h:Lwp6$a$e;
    .annotation runtime Lbq7;
        value = "stepsBlock"
    .end annotation
.end field

.field private final i:Lwp6$a$a;
    .annotation runtime Lbq7;
        value = "mainButton"
    .end annotation
.end field

.field private final j:Ljava/util/List;
    .annotation runtime Lbq7;
        value = "disclaimers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lwp6$a$c;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "block"
    .end annotation
.end field

.field private final l:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "badge"
    .end annotation
.end field

.field private final m:Ljava/lang/Integer;
    .annotation runtime Lbq7;
        value = "operationId"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILwa8;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lwp6$a$g;Lwp6$a$e;Lwp6$a$a;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lwa8;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lwp6$a$b;",
            ">;",
            "Lwp6$a$g;",
            "Lwp6$a$e;",
            "Lwp6$a$a;",
            "Ljava/util/List<",
            "Lwp6$a$c;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lwp6$a;->a:I

    .line 57
    iput-object p2, p0, Lwp6$a;->b:Lwa8;

    .line 58
    iput-object p3, p0, Lwp6$a;->c:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Lwp6$a;->d:Ljava/lang/String;

    .line 60
    iput-object p5, p0, Lwp6$a;->e:Ljava/lang/String;

    .line 61
    iput-object p6, p0, Lwp6$a;->f:Ljava/util/List;

    .line 62
    iput-object p7, p0, Lwp6$a;->g:Lwp6$a$g;

    .line 63
    iput-object p8, p0, Lwp6$a;->h:Lwp6$a$e;

    .line 64
    iput-object p9, p0, Lwp6$a;->i:Lwp6$a$a;

    .line 65
    iput-object p10, p0, Lwp6$a;->j:Ljava/util/List;

    .line 66
    iput-object p11, p0, Lwp6$a;->k:Ljava/lang/String;

    .line 67
    iput-object p12, p0, Lwp6$a;->l:Ljava/lang/String;

    .line 68
    iput-object p13, p0, Lwp6$a;->m:Ljava/lang/Integer;

    .line 69
    sget-object p0, Lwp6$h$a;->COMMON:Lwp6$h$a;

    return-void
.end method

.method public synthetic constructor <init>(ILwa8;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lwp6$a$g;Lwp6$a$e;Lwp6$a$a;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjh2;)V
    .locals 17

    move/from16 v0, p14

    and-int/lit16 v1, v0, 0x400

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v14, v2

    goto :goto_0

    :cond_0
    move-object/from16 v14, p11

    :goto_0
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_1

    move-object v15, v2

    goto :goto_1

    :cond_1
    move-object/from16 v15, p12

    :goto_1
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_2

    move-object/from16 v16, v2

    :goto_2
    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    goto :goto_3

    :cond_2
    move-object/from16 v16, p13

    goto :goto_2

    :goto_3
    invoke-direct/range {v3 .. v16}, Lwp6$a;-><init>(ILwa8;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lwp6$a$g;Lwp6$a$e;Lwp6$a$a;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final a()Lpz3;
    .locals 16

    move-object/from16 v0, p0

    new-instance v11, Lpw7;

    iget-object v1, v0, Lwp6$a;->k:Ljava/lang/String;

    iget v2, v0, Lwp6$a;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Lwp6$a;->l:Ljava/lang/String;

    const/16 v4, 0x18

    invoke-direct {v11, v4, v1, v3, v2}, Lpw7;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    iget v1, v0, Lwp6$a;->a:I

    iget-object v2, v0, Lwp6$a;->c:Ljava/lang/String;

    iget-object v3, v0, Lwp6$a;->d:Ljava/lang/String;

    iget-object v4, v0, Lwp6$a;->e:Ljava/lang/String;

    new-instance v5, Lxa$c;

    iget-object v6, v0, Lwp6$a;->f:Ljava/util/List;

    invoke-static {v6}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lwp6$a$b;

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lwp6$a$b;->b()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v7

    :goto_0
    const-string v8, ""

    if-nez v6, :cond_1

    move-object v6, v8

    :cond_1
    iget-object v9, v0, Lwp6$a;->f:Ljava/util/List;

    invoke-static {v9}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lwp6$a$b;

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lwp6$a$b;->a()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_2
    move-object v9, v7

    :goto_1
    if-nez v9, :cond_3

    move-object v9, v8

    :cond_3
    iget-object v10, v0, Lwp6$a;->f:Ljava/util/List;

    invoke-static {v10}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lwp6$a$b;

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Lwp6$a$b;->d()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    :cond_4
    move-object v10, v7

    :goto_2
    if-nez v10, :cond_5

    move-object v10, v8

    :cond_5
    iget-object v12, v0, Lwp6$a;->f:Ljava/util/List;

    invoke-static {v12}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lwp6$a$b;

    if-eqz v12, :cond_6

    invoke-virtual {v12}, Lwp6$a$b;->c()Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    :cond_6
    move-object v12, v7

    :goto_3
    if-nez v12, :cond_7

    move-object v12, v8

    :cond_7
    invoke-direct {v5, v6, v9, v10, v12}, Lxa$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v0, Lwp6$a;->g:Lwp6$a$g;

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lwp6$a$g;->c()Ljava/lang/String;

    move-result-object v6

    iget-object v9, v0, Lwp6$a;->g:Lwp6$a$g;

    invoke-virtual {v9}, Lwp6$a$g;->a()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lwp6$a;->g:Lwp6$a$g;

    invoke-virtual {v10}, Lwp6$a$g;->b()Ljava/util/List;

    move-result-object v10

    check-cast v10, Ljava/lang/Iterable;

    new-instance v12, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v10, v13}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lwp6$a$f;

    new-instance v14, Lxa$e;

    invoke-virtual {v13}, Lwp6$a$f;->b()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13}, Lwp6$a$f;->a()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v14, v15, v13}, Lxa$e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    new-instance v10, Lxa$d;

    invoke-direct {v10, v6, v9, v12}, Lxa$d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    move-object v9, v7

    move-object v6, v10

    goto :goto_5

    :cond_9
    move-object v6, v7

    move-object v9, v6

    :goto_5
    new-instance v7, Lxa$h;

    iget-object v10, v0, Lwp6$a;->h:Lwp6$a$e;

    invoke-virtual {v10}, Lwp6$a$e;->b()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Lxa$g;

    iget-object v13, v0, Lwp6$a;->h:Lwp6$a$e;

    invoke-virtual {v13}, Lwp6$a$e;->a()Ljava/util/List;

    move-result-object v13

    invoke-static {v13}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lwp6$a$d;

    if-eqz v13, :cond_a

    invoke-virtual {v13}, Lwp6$a$d;->b()Ljava/lang/String;

    move-result-object v13

    goto :goto_6

    :cond_a
    move-object v13, v9

    :goto_6
    if-nez v13, :cond_b

    move-object v13, v8

    :cond_b
    iget-object v14, v0, Lwp6$a;->h:Lwp6$a$e;

    invoke-virtual {v14}, Lwp6$a$e;->a()Ljava/util/List;

    move-result-object v14

    invoke-static {v14}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lwp6$a$d;

    if-eqz v14, :cond_c

    invoke-virtual {v14}, Lwp6$a$d;->a()Ljava/lang/String;

    move-result-object v14

    goto :goto_7

    :cond_c
    move-object v14, v9

    :goto_7
    if-nez v14, :cond_d

    move-object v14, v8

    :cond_d
    invoke-direct {v12, v13, v14}, Lxa$g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Lxa$g;

    iget-object v14, v0, Lwp6$a;->h:Lwp6$a$e;

    invoke-virtual {v14}, Lwp6$a$e;->a()Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v15, v14}, Lqn1;->W(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lwp6$a$d;

    if-eqz v14, :cond_e

    invoke-virtual {v14}, Lwp6$a$d;->b()Ljava/lang/String;

    move-result-object v14

    goto :goto_8

    :cond_e
    move-object v14, v9

    :goto_8
    if-nez v14, :cond_f

    move-object v14, v8

    :cond_f
    iget-object v9, v0, Lwp6$a;->h:Lwp6$a$e;

    invoke-virtual {v9}, Lwp6$a$e;->a()Ljava/util/List;

    move-result-object v9

    invoke-static {v15, v9}, Lqn1;->W(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lwp6$a$d;

    if-eqz v9, :cond_10

    invoke-virtual {v9}, Lwp6$a$d;->a()Ljava/lang/String;

    move-result-object v9

    goto :goto_9

    :cond_10
    const/4 v9, 0x0

    :goto_9
    if-nez v9, :cond_11

    move-object v9, v8

    :cond_11
    invoke-direct {v13, v14, v9}, Lxa$g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v10, v12, v13}, Lxa$h;-><init>(Ljava/lang/String;Lxa$g;Lxa$g;)V

    iget-object v9, v0, Lwp6$a;->j:Ljava/util/List;

    if-eqz v9, :cond_18

    new-instance v10, Lxa$f;

    invoke-static {v9}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lwp6$a$c;

    if-eqz v9, :cond_12

    invoke-virtual {v9}, Lwp6$a$c;->b()Ljava/lang/String;

    move-result-object v9

    goto :goto_a

    :cond_12
    const/4 v9, 0x0

    :goto_a
    if-nez v9, :cond_13

    move-object v9, v8

    :cond_13
    iget-object v12, v0, Lwp6$a;->j:Ljava/util/List;

    invoke-static {v15, v12}, Lqn1;->W(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lwp6$a$c;

    if-eqz v12, :cond_14

    invoke-virtual {v12}, Lwp6$a$c;->b()Ljava/lang/String;

    move-result-object v12

    goto :goto_b

    :cond_14
    const/4 v12, 0x0

    :goto_b
    if-nez v12, :cond_15

    move-object v12, v8

    :cond_15
    iget-object v13, v0, Lwp6$a;->j:Ljava/util/List;

    invoke-static {v13}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lwp6$a$c;

    if-eqz v13, :cond_16

    invoke-virtual {v13}, Lwp6$a$c;->a()Ljava/lang/String;

    move-result-object v13

    goto :goto_c

    :cond_16
    const/4 v13, 0x0

    :goto_c
    if-nez v13, :cond_17

    goto :goto_d

    :cond_17
    move-object v8, v13

    :goto_d
    invoke-direct {v10, v9, v12, v8}, Lxa$f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v10

    goto :goto_e

    :cond_18
    const/4 v8, 0x0

    :goto_e
    new-instance v9, Lxa$b;

    iget-object v10, v0, Lwp6$a;->i:Lwp6$a$a;

    invoke-virtual {v10}, Lwp6$a$a;->a()Ljava/lang/String;

    move-result-object v10

    iget-object v12, v0, Lwp6$a;->i:Lwp6$a$a;

    invoke-virtual {v12}, Lwp6$a$a;->b()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v10, v12}, Lxa$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v0, Lwp6$a;->b:Lwa8;

    if-eqz v10, :cond_19

    new-instance v12, Lxa$a;

    invoke-virtual {v10}, Lwa8;->c()Ljava/lang/String;

    move-result-object v10

    iget-object v13, v0, Lwp6$a;->b:Lwa8;

    invoke-virtual {v13}, Lwa8;->b()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v0, Lwp6$a;->b:Lwa8;

    invoke-virtual {v14}, Lwa8;->a()Ljava/lang/String;

    move-result-object v14

    iget-object v0, v0, Lwp6$a;->b:Lwa8;

    invoke-virtual {v0}, Lwa8;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v10, v13, v14, v0}, Lxa$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v12

    goto :goto_f

    :cond_19
    const/4 v10, 0x0

    :goto_f
    new-instance v0, Lxa;

    invoke-direct/range {v0 .. v11}, Lxa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lxa$c;Lxa$d;Lxa$h;Lxa$f;Lxa$b;Lxa$a;Lpw7;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lwp6$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lwp6$a;

    iget v1, p0, Lwp6$a;->a:I

    iget v3, p1, Lwp6$a;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lwp6$a;->b:Lwa8;

    iget-object v3, p1, Lwp6$a;->b:Lwa8;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lwp6$a;->c:Ljava/lang/String;

    iget-object v3, p1, Lwp6$a;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lwp6$a;->d:Ljava/lang/String;

    iget-object v3, p1, Lwp6$a;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lwp6$a;->e:Ljava/lang/String;

    iget-object v3, p1, Lwp6$a;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lwp6$a;->f:Ljava/util/List;

    iget-object v3, p1, Lwp6$a;->f:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lwp6$a;->g:Lwp6$a$g;

    iget-object v3, p1, Lwp6$a;->g:Lwp6$a$g;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lwp6$a;->h:Lwp6$a$e;

    iget-object v3, p1, Lwp6$a;->h:Lwp6$a$e;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lwp6$a;->i:Lwp6$a$a;

    iget-object v3, p1, Lwp6$a;->i:Lwp6$a$a;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lwp6$a;->j:Ljava/util/List;

    iget-object v3, p1, Lwp6$a;->j:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lwp6$a;->k:Ljava/lang/String;

    iget-object v3, p1, Lwp6$a;->k:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lwp6$a;->l:Ljava/lang/String;

    iget-object v3, p1, Lwp6$a;->l:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object p0, p0, Lwp6$a;->m:Ljava/lang/Integer;

    iget-object p1, p1, Lwp6$a;->m:Ljava/lang/Integer;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    return v2

    :cond_e
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lwp6$a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lwp6$a;->b:Lwa8;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lwa8;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lwp6$a;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lwp6$a;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lwp6$a;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lwp6$a;->f:Ljava/util/List;

    invoke-static {v2, v0, v1}, Le2;->b(Ljava/util/List;II)I

    move-result v0

    iget-object v2, p0, Lwp6$a;->g:Lwp6$a$g;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lwp6$a$g;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lwp6$a;->h:Lwp6$a$e;

    invoke-virtual {v2}, Lwp6$a$e;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lwp6$a;->i:Lwp6$a$a;

    invoke-virtual {v0}, Lwp6$a$a;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lwp6$a;->j:Ljava/util/List;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lwp6$a;->k:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lwp6$a;->l:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lwp6$a;->m:Ljava/lang/Integer;

    if-nez p0, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 14

    iget v0, p0, Lwp6$a;->a:I

    iget-object v1, p0, Lwp6$a;->b:Lwa8;

    iget-object v2, p0, Lwp6$a;->c:Ljava/lang/String;

    iget-object v3, p0, Lwp6$a;->d:Ljava/lang/String;

    iget-object v4, p0, Lwp6$a;->e:Ljava/lang/String;

    iget-object v5, p0, Lwp6$a;->f:Ljava/util/List;

    iget-object v6, p0, Lwp6$a;->g:Lwp6$a$g;

    iget-object v7, p0, Lwp6$a;->h:Lwp6$a$e;

    iget-object v8, p0, Lwp6$a;->i:Lwp6$a$a;

    iget-object v9, p0, Lwp6$a;->j:Ljava/util/List;

    iget-object v10, p0, Lwp6$a;->k:Ljava/lang/String;

    iget-object v11, p0, Lwp6$a;->l:Ljava/lang/String;

    iget-object p0, p0, Lwp6$a;->m:Ljava/lang/Integer;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "CommonRichPreview(id="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", stroke="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", title="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", text="

    const-string v1, ", logoUrl="

    invoke-static {v12, v2, v0, v3, v1}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", conditions="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", tagsBlock="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", stepsBlock="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mainButton="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", disclaimers="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", block="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", badge="

    const-string v1, ", operationId="

    invoke-static {v12, v10, v0, v11, v1}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
