.class public final Lcom/posthog/surveys/Survey;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final appearance:Lcom/posthog/surveys/SurveyAppearance;

.field private final conditions:Lcom/posthog/surveys/SurveyConditions;

.field private final currentIteration:Ljava/lang/Integer;
    .annotation runtime Lbq7;
        value = "current_iteration"
    .end annotation
.end field

.field private final currentIterationStartDate:Ljava/util/Date;
    .annotation runtime Lbq7;
        value = "current_iteration_start_date"
    .end annotation
.end field

.field private final description:Ljava/lang/String;

.field private final endDate:Ljava/util/Date;
    .annotation runtime Lbq7;
        value = "end_date"
    .end annotation
.end field

.field private final featureFlagKeys:Ljava/util/List;
    .annotation runtime Lbq7;
        value = "feature_flag_keys"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/posthog/surveys/SurveyFeatureFlagKeyValue;",
            ">;"
        }
    .end annotation
.end field

.field private final id:Ljava/lang/String;

.field private final internalTargetingFlagKey:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "internal_targeting_flag_key"
    .end annotation
.end field

.field private final linkedFlagKey:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "linked_flag_key"
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final questions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/posthog/surveys/SurveyQuestion;",
            ">;"
        }
    .end annotation
.end field

.field private final schedule:Lcom/posthog/surveys/SurveySchedule;

.field private final startDate:Ljava/util/Date;
    .annotation runtime Lbq7;
        value = "start_date"
    .end annotation
.end field

.field private final targetingFlagKey:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "targeting_flag_key"
    .end annotation
.end field

.field private final translations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/posthog/surveys/SurveyTranslation;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lcom/posthog/surveys/SurveyType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/SurveyType;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/SurveyConditions;Lcom/posthog/surveys/SurveyAppearance;Ljava/lang/Integer;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/posthog/surveys/SurveySchedule;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/posthog/surveys/SurveyType;",
            "Ljava/util/List<",
            "+",
            "Lcom/posthog/surveys/SurveyQuestion;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/posthog/surveys/SurveyFeatureFlagKeyValue;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/posthog/surveys/SurveyConditions;",
            "Lcom/posthog/surveys/SurveyAppearance;",
            "Ljava/lang/Integer;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Lcom/posthog/surveys/SurveySchedule;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/posthog/surveys/SurveyTranslation;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/posthog/surveys/Survey;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/posthog/surveys/Survey;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/posthog/surveys/Survey;->type:Lcom/posthog/surveys/SurveyType;

    iput-object p4, p0, Lcom/posthog/surveys/Survey;->questions:Ljava/util/List;

    iput-object p5, p0, Lcom/posthog/surveys/Survey;->description:Ljava/lang/String;

    iput-object p6, p0, Lcom/posthog/surveys/Survey;->featureFlagKeys:Ljava/util/List;

    iput-object p7, p0, Lcom/posthog/surveys/Survey;->linkedFlagKey:Ljava/lang/String;

    iput-object p8, p0, Lcom/posthog/surveys/Survey;->targetingFlagKey:Ljava/lang/String;

    iput-object p9, p0, Lcom/posthog/surveys/Survey;->internalTargetingFlagKey:Ljava/lang/String;

    iput-object p10, p0, Lcom/posthog/surveys/Survey;->conditions:Lcom/posthog/surveys/SurveyConditions;

    iput-object p11, p0, Lcom/posthog/surveys/Survey;->appearance:Lcom/posthog/surveys/SurveyAppearance;

    iput-object p12, p0, Lcom/posthog/surveys/Survey;->currentIteration:Ljava/lang/Integer;

    iput-object p13, p0, Lcom/posthog/surveys/Survey;->currentIterationStartDate:Ljava/util/Date;

    iput-object p14, p0, Lcom/posthog/surveys/Survey;->startDate:Ljava/util/Date;

    iput-object p15, p0, Lcom/posthog/surveys/Survey;->endDate:Ljava/util/Date;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/posthog/surveys/Survey;->schedule:Lcom/posthog/surveys/SurveySchedule;

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/posthog/surveys/Survey;->translations:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/SurveyType;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/SurveyConditions;Lcom/posthog/surveys/SurveyAppearance;Ljava/lang/Integer;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/posthog/surveys/SurveySchedule;Ljava/util/Map;ILjh2;)V
    .locals 19

    const/high16 v0, 0x10000

    and-int v0, p18, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object/from16 v18, v0

    :goto_0
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    goto :goto_1

    :cond_0
    move-object/from16 v18, p17

    goto :goto_0

    .line 54
    :goto_1
    invoke-direct/range {v1 .. v18}, Lcom/posthog/surveys/Survey;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/SurveyType;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/SurveyConditions;Lcom/posthog/surveys/SurveyAppearance;Ljava/lang/Integer;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/posthog/surveys/SurveySchedule;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/posthog/surveys/Survey;Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/SurveyType;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/SurveyConditions;Lcom/posthog/surveys/SurveyAppearance;Ljava/lang/Integer;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/posthog/surveys/SurveySchedule;Ljava/util/Map;ILjava/lang/Object;)Lcom/posthog/surveys/Survey;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p18

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/posthog/surveys/Survey;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/posthog/surveys/Survey;->name:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/posthog/surveys/Survey;->type:Lcom/posthog/surveys/SurveyType;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/posthog/surveys/Survey;->questions:Ljava/util/List;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/posthog/surveys/Survey;->description:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/posthog/surveys/Survey;->featureFlagKeys:Ljava/util/List;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/posthog/surveys/Survey;->linkedFlagKey:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/posthog/surveys/Survey;->targetingFlagKey:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/posthog/surveys/Survey;->internalTargetingFlagKey:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/posthog/surveys/Survey;->conditions:Lcom/posthog/surveys/SurveyConditions;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/posthog/surveys/Survey;->appearance:Lcom/posthog/surveys/SurveyAppearance;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/posthog/surveys/Survey;->currentIteration:Ljava/lang/Integer;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/posthog/surveys/Survey;->currentIterationStartDate:Ljava/util/Date;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/posthog/surveys/Survey;->startDate:Ljava/util/Date;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    iget-object v2, v0, Lcom/posthog/surveys/Survey;->endDate:Ljava/util/Date;

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_f

    iget-object v1, v0, Lcom/posthog/surveys/Survey;->schedule:Lcom/posthog/surveys/SurveySchedule;

    goto :goto_f

    :cond_f
    move-object/from16 v1, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, p18, v16

    if-eqz v16, :cond_10

    move-object/from16 p2, v1

    iget-object v1, v0, Lcom/posthog/surveys/Survey;->translations:Ljava/util/Map;

    move-object/from16 p17, p2

    move-object/from16 p18, v1

    move-object/from16 p16, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p2, p1

    move-object/from16 p1, v0

    goto :goto_10

    :cond_10
    move-object/from16 p18, p17

    move-object/from16 p17, v1

    move-object/from16 p2, p1

    move-object/from16 p1, v0

    move-object/from16 p16, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    :goto_10
    invoke-virtual/range {p1 .. p18}, Lcom/posthog/surveys/Survey;->copy(Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/SurveyType;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/SurveyConditions;Lcom/posthog/surveys/SurveyAppearance;Ljava/lang/Integer;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/posthog/surveys/SurveySchedule;Ljava/util/Map;)Lcom/posthog/surveys/Survey;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/Survey;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final component10()Lcom/posthog/surveys/SurveyConditions;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/Survey;->conditions:Lcom/posthog/surveys/SurveyConditions;

    return-object p0
.end method

.method public final component11()Lcom/posthog/surveys/SurveyAppearance;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/Survey;->appearance:Lcom/posthog/surveys/SurveyAppearance;

    return-object p0
.end method

.method public final component12()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/Survey;->currentIteration:Ljava/lang/Integer;

    return-object p0
.end method

.method public final component13()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/Survey;->currentIterationStartDate:Ljava/util/Date;

    return-object p0
.end method

.method public final component14()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/Survey;->startDate:Ljava/util/Date;

    return-object p0
.end method

.method public final component15()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/Survey;->endDate:Ljava/util/Date;

    return-object p0
.end method

.method public final component16()Lcom/posthog/surveys/SurveySchedule;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/Survey;->schedule:Lcom/posthog/surveys/SurveySchedule;

    return-object p0
.end method

.method public final component17()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/posthog/surveys/SurveyTranslation;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/posthog/surveys/Survey;->translations:Ljava/util/Map;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/Survey;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Lcom/posthog/surveys/SurveyType;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/Survey;->type:Lcom/posthog/surveys/SurveyType;

    return-object p0
.end method

.method public final component4()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/posthog/surveys/SurveyQuestion;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/posthog/surveys/Survey;->questions:Ljava/util/List;

    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/Survey;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final component6()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/posthog/surveys/SurveyFeatureFlagKeyValue;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/posthog/surveys/Survey;->featureFlagKeys:Ljava/util/List;

    return-object p0
.end method

.method public final component7()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/Survey;->linkedFlagKey:Ljava/lang/String;

    return-object p0
.end method

.method public final component8()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/Survey;->targetingFlagKey:Ljava/lang/String;

    return-object p0
.end method

.method public final component9()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/Survey;->internalTargetingFlagKey:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/SurveyType;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/SurveyConditions;Lcom/posthog/surveys/SurveyAppearance;Ljava/lang/Integer;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/posthog/surveys/SurveySchedule;Ljava/util/Map;)Lcom/posthog/surveys/Survey;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/posthog/surveys/SurveyType;",
            "Ljava/util/List<",
            "+",
            "Lcom/posthog/surveys/SurveyQuestion;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/posthog/surveys/SurveyFeatureFlagKeyValue;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/posthog/surveys/SurveyConditions;",
            "Lcom/posthog/surveys/SurveyAppearance;",
            "Ljava/lang/Integer;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Lcom/posthog/surveys/SurveySchedule;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/posthog/surveys/SurveyTranslation;",
            ">;)",
            "Lcom/posthog/surveys/Survey;"
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/posthog/surveys/Survey;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    invoke-direct/range {v0 .. v17}, Lcom/posthog/surveys/Survey;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/SurveyType;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/SurveyConditions;Lcom/posthog/surveys/SurveyAppearance;Ljava/lang/Integer;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/posthog/surveys/SurveySchedule;Ljava/util/Map;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/posthog/surveys/Survey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/posthog/surveys/Survey;

    iget-object v1, p0, Lcom/posthog/surveys/Survey;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/surveys/Survey;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/posthog/surveys/Survey;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/surveys/Survey;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/posthog/surveys/Survey;->type:Lcom/posthog/surveys/SurveyType;

    iget-object v3, p1, Lcom/posthog/surveys/Survey;->type:Lcom/posthog/surveys/SurveyType;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/posthog/surveys/Survey;->questions:Ljava/util/List;

    iget-object v3, p1, Lcom/posthog/surveys/Survey;->questions:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/posthog/surveys/Survey;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/surveys/Survey;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/posthog/surveys/Survey;->featureFlagKeys:Ljava/util/List;

    iget-object v3, p1, Lcom/posthog/surveys/Survey;->featureFlagKeys:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/posthog/surveys/Survey;->linkedFlagKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/surveys/Survey;->linkedFlagKey:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/posthog/surveys/Survey;->targetingFlagKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/surveys/Survey;->targetingFlagKey:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/posthog/surveys/Survey;->internalTargetingFlagKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/surveys/Survey;->internalTargetingFlagKey:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/posthog/surveys/Survey;->conditions:Lcom/posthog/surveys/SurveyConditions;

    iget-object v3, p1, Lcom/posthog/surveys/Survey;->conditions:Lcom/posthog/surveys/SurveyConditions;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/posthog/surveys/Survey;->appearance:Lcom/posthog/surveys/SurveyAppearance;

    iget-object v3, p1, Lcom/posthog/surveys/Survey;->appearance:Lcom/posthog/surveys/SurveyAppearance;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/posthog/surveys/Survey;->currentIteration:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/posthog/surveys/Survey;->currentIteration:Ljava/lang/Integer;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/posthog/surveys/Survey;->currentIterationStartDate:Ljava/util/Date;

    iget-object v3, p1, Lcom/posthog/surveys/Survey;->currentIterationStartDate:Ljava/util/Date;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/posthog/surveys/Survey;->startDate:Ljava/util/Date;

    iget-object v3, p1, Lcom/posthog/surveys/Survey;->startDate:Ljava/util/Date;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/posthog/surveys/Survey;->endDate:Ljava/util/Date;

    iget-object v3, p1, Lcom/posthog/surveys/Survey;->endDate:Ljava/util/Date;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/posthog/surveys/Survey;->schedule:Lcom/posthog/surveys/SurveySchedule;

    iget-object v3, p1, Lcom/posthog/surveys/Survey;->schedule:Lcom/posthog/surveys/SurveySchedule;

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    iget-object p0, p0, Lcom/posthog/surveys/Survey;->translations:Ljava/util/Map;

    iget-object p1, p1, Lcom/posthog/surveys/Survey;->translations:Ljava/util/Map;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    return v2

    :cond_12
    return v0
.end method

.method public final getAppearance()Lcom/posthog/surveys/SurveyAppearance;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/Survey;->appearance:Lcom/posthog/surveys/SurveyAppearance;

    return-object p0
.end method

.method public final getConditions()Lcom/posthog/surveys/SurveyConditions;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/Survey;->conditions:Lcom/posthog/surveys/SurveyConditions;

    return-object p0
.end method

.method public final getCurrentIteration()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/Survey;->currentIteration:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getCurrentIterationStartDate()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/Survey;->currentIterationStartDate:Ljava/util/Date;

    return-object p0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/Survey;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final getEndDate()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/Survey;->endDate:Ljava/util/Date;

    return-object p0
.end method

.method public final getFeatureFlagKeys()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/posthog/surveys/SurveyFeatureFlagKeyValue;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/posthog/surveys/Survey;->featureFlagKeys:Ljava/util/List;

    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/Survey;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getInternalTargetingFlagKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/Survey;->internalTargetingFlagKey:Ljava/lang/String;

    return-object p0
.end method

.method public final getLinkedFlagKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/Survey;->linkedFlagKey:Ljava/lang/String;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/Survey;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getQuestions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/posthog/surveys/SurveyQuestion;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/posthog/surveys/Survey;->questions:Ljava/util/List;

    return-object p0
.end method

.method public final getSchedule()Lcom/posthog/surveys/SurveySchedule;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/Survey;->schedule:Lcom/posthog/surveys/SurveySchedule;

    return-object p0
.end method

.method public final getStartDate()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/Survey;->startDate:Ljava/util/Date;

    return-object p0
.end method

.method public final getTargetingFlagKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/Survey;->targetingFlagKey:Ljava/lang/String;

    return-object p0
.end method

.method public final getTranslations()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/posthog/surveys/SurveyTranslation;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/posthog/surveys/Survey;->translations:Ljava/util/Map;

    return-object p0
.end method

.method public final getType()Lcom/posthog/surveys/SurveyType;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/Survey;->type:Lcom/posthog/surveys/SurveyType;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/posthog/surveys/Survey;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/posthog/surveys/Survey;->name:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/posthog/surveys/Survey;->type:Lcom/posthog/surveys/SurveyType;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/posthog/surveys/Survey;->questions:Ljava/util/List;

    invoke-static {v0, v2, v1}, Le2;->b(Ljava/util/List;II)I

    move-result v0

    iget-object v2, p0, Lcom/posthog/surveys/Survey;->description:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/posthog/surveys/Survey;->featureFlagKeys:Ljava/util/List;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/posthog/surveys/Survey;->linkedFlagKey:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/posthog/surveys/Survey;->targetingFlagKey:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/posthog/surveys/Survey;->internalTargetingFlagKey:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/posthog/surveys/Survey;->conditions:Lcom/posthog/surveys/SurveyConditions;

    if-nez v2, :cond_5

    move v2, v3

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Lcom/posthog/surveys/SurveyConditions;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/posthog/surveys/Survey;->appearance:Lcom/posthog/surveys/SurveyAppearance;

    if-nez v2, :cond_6

    move v2, v3

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Lcom/posthog/surveys/SurveyAppearance;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/posthog/surveys/Survey;->currentIteration:Ljava/lang/Integer;

    if-nez v2, :cond_7

    move v2, v3

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/posthog/surveys/Survey;->currentIterationStartDate:Ljava/util/Date;

    if-nez v2, :cond_8

    move v2, v3

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/posthog/surveys/Survey;->startDate:Ljava/util/Date;

    if-nez v2, :cond_9

    move v2, v3

    goto :goto_9

    :cond_9
    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    :goto_9
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/posthog/surveys/Survey;->endDate:Ljava/util/Date;

    if-nez v2, :cond_a

    move v2, v3

    goto :goto_a

    :cond_a
    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    :goto_a
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/posthog/surveys/Survey;->schedule:Lcom/posthog/surveys/SurveySchedule;

    if-nez v2, :cond_b

    move v2, v3

    goto :goto_b

    :cond_b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_b
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/posthog/surveys/Survey;->translations:Ljava/util/Map;

    if-nez p0, :cond_c

    goto :goto_c

    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_c
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Survey(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/posthog/surveys/Survey;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/Survey;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/Survey;->type:Lcom/posthog/surveys/SurveyType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", questions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/Survey;->questions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/Survey;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", featureFlagKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/Survey;->featureFlagKeys:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", linkedFlagKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/Survey;->linkedFlagKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", targetingFlagKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/Survey;->targetingFlagKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", internalTargetingFlagKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/Survey;->internalTargetingFlagKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", conditions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/Survey;->conditions:Lcom/posthog/surveys/SurveyConditions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", appearance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/Survey;->appearance:Lcom/posthog/surveys/SurveyAppearance;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentIteration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/Survey;->currentIteration:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentIterationStartDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/Survey;->currentIterationStartDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/Survey;->startDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/Survey;->endDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", schedule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/Survey;->schedule:Lcom/posthog/surveys/SurveySchedule;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", translations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/posthog/surveys/Survey;->translations:Ljava/util/Map;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lg2;->c(Ljava/lang/StringBuilder;Ljava/util/Map;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
