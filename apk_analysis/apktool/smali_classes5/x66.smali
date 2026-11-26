.class public final Lx66;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.personalform.domain.interactor.PersonalFormInteractor$saveForm$1"
    f = "PersonalFormInteractor.kt"
    l = {
        0x142,
        0x148,
        0x149,
        0x14a,
        0x155,
        0x156
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Lid3<",
        "-",
        "Lw66$a;",
        ">;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public l:I

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Lw66;

.field public final synthetic o:Z


# direct methods
.method public constructor <init>(Lw66;ZLe02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw66;",
            "Z",
            "Le02<",
            "-",
            "Lx66;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lx66;->n:Lw66;

    iput-boolean p2, p0, Lx66;->o:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le02<",
            "*>;)",
            "Le02<",
            "Lj59;",
            ">;"
        }
    .end annotation

    new-instance v0, Lx66;

    iget-object v1, p0, Lx66;->n:Lw66;

    iget-boolean p0, p0, Lx66;->o:Z

    invoke-direct {v0, v1, p0, p2}, Lx66;-><init>(Lw66;ZLe02;)V

    iput-object p1, v0, Lx66;->m:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lid3;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lx66;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lx66;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lx66;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lx66;->l:I

    iget-boolean v2, p0, Lx66;->o:Z

    iget-object v3, p0, Lx66;->n:Lw66;

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v4

    :pswitch_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_1
    iget-object v1, p0, Lx66;->m:Ljava/lang/Object;

    check-cast v1, Lid3;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lx66;->m:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lid3;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v5, v3, Lw66;->e:Lz68;

    invoke-virtual {v5}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Lf56;

    if-eqz v8, :cond_0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v6, v7}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lf56;

    iget-object v7, v7, Lf56;->e:Ljava/util/List;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v5}, Lkn1;->r(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Lw56;

    if-eqz v8, :cond_3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lw56;

    invoke-interface {v6}, Lw56;->h()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {v6}, Lw56;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    instance-of v7, v6, Lo66;

    const-string v8, "]"

    const-string v9, "["

    if-eqz v7, :cond_6

    check-cast v6, Lo66;

    iget-object v7, v6, Lo66;->d:Ljava/lang/String;

    iget-object v6, v6, Lo66;->g:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    instance-of v7, v6, Ln56;

    if-eqz v7, :cond_7

    check-cast v6, Ln56;

    iget-object v7, v6, Ln56;->a:Ljava/lang/String;

    sget-object v8, Lqb2;->a:Ljava/time/format/DateTimeFormatter;

    iget-object v6, v6, Ln56;->d:Ljava/lang/String;

    sget-object v8, Lqb2;->b:Ljava/time/format/DateTimeFormatter;

    sget-object v9, Lqb2;->a:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v9, v6}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    instance-of v7, v6, Ls56;

    if-eqz v7, :cond_8

    check-cast v6, Ls56;

    iget-object v7, v6, Ls56;->c:Ls56$a;

    if-eqz v7, :cond_5

    iget-object v7, v7, Ls56$a;->c:Ljava/lang/String;

    if-eqz v7, :cond_5

    iget-object v6, v6, Ls56;->f:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    invoke-interface {v6}, Lw56;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6}, Lw56;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_9
    iget-object v5, v3, Lw66;->a:Lf66;

    iput-object v1, p0, Lx66;->m:Ljava/lang/Object;

    const/4 v6, 0x1

    iput v6, p0, Lx66;->l:I

    invoke-interface {v5, p1, v2, p0}, Lf66;->b(Ljava/util/LinkedHashMap;ZLx66;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    goto/16 :goto_5

    :cond_a
    :goto_4
    check-cast p1, Lzk6;

    invoke-virtual {p1}, Lzk6;->c()Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v3, v3, Lw66;->f:Lz68;

    :cond_b
    invoke-virtual {v3}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v5, v6}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_c
    if-eqz v2, :cond_d

    invoke-virtual {p1}, Lzk6;->c()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {p1}, Lzk6;->a()Z

    move-result v3

    if-eqz v3, :cond_d

    iput-object v4, p0, Lx66;->m:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, Lx66;->l:I

    sget-object p1, Lw66$a$e;->a:Lw66$a$e;

    invoke-interface {v1, p1, p0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_11

    goto/16 :goto_5

    :cond_d
    if-eqz v2, :cond_e

    invoke-virtual {p1}, Lzk6;->c()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p1}, Lzk6;->a()Z

    move-result v2

    if-nez v2, :cond_e

    iput-object v4, p0, Lx66;->m:Ljava/lang/Object;

    const/4 p1, 0x3

    iput p1, p0, Lx66;->l:I

    sget-object p1, Lw66$a$d;->a:Lw66$a$d;

    invoke-interface {v1, p1, p0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_11

    goto/16 :goto_5

    :cond_e
    invoke-virtual {p1}, Lzk6;->c()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {p1}, Lzk6;->d()Lyc8;

    move-result-object v2

    if-eqz v2, :cond_f

    new-instance v2, Lw66$a$c;

    new-instance v5, Lu66;

    invoke-virtual {p1}, Lzk6;->d()Lyc8;

    move-result-object v3

    invoke-virtual {v3}, Lyc8;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lzk6;->d()Lyc8;

    move-result-object v3

    invoke-virtual {v3}, Lyc8;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lzk6;->d()Lyc8;

    move-result-object v3

    invoke-virtual {v3}, Lyc8;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lzk6;->d()Lyc8;

    move-result-object v3

    invoke-virtual {v3}, Lyc8;->b()Lyc8$a;

    move-result-object v3

    invoke-virtual {v3}, Lyc8$a;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lzk6;->d()Lyc8;

    move-result-object p1

    invoke-virtual {p1}, Lyc8;->b()Lyc8$a;

    move-result-object p1

    invoke-virtual {p1}, Lyc8$a;->b()Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v5 .. v10}, Lu66;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v5}, Lw66$a$c;-><init>(Lu66;)V

    iput-object v4, p0, Lx66;->m:Ljava/lang/Object;

    const/4 p1, 0x4

    iput p1, p0, Lx66;->l:I

    invoke-interface {v1, v2, p0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_11

    goto :goto_5

    :cond_f
    invoke-virtual {p1}, Lzk6;->c()Z

    move-result v2

    if-eqz v2, :cond_10

    new-instance v2, Lw66$a$b;

    invoke-virtual {p1}, Lzk6;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lw66$a$b;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lx66;->m:Ljava/lang/Object;

    const/4 p1, 0x5

    iput p1, p0, Lx66;->l:I

    invoke-interface {v1, v2, p0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_11

    goto :goto_5

    :cond_10
    iput-object v4, p0, Lx66;->m:Ljava/lang/Object;

    const/4 p1, 0x6

    iput p1, p0, Lx66;->l:I

    sget-object p1, Lw66$a$a;->a:Lw66$a$a;

    invoke-interface {v1, p1, p0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_11

    :goto_5
    return-object v0

    :cond_11
    :goto_6
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
