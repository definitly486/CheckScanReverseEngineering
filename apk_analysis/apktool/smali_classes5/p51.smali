.class public final Lp51;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp51$a;,
        Lp51$b;
    }
.end annotation


# static fields
.field public static final h:Lct6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lct6<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Lct6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lct6<",
            "Lp51$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lu51;

.field public final b:Lj5;

.field public final c:Ljf6;

.field public final d:Lhi0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhi0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lz68;

.field public final f:Lgy6;

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lct6;

    invoke-direct {v0}, Lct6;-><init>()V

    sput-object v0, Lp51;->h:Lct6;

    new-instance v0, Lct6;

    invoke-direct {v0}, Lct6;-><init>()V

    sput-object v0, Lp51;->i:Lct6;

    return-void
.end method

.method public constructor <init>(Lu51;Lj5;Ljf6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp51;->a:Lu51;

    iput-object p2, p0, Lp51;->b:Lj5;

    iput-object p3, p0, Lp51;->c:Ljf6;

    new-instance p1, Lhi0;

    invoke-direct {p1}, Lhi0;-><init>()V

    iput-object p1, p0, Lp51;->d:Lhi0;

    const/4 p1, 0x0

    invoke-static {p1}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p1

    iput-object p1, p0, Lp51;->e:Lz68;

    invoke-static {p1}, Lbf3;->b(Lxg5;)Lgy6;

    move-result-object p1

    iput-object p1, p0, Lp51;->f:Lgy6;

    const/4 p1, -0x1

    iput p1, p0, Lp51;->g:I

    return-void
.end method


# virtual methods
.method public final a(Lf02;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lq51;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lq51;

    iget v3, v2, Lq51;->n:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lq51;->n:I

    goto :goto_0

    :cond_0
    new-instance v2, Lq51;

    invoke-direct {v2, v0, v1}, Lq51;-><init>(Lp51;Lf02;)V

    :goto_0
    iget-object v1, v2, Lq51;->l:Ljava/lang/Object;

    sget-object v3, La32;->COROUTINE_SUSPENDED:La32;

    iget v4, v2, Lq51;->n:I

    const/4 v5, 0x0

    iget-object v6, v0, Lp51;->a:Lu51;

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v8, :cond_2

    if-ne v4, v7, :cond_1

    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v5

    :cond_2
    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    iput v8, v2, Lq51;->n:I

    invoke-interface {v6, v2}, Lu51;->f(Lq51;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_4

    goto/16 :goto_4

    :cond_4
    :goto_1
    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfd3;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lfd3;->b()J

    move-result-wide v9

    iget-object v4, v0, Lp51;->c:Ljf6;

    invoke-interface {v4}, Ljf6;->e1()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    invoke-virtual {v1}, Lfd3;->b()J

    move-result-wide v11

    invoke-virtual {v1}, Lfd3;->a()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1}, Lfd3;->c()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1}, Lfd3;->d()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v15, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v15, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfd3$a;

    sget-object v6, Lp51$b;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v6, v3

    if-eq v3, v8, :cond_8

    if-eq v3, v7, :cond_7

    const/4 v6, 0x3

    if-eq v3, v6, :cond_6

    const/4 v6, 0x4

    if-ne v3, v6, :cond_5

    sget-object v3, Lri8;->Balance:Lri8;

    goto :goto_3

    :cond_5
    invoke-static {}, Lme0;->e()V

    return-object v5

    :cond_6
    sget-object v3, Lri8;->Discount:Lri8;

    goto :goto_3

    :cond_7
    sget-object v3, Lri8;->Cheques:Lri8;

    goto :goto_3

    :cond_8
    sget-object v3, Lri8;->Bonuses:Lri8;

    :goto_3
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    new-instance v10, Led3;

    const/16 v16, 0x0

    invoke-direct/range {v10 .. v16}, Led3;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    iget-object v0, v0, Lp51;->e:Lz68;

    invoke-virtual {v0, v5, v10}, Lz68;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lfd3;->b()J

    move-result-wide v0

    invoke-interface {v4, v0, v1}, Ljf6;->o(J)V

    goto :goto_5

    :cond_a
    invoke-interface {v4}, Ljf6;->e1()J

    move-result-wide v0

    iput v7, v2, Lq51;->n:I

    invoke-interface {v6, v0, v1, v2}, Lu51;->k(JLf02;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_b

    :goto_4
    return-object v3

    :cond_b
    :goto_5
    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method public final b(Lf02;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lr51;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lr51;

    iget v3, v2, Lr51;->n:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lr51;->n:I

    goto :goto_0

    :cond_0
    new-instance v2, Lr51;

    invoke-direct {v2, v0, v1}, Lr51;-><init>(Lp51;Lf02;)V

    :goto_0
    iget-object v1, v2, Lr51;->l:Ljava/lang/Object;

    sget-object v3, La32;->COROUTINE_SUSPENDED:La32;

    iget v4, v2, Lr51;->n:I

    const/4 v5, 0x0

    iget-object v6, v0, Lp51;->a:Lu51;

    const/4 v7, 0x2

    const/4 v8, 0x1

    iget-object v9, v0, Lp51;->c:Ljf6;

    if-eqz v4, :cond_3

    if-eq v4, v8, :cond_2

    if-ne v4, v7, :cond_1

    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v5

    :cond_2
    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lr57;->b(Ljava/lang/Object;)V

    invoke-interface {v9}, Ljf6;->e1()J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v1, v10, v12

    if-eqz v1, :cond_4

    invoke-interface {v9}, Ljf6;->e1()J

    move-result-wide v10

    iput v8, v2, Lr51;->n:I

    invoke-interface {v6, v10, v11, v2}, Lu51;->k(JLf02;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    invoke-interface {v9}, Ljf6;->P0()I

    move-result v1

    iget v4, v0, Lp51;->g:I

    if-eq v1, v4, :cond_c

    invoke-interface {v9}, Ljf6;->P0()I

    move-result v1

    iput v7, v2, Lr51;->n:I

    invoke-interface {v6, v1, v2}, Lu51;->g(ILr51;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_5

    :goto_2
    return-object v3

    :cond_5
    :goto_3
    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfd3;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lfd3;->b()J

    move-result-wide v11

    invoke-virtual {v1}, Lfd3;->a()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1}, Lfd3;->c()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1}, Lfd3;->d()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v15, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v15, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfd3$a;

    sget-object v4, Lp51$b;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    if-eq v3, v8, :cond_9

    if-eq v3, v7, :cond_8

    const/4 v4, 0x3

    if-eq v3, v4, :cond_7

    const/4 v4, 0x4

    if-ne v3, v4, :cond_6

    sget-object v3, Lri8;->Balance:Lri8;

    goto :goto_5

    :cond_6
    invoke-static {}, Lme0;->e()V

    return-object v5

    :cond_7
    sget-object v3, Lri8;->Discount:Lri8;

    goto :goto_5

    :cond_8
    sget-object v3, Lri8;->Cheques:Lri8;

    goto :goto_5

    :cond_9
    sget-object v3, Lri8;->Bonuses:Lri8;

    :goto_5
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    invoke-virtual {v1}, Lfd3;->e()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_6
    move/from16 v16, v2

    goto :goto_7

    :cond_b
    const/4 v2, 0x0

    goto :goto_6

    :goto_7
    new-instance v10, Led3;

    invoke-direct/range {v10 .. v16}, Led3;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    iget-object v2, v0, Lp51;->e:Lz68;

    invoke-virtual {v2, v5, v10}, Lz68;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lfd3;->b()J

    move-result-wide v1

    invoke-interface {v9, v1, v2}, Ljf6;->o(J)V

    invoke-interface {v9}, Ljf6;->P0()I

    move-result v1

    iput v1, v0, Lp51;->g:I

    :cond_c
    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method
