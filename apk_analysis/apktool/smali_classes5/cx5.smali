.class public final Lcx5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcx5$a;
    }
.end annotation


# direct methods
.method public static final a(Lzv0;)Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/OnboardingOneSlideModel$Button;
    .locals 9

    invoke-virtual {p0}, Lzv0;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lzv0;->d()Lzv0$b;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    sget-object v2, Lcx5$a;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/OnboardingOneSlideModel$Action$NotSupported;->b:Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/OnboardingOneSlideModel$Action$NotSupported;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lzv0;->a()Lzv0$a;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/dialogs/BankClientVerificationModel;

    invoke-virtual {v1}, Lzv0$a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lzv0$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lzv0$a;->b()Lzv0$a$a;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/dialogs/BankClientVerificationModel$Button;

    invoke-virtual {v5}, Lzv0$a$a;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lzv0$a$a;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lzv0$a$a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v7, v8, v5}, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/dialogs/BankClientVerificationModel$Button;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lzv0$a;->c()Lzv0$a$a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/dialogs/BankClientVerificationModel$Button;

    invoke-virtual {v1}, Lzv0$a$a;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lzv0$a$a;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lzv0$a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v7, v8, v1}, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/dialogs/BankClientVerificationModel$Button;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/dialogs/BankClientVerificationModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/dialogs/BankClientVerificationModel$Button;Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/dialogs/BankClientVerificationModel$Button;)V

    new-instance v1, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/OnboardingOneSlideModel$Action$Alert;

    invoke-direct {v1, v2}, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/OnboardingOneSlideModel$Action$Alert;-><init>(Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/dialogs/BankClientVerificationModel;)V

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/OnboardingOneSlideModel$Action$NotSupported;->b:Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/OnboardingOneSlideModel$Action$NotSupported;

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/OnboardingOneSlideModel$Action$Next;->b:Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/OnboardingOneSlideModel$Action$Next;

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/OnboardingOneSlideModel$Action$ShareWithFriend;->b:Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/OnboardingOneSlideModel$Action$ShareWithFriend;

    goto :goto_1

    :cond_5
    new-instance v1, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/OnboardingOneSlideModel$Action$Deeplink;

    invoke-virtual {p0}, Lzv0;->e()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    const-string v2, ""

    :cond_6
    invoke-direct {v1, v2}, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/OnboardingOneSlideModel$Action$Deeplink;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lzv0;->b()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/OnboardingOneSlideModel$Button;

    invoke-direct {v2, v0, v1, p0}, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/OnboardingOneSlideModel$Button;-><init>(Ljava/lang/String;Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/OnboardingOneSlideModel$Action;Ljava/lang/String;)V

    return-object v2
.end method

.method public static final b(Lfx5;IIIZ)Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/OnboardingOneSlideModel;
    .locals 26

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, v0, Lei2;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    check-cast v0, Lei2;

    invoke-virtual {v0}, Lei2;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lei2;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lei2;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lei2;->a()Z

    move-result v8

    invoke-virtual {v0}, Lei2;->e()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v9, v2

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    invoke-virtual {v0}, Lei2;->c()Lzv0;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcx5;->a(Lzv0;)Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/OnboardingOneSlideModel$Button;

    move-result-object v1

    move-object v10, v1

    goto :goto_1

    :cond_1
    move-object v10, v3

    :goto_1
    invoke-virtual {v0}, Lei2;->d()Lzv0;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcx5;->a(Lzv0;)Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/OnboardingOneSlideModel$Button;

    move-result-object v3

    :cond_2
    move-object v11, v3

    new-instance v4, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/OnboardingOneSlideModel;

    const/16 v17, 0x0

    const/16 v18, 0x1800

    const/16 v16, 0x0

    move/from16 v14, p1

    move/from16 v15, p2

    move/from16 v13, p3

    move/from16 v12, p4

    invoke-direct/range {v4 .. v18}, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/OnboardingOneSlideModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/OnboardingOneSlideModel$Button;Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/OnboardingOneSlideModel$Button;ZIIILjava/util/ArrayList;Lb36;I)V

    return-object v4

    :cond_3
    instance-of v1, v0, Ljf5;

    if-eqz v1, :cond_11

    check-cast v0, Ljf5;

    invoke-virtual {v0}, Ljf5;->c()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgx5;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lgx5;->g()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    move-object v4, v3

    :goto_2
    const-string v5, ""

    if-nez v4, :cond_5

    move-object v4, v5

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lgx5;->f()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_6
    move-object v6, v3

    :goto_3
    if-nez v6, :cond_7

    move-object/from16 v20, v5

    goto :goto_4

    :cond_7
    move-object/from16 v20, v6

    :goto_4
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lgx5;->c()Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_8
    move-object v6, v3

    :goto_5
    if-nez v6, :cond_9

    move-object/from16 v21, v5

    goto :goto_6

    :cond_9
    move-object/from16 v21, v6

    :goto_6
    invoke-virtual {v0}, Ljf5;->a()Z

    move-result v22

    invoke-virtual {v0}, Ljf5;->b()Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move/from16 v23, v5

    goto :goto_7

    :cond_a
    const/16 v23, 0x0

    :goto_7
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lgx5;->d()Lzv0;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-static {v5}, Lcx5;->a(Lzv0;)Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/OnboardingOneSlideModel$Button;

    move-result-object v5

    move-object/from16 v24, v5

    goto :goto_8

    :cond_b
    move-object/from16 v24, v3

    :goto_8
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lgx5;->e()Lzv0;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-static {v1}, Lcx5;->a(Lzv0;)Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/OnboardingOneSlideModel$Button;

    move-result-object v1

    goto :goto_9

    :cond_c
    move-object v1, v3

    :goto_9
    invoke-virtual {v0}, Ljf5;->c()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v5, v7}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_a
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgx5;

    invoke-virtual {v0}, Ljf5;->a()Z

    move-result v9

    invoke-virtual {v0}, Ljf5;->b()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v17, v6

    invoke-virtual {v5}, Lgx5;->g()Ljava/lang/String;

    move-result-object v6

    move-object v8, v7

    invoke-virtual {v5}, Lgx5;->f()Ljava/lang/String;

    move-result-object v7

    move-object v10, v8

    invoke-virtual {v5}, Lgx5;->c()Ljava/lang/String;

    move-result-object v8

    if-eqz v10, :cond_d

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    goto :goto_b

    :cond_d
    const/4 v10, 0x0

    :goto_b
    invoke-virtual {v5}, Lgx5;->d()Lzv0;

    move-result-object v11

    if-eqz v11, :cond_e

    invoke-static {v11}, Lcx5;->a(Lzv0;)Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/OnboardingOneSlideModel$Button;

    move-result-object v11

    goto :goto_c

    :cond_e
    move-object v11, v3

    :goto_c
    invoke-virtual {v5}, Lgx5;->e()Lzv0;

    move-result-object v12

    if-eqz v12, :cond_f

    invoke-static {v12}, Lcx5;->a(Lzv0;)Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/OnboardingOneSlideModel$Button;

    move-result-object v12

    goto :goto_d

    :cond_f
    move-object v12, v3

    :goto_d
    new-instance v13, Lb36;

    invoke-virtual {v5}, Lgx5;->b()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5}, Lgx5;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v13, v14, v5}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/OnboardingOneSlideModel;

    move-object/from16 v14, v17

    const/16 v17, 0x0

    const/16 v19, 0x800

    move/from16 v15, p1

    move/from16 v16, p2

    move-object/from16 v18, v13

    move-object v2, v14

    move/from16 v14, p3

    move/from16 v13, p4

    invoke-direct/range {v5 .. v19}, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/OnboardingOneSlideModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/OnboardingOneSlideModel$Button;Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/OnboardingOneSlideModel$Button;ZIIILjava/util/ArrayList;Lb36;I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v6, v2

    goto :goto_a

    :cond_10
    move-object v2, v6

    new-instance v5, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/OnboardingOneSlideModel;

    const/16 v18, 0x0

    const/16 v19, 0x1000

    move/from16 v15, p1

    move/from16 v16, p2

    move/from16 v14, p3

    move/from16 v13, p4

    move-object v12, v1

    move-object/from16 v17, v2

    move-object v6, v4

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move/from16 v9, v22

    move/from16 v10, v23

    move-object/from16 v11, v24

    invoke-direct/range {v5 .. v19}, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/OnboardingOneSlideModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/OnboardingOneSlideModel$Button;Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/OnboardingOneSlideModel$Button;ZIIILjava/util/ArrayList;Lb36;I)V

    return-object v5

    :cond_11
    sget-object v1, Lqo5;->a:Lqo5;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {}, Lme0;->e()V

    return-object v3

    :cond_12
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "This slide type not supported"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method
