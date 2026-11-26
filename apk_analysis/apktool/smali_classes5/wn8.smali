.class public final Lwn8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwn8$a;
    }
.end annotation


# direct methods
.method public static final a(Lfo8;)Lfm8;
    .locals 19

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p0 .. p0}, Lfo8;->o()Lfo8$a;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    sget-object v2, Lwn8$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    :goto_0
    const/16 v2, 0x18

    const/4 v3, 0x0

    const-string v4, ""

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lme0;->e()V

    return-object v3

    :pswitch_1
    new-instance v13, Lpw7;

    invoke-virtual/range {p0 .. p0}, Lfo8;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lfo8;->i()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lfo8;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v13, v2, v0, v3, v1}, Lpw7;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual/range {p0 .. p0}, Lfo8;->i()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lfo8;->k()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v7, v4

    goto :goto_1

    :cond_1
    move-object v7, v0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lfo8;->n()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v8, v4

    goto :goto_2

    :cond_2
    move-object v8, v0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lfo8;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lfo8;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lfo8;->f()Z

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lfo8;->h()Z

    move-result v12

    new-instance v5, Lrm8;

    invoke-direct/range {v5 .. v13}, Lrm8;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLpw7;)V

    return-object v5

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lfo8;->o()Lfo8$a;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    sget-object v1, Lwn8$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v1, v1, v0

    :goto_3
    packed-switch v1, :pswitch_data_1

    move-object v15, v3

    goto :goto_5

    :pswitch_3
    new-instance v0, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$CheckboxStepsTaskDetails;

    invoke-virtual/range {p0 .. p0}, Lfo8;->i()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$CheckboxStepsTaskDetails;-><init>(I)V

    :goto_4
    move-object v15, v0

    goto :goto_5

    :pswitch_4
    new-instance v0, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$PromocodeDetailsTask;

    invoke-virtual/range {p0 .. p0}, Lfo8;->i()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$PromocodeDetailsTask;-><init>(I)V

    goto :goto_4

    :pswitch_5
    new-instance v0, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$CheckboxTaskDetails;

    invoke-virtual/range {p0 .. p0}, Lfo8;->i()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$CheckboxTaskDetails;-><init>(I)V

    goto :goto_4

    :pswitch_6
    new-instance v0, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$GroupedTasks;

    invoke-virtual/range {p0 .. p0}, Lfo8;->i()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$GroupedTasks;-><init>(I)V

    goto :goto_4

    :pswitch_7
    new-instance v0, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$RewardedMultiTaskDetails;

    invoke-virtual/range {p0 .. p0}, Lfo8;->i()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$RewardedMultiTaskDetails;-><init>(I)V

    goto :goto_4

    :pswitch_8
    new-instance v0, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$MultiTaskDetails;

    invoke-virtual/range {p0 .. p0}, Lfo8;->i()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$MultiTaskDetails;-><init>(I)V

    goto :goto_4

    :pswitch_9
    new-instance v0, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$TaskDetails;

    invoke-virtual/range {p0 .. p0}, Lfo8;->i()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$TaskDetails;-><init>(I)V

    goto :goto_4

    :goto_5
    if-eqz v15, :cond_9

    new-instance v0, Lpw7;

    invoke-virtual/range {p0 .. p0}, Lfo8;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lfo8;->i()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lfo8;->b()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v2, v1, v6, v5}, Lpw7;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual/range {p0 .. p0}, Lfo8;->i()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lfo8;->m()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lfo8;->k()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move-object v7, v4

    goto :goto_6

    :cond_4
    move-object v7, v1

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lfo8;->n()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    move-object v8, v4

    goto :goto_7

    :cond_5
    move-object v8, v1

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lfo8;->d()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    check-cast v1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v4, Lrl8;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    const/16 v10, 0x20

    invoke-direct {v4, v2, v10, v5}, Lrl8;-><init>(Ljava/lang/String;ILandroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_6
    if-nez v3, :cond_7

    sget-object v3, Lkx2;->b:Lkx2;

    :cond_7
    move-object v10, v3

    invoke-virtual/range {p0 .. p0}, Lfo8;->f()Z

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lfo8;->h()Z

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lfo8;->p()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_9
    move v13, v1

    goto :goto_a

    :cond_8
    const/4 v1, 0x0

    goto :goto_9

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lfo8;->g()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lfo8;->l()Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v17

    new-instance v5, Lkz7;

    const/4 v14, 0x0

    move-object/from16 v18, v0

    invoke-direct/range {v5 .. v18}, Lkz7;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZZZLcom/warefly/checkscan/tasks/presentation/flows/TasksReason;Ljava/lang/String;ZLpw7;)V

    return-object v5

    :cond_9
    :pswitch_a
    return-object v3

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_a
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static final b(Lgo8;I)Lkk1;
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lgo8;->c()Lgo8$d;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lgo8$d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lgo8$d;->a()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    const/16 p1, 0xa

    invoke-static {p0, p1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance v2, Lrl8;

    const/16 v5, 0x2c

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-direct {v2, p1, v5, v6}, Lrl8;-><init>(Ljava/lang/String;ILandroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lgo8$d;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lgo8$d;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lgo8$d;->f()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lno8$a;

    invoke-virtual {v0}, Lgo8$d;->c()Lgo8$a;

    move-result-object p0

    invoke-virtual {p0}, Lgo8$a;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lgo8$d;->c()Lgo8$a;

    move-result-object p1

    invoke-virtual {p1}, Lgo8$a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v8, p0, p1}, Lno8$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lgo8$d;->d()Lgo8$a;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance v1, Lno8$a;

    invoke-virtual {v0}, Lgo8$d;->d()Lgo8$a;

    move-result-object p0

    invoke-virtual {p0}, Lgo8$a;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lgo8$d;->d()Lgo8$a;

    move-result-object p1

    invoke-virtual {p1}, Lgo8$a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lno8$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v9, v1

    new-instance v2, Lno8;

    invoke-direct/range {v2 .. v9}, Lno8;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lno8$a;Lno8$a;)V

    return-object v2

    :cond_2
    invoke-virtual {p0}, Lgo8;->b()Lgo8$c;

    move-result-object p0

    if-eqz p0, :cond_3

    new-instance v0, Lhn8;

    invoke-virtual {p0}, Lgo8$c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lgo8$c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lgo8$c;->a()Lgo8$a;

    move-result-object p0

    invoke-virtual {p0}, Lgo8$a;->a()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, v1, v2, p0}, Lhn8;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3
    return-object v1
.end method
