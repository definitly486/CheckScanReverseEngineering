.class public final Lcom/posthog/surveys/SurveyAppearance;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final autoDisappear:Ljava/lang/Boolean;

.field private final backgroundColor:Ljava/lang/String;

.field private final borderColor:Ljava/lang/String;

.field private final descriptionTextColor:Ljava/lang/String;

.field private final displayThankYouMessage:Ljava/lang/Boolean;

.field private final fontFamily:Ljava/lang/String;

.field private final inputBackground:Ljava/lang/String;

.field private final inputTextColor:Ljava/lang/String;

.field private final placeholder:Ljava/lang/String;

.field private final position:Lcom/posthog/surveys/SurveyAppearancePosition;

.field private final ratingButtonActiveColor:Ljava/lang/String;

.field private final ratingButtonColor:Ljava/lang/String;

.field private final ratingButtonHoverColor:Ljava/lang/String;

.field private final shuffleQuestions:Ljava/lang/Boolean;

.field private final submitButtonColor:Ljava/lang/String;

.field private final submitButtonText:Ljava/lang/String;

.field private final submitButtonTextColor:Ljava/lang/String;

.field private final surveyPopupDelaySeconds:Ljava/lang/Double;

.field private final textColor:Ljava/lang/String;

.field private final thankYouMessageCloseButtonText:Ljava/lang/String;

.field private final thankYouMessageDescription:Ljava/lang/String;

.field private final thankYouMessageDescriptionContentType:Lcom/posthog/surveys/SurveyTextContentType;

.field private final thankYouMessageHeader:Ljava/lang/String;

.field private final whiteLabel:Ljava/lang/Boolean;

.field private final widgetColor:Ljava/lang/String;

.field private final widgetLabel:Ljava/lang/String;

.field private final widgetSelector:Ljava/lang/String;

.field private final widgetType:Lcom/posthog/surveys/SurveyAppearanceWidgetType;


# direct methods
.method public constructor <init>(Lcom/posthog/surveys/SurveyAppearancePosition;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/SurveyTextContentType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Double;Lcom/posthog/surveys/SurveyAppearanceWidgetType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual/range {p21 .. p21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/posthog/surveys/SurveyAppearance;->position:Lcom/posthog/surveys/SurveyAppearancePosition;

    iput-object p2, p0, Lcom/posthog/surveys/SurveyAppearance;->fontFamily:Ljava/lang/String;

    iput-object p3, p0, Lcom/posthog/surveys/SurveyAppearance;->backgroundColor:Ljava/lang/String;

    iput-object p4, p0, Lcom/posthog/surveys/SurveyAppearance;->submitButtonColor:Ljava/lang/String;

    iput-object p5, p0, Lcom/posthog/surveys/SurveyAppearance;->submitButtonText:Ljava/lang/String;

    iput-object p6, p0, Lcom/posthog/surveys/SurveyAppearance;->submitButtonTextColor:Ljava/lang/String;

    iput-object p7, p0, Lcom/posthog/surveys/SurveyAppearance;->textColor:Ljava/lang/String;

    iput-object p8, p0, Lcom/posthog/surveys/SurveyAppearance;->descriptionTextColor:Ljava/lang/String;

    iput-object p9, p0, Lcom/posthog/surveys/SurveyAppearance;->ratingButtonColor:Ljava/lang/String;

    iput-object p10, p0, Lcom/posthog/surveys/SurveyAppearance;->ratingButtonActiveColor:Ljava/lang/String;

    iput-object p11, p0, Lcom/posthog/surveys/SurveyAppearance;->ratingButtonHoverColor:Ljava/lang/String;

    iput-object p12, p0, Lcom/posthog/surveys/SurveyAppearance;->inputBackground:Ljava/lang/String;

    iput-object p13, p0, Lcom/posthog/surveys/SurveyAppearance;->inputTextColor:Ljava/lang/String;

    iput-object p14, p0, Lcom/posthog/surveys/SurveyAppearance;->whiteLabel:Ljava/lang/Boolean;

    iput-object p15, p0, Lcom/posthog/surveys/SurveyAppearance;->autoDisappear:Ljava/lang/Boolean;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/posthog/surveys/SurveyAppearance;->displayThankYouMessage:Ljava/lang/Boolean;

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/posthog/surveys/SurveyAppearance;->thankYouMessageHeader:Ljava/lang/String;

    move-object/from16 p1, p18

    iput-object p1, p0, Lcom/posthog/surveys/SurveyAppearance;->thankYouMessageDescription:Ljava/lang/String;

    move-object/from16 p1, p19

    iput-object p1, p0, Lcom/posthog/surveys/SurveyAppearance;->thankYouMessageDescriptionContentType:Lcom/posthog/surveys/SurveyTextContentType;

    move-object/from16 p1, p20

    iput-object p1, p0, Lcom/posthog/surveys/SurveyAppearance;->thankYouMessageCloseButtonText:Ljava/lang/String;

    move-object/from16 p1, p21

    iput-object p1, p0, Lcom/posthog/surveys/SurveyAppearance;->borderColor:Ljava/lang/String;

    move-object/from16 p1, p22

    iput-object p1, p0, Lcom/posthog/surveys/SurveyAppearance;->placeholder:Ljava/lang/String;

    move-object/from16 p1, p23

    iput-object p1, p0, Lcom/posthog/surveys/SurveyAppearance;->shuffleQuestions:Ljava/lang/Boolean;

    move-object/from16 p1, p24

    iput-object p1, p0, Lcom/posthog/surveys/SurveyAppearance;->surveyPopupDelaySeconds:Ljava/lang/Double;

    move-object/from16 p1, p25

    iput-object p1, p0, Lcom/posthog/surveys/SurveyAppearance;->widgetType:Lcom/posthog/surveys/SurveyAppearanceWidgetType;

    move-object/from16 p1, p26

    iput-object p1, p0, Lcom/posthog/surveys/SurveyAppearance;->widgetSelector:Ljava/lang/String;

    move-object/from16 p1, p27

    iput-object p1, p0, Lcom/posthog/surveys/SurveyAppearance;->widgetLabel:Ljava/lang/String;

    move-object/from16 p1, p28

    iput-object p1, p0, Lcom/posthog/surveys/SurveyAppearance;->widgetColor:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/posthog/surveys/SurveyAppearance;Lcom/posthog/surveys/SurveyAppearancePosition;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/SurveyTextContentType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Double;Lcom/posthog/surveys/SurveyAppearanceWidgetType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/posthog/surveys/SurveyAppearance;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p29

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/posthog/surveys/SurveyAppearance;->position:Lcom/posthog/surveys/SurveyAppearancePosition;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/posthog/surveys/SurveyAppearance;->fontFamily:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/posthog/surveys/SurveyAppearance;->backgroundColor:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/posthog/surveys/SurveyAppearance;->submitButtonColor:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/posthog/surveys/SurveyAppearance;->submitButtonText:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/posthog/surveys/SurveyAppearance;->submitButtonTextColor:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/posthog/surveys/SurveyAppearance;->textColor:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/posthog/surveys/SurveyAppearance;->descriptionTextColor:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/posthog/surveys/SurveyAppearance;->ratingButtonColor:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/posthog/surveys/SurveyAppearance;->ratingButtonActiveColor:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/posthog/surveys/SurveyAppearance;->ratingButtonHoverColor:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/posthog/surveys/SurveyAppearance;->inputBackground:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/posthog/surveys/SurveyAppearance;->inputTextColor:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/posthog/surveys/SurveyAppearance;->whiteLabel:Ljava/lang/Boolean;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    iget-object v2, v0, Lcom/posthog/surveys/SurveyAppearance;->autoDisappear:Ljava/lang/Boolean;

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_f

    iget-object v1, v0, Lcom/posthog/surveys/SurveyAppearance;->displayThankYouMessage:Ljava/lang/Boolean;

    goto :goto_f

    :cond_f
    move-object/from16 v1, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, p29, v16

    move-object/from16 p2, v1

    if-eqz v16, :cond_10

    iget-object v1, v0, Lcom/posthog/surveys/SurveyAppearance;->thankYouMessageHeader:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v1, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, p29, v16

    move-object/from16 p3, v1

    if-eqz v16, :cond_11

    iget-object v1, v0, Lcom/posthog/surveys/SurveyAppearance;->thankYouMessageDescription:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v1, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, p29, v16

    move-object/from16 p4, v1

    if-eqz v16, :cond_12

    iget-object v1, v0, Lcom/posthog/surveys/SurveyAppearance;->thankYouMessageDescriptionContentType:Lcom/posthog/surveys/SurveyTextContentType;

    goto :goto_12

    :cond_12
    move-object/from16 v1, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, p29, v16

    move-object/from16 p5, v1

    if-eqz v16, :cond_13

    iget-object v1, v0, Lcom/posthog/surveys/SurveyAppearance;->thankYouMessageCloseButtonText:Ljava/lang/String;

    goto :goto_13

    :cond_13
    move-object/from16 v1, p20

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, p29, v16

    move-object/from16 p6, v1

    if-eqz v16, :cond_14

    iget-object v1, v0, Lcom/posthog/surveys/SurveyAppearance;->borderColor:Ljava/lang/String;

    goto :goto_14

    :cond_14
    move-object/from16 v1, p21

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, p29, v16

    move-object/from16 p7, v1

    if-eqz v16, :cond_15

    iget-object v1, v0, Lcom/posthog/surveys/SurveyAppearance;->placeholder:Ljava/lang/String;

    goto :goto_15

    :cond_15
    move-object/from16 v1, p22

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, p29, v16

    move-object/from16 p8, v1

    if-eqz v16, :cond_16

    iget-object v1, v0, Lcom/posthog/surveys/SurveyAppearance;->shuffleQuestions:Ljava/lang/Boolean;

    goto :goto_16

    :cond_16
    move-object/from16 v1, p23

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, p29, v16

    move-object/from16 p9, v1

    if-eqz v16, :cond_17

    iget-object v1, v0, Lcom/posthog/surveys/SurveyAppearance;->surveyPopupDelaySeconds:Ljava/lang/Double;

    goto :goto_17

    :cond_17
    move-object/from16 v1, p24

    :goto_17
    const/high16 v16, 0x1000000

    and-int v16, p29, v16

    move-object/from16 p10, v1

    if-eqz v16, :cond_18

    iget-object v1, v0, Lcom/posthog/surveys/SurveyAppearance;->widgetType:Lcom/posthog/surveys/SurveyAppearanceWidgetType;

    goto :goto_18

    :cond_18
    move-object/from16 v1, p25

    :goto_18
    const/high16 v16, 0x2000000

    and-int v16, p29, v16

    move-object/from16 p11, v1

    if-eqz v16, :cond_19

    iget-object v1, v0, Lcom/posthog/surveys/SurveyAppearance;->widgetSelector:Ljava/lang/String;

    goto :goto_19

    :cond_19
    move-object/from16 v1, p26

    :goto_19
    const/high16 v16, 0x4000000

    and-int v16, p29, v16

    move-object/from16 p12, v1

    if-eqz v16, :cond_1a

    iget-object v1, v0, Lcom/posthog/surveys/SurveyAppearance;->widgetLabel:Ljava/lang/String;

    goto :goto_1a

    :cond_1a
    move-object/from16 v1, p27

    :goto_1a
    const/high16 v16, 0x8000000

    and-int v16, p29, v16

    if-eqz v16, :cond_1b

    move-object/from16 p13, v1

    iget-object v1, v0, Lcom/posthog/surveys/SurveyAppearance;->widgetColor:Ljava/lang/String;

    move-object/from16 p28, p13

    move-object/from16 p29, v1

    :goto_1b
    move-object/from16 p17, p2

    move-object/from16 p18, p3

    move-object/from16 p19, p4

    move-object/from16 p20, p5

    move-object/from16 p21, p6

    move-object/from16 p22, p7

    move-object/from16 p23, p8

    move-object/from16 p24, p9

    move-object/from16 p25, p10

    move-object/from16 p26, p11

    move-object/from16 p27, p12

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

    goto :goto_1c

    :cond_1b
    move-object/from16 p29, p28

    move-object/from16 p28, v1

    goto :goto_1b

    :goto_1c
    invoke-virtual/range {p1 .. p29}, Lcom/posthog/surveys/SurveyAppearance;->copy(Lcom/posthog/surveys/SurveyAppearancePosition;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/SurveyTextContentType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Double;Lcom/posthog/surveys/SurveyAppearanceWidgetType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/posthog/surveys/SurveyAppearance;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Lcom/posthog/surveys/SurveyAppearancePosition;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->position:Lcom/posthog/surveys/SurveyAppearancePosition;

    return-object p0
.end method

.method public final component10()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->ratingButtonActiveColor:Ljava/lang/String;

    return-object p0
.end method

.method public final component11()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->ratingButtonHoverColor:Ljava/lang/String;

    return-object p0
.end method

.method public final component12()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->inputBackground:Ljava/lang/String;

    return-object p0
.end method

.method public final component13()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->inputTextColor:Ljava/lang/String;

    return-object p0
.end method

.method public final component14()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->whiteLabel:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final component15()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->autoDisappear:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final component16()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->displayThankYouMessage:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final component17()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->thankYouMessageHeader:Ljava/lang/String;

    return-object p0
.end method

.method public final component18()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->thankYouMessageDescription:Ljava/lang/String;

    return-object p0
.end method

.method public final component19()Lcom/posthog/surveys/SurveyTextContentType;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->thankYouMessageDescriptionContentType:Lcom/posthog/surveys/SurveyTextContentType;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->fontFamily:Ljava/lang/String;

    return-object p0
.end method

.method public final component20()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->thankYouMessageCloseButtonText:Ljava/lang/String;

    return-object p0
.end method

.method public final component21()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->borderColor:Ljava/lang/String;

    return-object p0
.end method

.method public final component22()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->placeholder:Ljava/lang/String;

    return-object p0
.end method

.method public final component23()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->shuffleQuestions:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final component24()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->surveyPopupDelaySeconds:Ljava/lang/Double;

    return-object p0
.end method

.method public final component25()Lcom/posthog/surveys/SurveyAppearanceWidgetType;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->widgetType:Lcom/posthog/surveys/SurveyAppearanceWidgetType;

    return-object p0
.end method

.method public final component26()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->widgetSelector:Ljava/lang/String;

    return-object p0
.end method

.method public final component27()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->widgetLabel:Ljava/lang/String;

    return-object p0
.end method

.method public final component28()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->widgetColor:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->backgroundColor:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->submitButtonColor:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->submitButtonText:Ljava/lang/String;

    return-object p0
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->submitButtonTextColor:Ljava/lang/String;

    return-object p0
.end method

.method public final component7()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->textColor:Ljava/lang/String;

    return-object p0
.end method

.method public final component8()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->descriptionTextColor:Ljava/lang/String;

    return-object p0
.end method

.method public final component9()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->ratingButtonColor:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Lcom/posthog/surveys/SurveyAppearancePosition;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/SurveyTextContentType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Double;Lcom/posthog/surveys/SurveyAppearanceWidgetType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/posthog/surveys/SurveyAppearance;
    .locals 29

    invoke-virtual/range {p21 .. p21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/posthog/surveys/SurveyAppearance;

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

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p27

    move-object/from16 v28, p28

    invoke-direct/range {v0 .. v28}, Lcom/posthog/surveys/SurveyAppearance;-><init>(Lcom/posthog/surveys/SurveyAppearancePosition;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/SurveyTextContentType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Double;Lcom/posthog/surveys/SurveyAppearanceWidgetType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/posthog/surveys/SurveyAppearance;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/posthog/surveys/SurveyAppearance;

    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->position:Lcom/posthog/surveys/SurveyAppearancePosition;

    iget-object v3, p1, Lcom/posthog/surveys/SurveyAppearance;->position:Lcom/posthog/surveys/SurveyAppearancePosition;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->fontFamily:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/surveys/SurveyAppearance;->fontFamily:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->backgroundColor:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/surveys/SurveyAppearance;->backgroundColor:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->submitButtonColor:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/surveys/SurveyAppearance;->submitButtonColor:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->submitButtonText:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/surveys/SurveyAppearance;->submitButtonText:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->submitButtonTextColor:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/surveys/SurveyAppearance;->submitButtonTextColor:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->textColor:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/surveys/SurveyAppearance;->textColor:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->descriptionTextColor:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/surveys/SurveyAppearance;->descriptionTextColor:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->ratingButtonColor:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/surveys/SurveyAppearance;->ratingButtonColor:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->ratingButtonActiveColor:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/surveys/SurveyAppearance;->ratingButtonActiveColor:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->ratingButtonHoverColor:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/surveys/SurveyAppearance;->ratingButtonHoverColor:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->inputBackground:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/surveys/SurveyAppearance;->inputBackground:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->inputTextColor:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/surveys/SurveyAppearance;->inputTextColor:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->whiteLabel:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/posthog/surveys/SurveyAppearance;->whiteLabel:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->autoDisappear:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/posthog/surveys/SurveyAppearance;->autoDisappear:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->displayThankYouMessage:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/posthog/surveys/SurveyAppearance;->displayThankYouMessage:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->thankYouMessageHeader:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/surveys/SurveyAppearance;->thankYouMessageHeader:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->thankYouMessageDescription:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/surveys/SurveyAppearance;->thankYouMessageDescription:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->thankYouMessageDescriptionContentType:Lcom/posthog/surveys/SurveyTextContentType;

    iget-object v3, p1, Lcom/posthog/surveys/SurveyAppearance;->thankYouMessageDescriptionContentType:Lcom/posthog/surveys/SurveyTextContentType;

    if-eq v1, v3, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->thankYouMessageCloseButtonText:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/surveys/SurveyAppearance;->thankYouMessageCloseButtonText:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->borderColor:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/surveys/SurveyAppearance;->borderColor:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->placeholder:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/surveys/SurveyAppearance;->placeholder:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->shuffleQuestions:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/posthog/surveys/SurveyAppearance;->shuffleQuestions:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->surveyPopupDelaySeconds:Ljava/lang/Double;

    iget-object v3, p1, Lcom/posthog/surveys/SurveyAppearance;->surveyPopupDelaySeconds:Ljava/lang/Double;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    :cond_19
    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->widgetType:Lcom/posthog/surveys/SurveyAppearanceWidgetType;

    iget-object v3, p1, Lcom/posthog/surveys/SurveyAppearance;->widgetType:Lcom/posthog/surveys/SurveyAppearanceWidgetType;

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->widgetSelector:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/surveys/SurveyAppearance;->widgetSelector:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v2

    :cond_1b
    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->widgetLabel:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/surveys/SurveyAppearance;->widgetLabel:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v2

    :cond_1c
    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->widgetColor:Ljava/lang/String;

    iget-object p1, p1, Lcom/posthog/surveys/SurveyAppearance;->widgetColor:Ljava/lang/String;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    return v2

    :cond_1d
    return v0
.end method

.method public final getAutoDisappear()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->autoDisappear:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getBackgroundColor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->backgroundColor:Ljava/lang/String;

    return-object p0
.end method

.method public final getBorderColor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->borderColor:Ljava/lang/String;

    return-object p0
.end method

.method public final getDescriptionTextColor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->descriptionTextColor:Ljava/lang/String;

    return-object p0
.end method

.method public final getDisplayThankYouMessage()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->displayThankYouMessage:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getFontFamily()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->fontFamily:Ljava/lang/String;

    return-object p0
.end method

.method public final getInputBackground()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->inputBackground:Ljava/lang/String;

    return-object p0
.end method

.method public final getInputTextColor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->inputTextColor:Ljava/lang/String;

    return-object p0
.end method

.method public final getPlaceholder()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->placeholder:Ljava/lang/String;

    return-object p0
.end method

.method public final getPosition()Lcom/posthog/surveys/SurveyAppearancePosition;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->position:Lcom/posthog/surveys/SurveyAppearancePosition;

    return-object p0
.end method

.method public final getRatingButtonActiveColor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->ratingButtonActiveColor:Ljava/lang/String;

    return-object p0
.end method

.method public final getRatingButtonColor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->ratingButtonColor:Ljava/lang/String;

    return-object p0
.end method

.method public final getRatingButtonHoverColor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->ratingButtonHoverColor:Ljava/lang/String;

    return-object p0
.end method

.method public final getShuffleQuestions()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->shuffleQuestions:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getSubmitButtonColor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->submitButtonColor:Ljava/lang/String;

    return-object p0
.end method

.method public final getSubmitButtonText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->submitButtonText:Ljava/lang/String;

    return-object p0
.end method

.method public final getSubmitButtonTextColor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->submitButtonTextColor:Ljava/lang/String;

    return-object p0
.end method

.method public final getSurveyPopupDelaySeconds()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->surveyPopupDelaySeconds:Ljava/lang/Double;

    return-object p0
.end method

.method public final getTextColor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->textColor:Ljava/lang/String;

    return-object p0
.end method

.method public final getThankYouMessageCloseButtonText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->thankYouMessageCloseButtonText:Ljava/lang/String;

    return-object p0
.end method

.method public final getThankYouMessageDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->thankYouMessageDescription:Ljava/lang/String;

    return-object p0
.end method

.method public final getThankYouMessageDescriptionContentType()Lcom/posthog/surveys/SurveyTextContentType;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->thankYouMessageDescriptionContentType:Lcom/posthog/surveys/SurveyTextContentType;

    return-object p0
.end method

.method public final getThankYouMessageHeader()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->thankYouMessageHeader:Ljava/lang/String;

    return-object p0
.end method

.method public final getWhiteLabel()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->whiteLabel:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getWidgetColor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->widgetColor:Ljava/lang/String;

    return-object p0
.end method

.method public final getWidgetLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->widgetLabel:Ljava/lang/String;

    return-object p0
.end method

.method public final getWidgetSelector()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->widgetSelector:Ljava/lang/String;

    return-object p0
.end method

.method public final getWidgetType()Lcom/posthog/surveys/SurveyAppearanceWidgetType;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->widgetType:Lcom/posthog/surveys/SurveyAppearanceWidgetType;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/posthog/surveys/SurveyAppearance;->position:Lcom/posthog/surveys/SurveyAppearancePosition;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/posthog/surveys/SurveyAppearance;->fontFamily:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/posthog/surveys/SurveyAppearance;->backgroundColor:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/posthog/surveys/SurveyAppearance;->submitButtonColor:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/posthog/surveys/SurveyAppearance;->submitButtonText:Ljava/lang/String;

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/posthog/surveys/SurveyAppearance;->submitButtonTextColor:Ljava/lang/String;

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/posthog/surveys/SurveyAppearance;->textColor:Ljava/lang/String;

    if-nez v3, :cond_6

    move v3, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/posthog/surveys/SurveyAppearance;->descriptionTextColor:Ljava/lang/String;

    if-nez v3, :cond_7

    move v3, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/posthog/surveys/SurveyAppearance;->ratingButtonColor:Ljava/lang/String;

    if-nez v3, :cond_8

    move v3, v1

    goto :goto_8

    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_8
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/posthog/surveys/SurveyAppearance;->ratingButtonActiveColor:Ljava/lang/String;

    if-nez v3, :cond_9

    move v3, v1

    goto :goto_9

    :cond_9
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_9
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/posthog/surveys/SurveyAppearance;->ratingButtonHoverColor:Ljava/lang/String;

    if-nez v3, :cond_a

    move v3, v1

    goto :goto_a

    :cond_a
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_a
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/posthog/surveys/SurveyAppearance;->inputBackground:Ljava/lang/String;

    if-nez v3, :cond_b

    move v3, v1

    goto :goto_b

    :cond_b
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_b
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/posthog/surveys/SurveyAppearance;->inputTextColor:Ljava/lang/String;

    if-nez v3, :cond_c

    move v3, v1

    goto :goto_c

    :cond_c
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_c
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/posthog/surveys/SurveyAppearance;->whiteLabel:Ljava/lang/Boolean;

    if-nez v3, :cond_d

    move v3, v1

    goto :goto_d

    :cond_d
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_d
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/posthog/surveys/SurveyAppearance;->autoDisappear:Ljava/lang/Boolean;

    if-nez v3, :cond_e

    move v3, v1

    goto :goto_e

    :cond_e
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_e
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/posthog/surveys/SurveyAppearance;->displayThankYouMessage:Ljava/lang/Boolean;

    if-nez v3, :cond_f

    move v3, v1

    goto :goto_f

    :cond_f
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_f
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/posthog/surveys/SurveyAppearance;->thankYouMessageHeader:Ljava/lang/String;

    if-nez v3, :cond_10

    move v3, v1

    goto :goto_10

    :cond_10
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_10
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/posthog/surveys/SurveyAppearance;->thankYouMessageDescription:Ljava/lang/String;

    if-nez v3, :cond_11

    move v3, v1

    goto :goto_11

    :cond_11
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_11
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/posthog/surveys/SurveyAppearance;->thankYouMessageDescriptionContentType:Lcom/posthog/surveys/SurveyTextContentType;

    if-nez v3, :cond_12

    move v3, v1

    goto :goto_12

    :cond_12
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_12
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/posthog/surveys/SurveyAppearance;->thankYouMessageCloseButtonText:Ljava/lang/String;

    if-nez v3, :cond_13

    move v3, v1

    goto :goto_13

    :cond_13
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_13
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/posthog/surveys/SurveyAppearance;->borderColor:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/posthog/surveys/SurveyAppearance;->placeholder:Ljava/lang/String;

    if-nez v3, :cond_14

    move v3, v1

    goto :goto_14

    :cond_14
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_14
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/posthog/surveys/SurveyAppearance;->shuffleQuestions:Ljava/lang/Boolean;

    if-nez v3, :cond_15

    move v3, v1

    goto :goto_15

    :cond_15
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_15
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/posthog/surveys/SurveyAppearance;->surveyPopupDelaySeconds:Ljava/lang/Double;

    if-nez v3, :cond_16

    move v3, v1

    goto :goto_16

    :cond_16
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_16
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/posthog/surveys/SurveyAppearance;->widgetType:Lcom/posthog/surveys/SurveyAppearanceWidgetType;

    if-nez v3, :cond_17

    move v3, v1

    goto :goto_17

    :cond_17
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_17
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/posthog/surveys/SurveyAppearance;->widgetSelector:Ljava/lang/String;

    if-nez v3, :cond_18

    move v3, v1

    goto :goto_18

    :cond_18
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_18
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lcom/posthog/surveys/SurveyAppearance;->widgetLabel:Ljava/lang/String;

    if-nez v3, :cond_19

    move v3, v1

    goto :goto_19

    :cond_19
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_19
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->widgetColor:Ljava/lang/String;

    if-nez p0, :cond_1a

    goto :goto_1a

    :cond_1a
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1a
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SurveyAppearance(position="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->position:Lcom/posthog/surveys/SurveyAppearancePosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fontFamily="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->fontFamily:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->backgroundColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", submitButtonColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->submitButtonColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", submitButtonText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->submitButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", submitButtonTextColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->submitButtonTextColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", textColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->textColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", descriptionTextColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->descriptionTextColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ratingButtonColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->ratingButtonColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ratingButtonActiveColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->ratingButtonActiveColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ratingButtonHoverColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->ratingButtonHoverColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", inputBackground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->inputBackground:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", inputTextColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->inputTextColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", whiteLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->whiteLabel:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", autoDisappear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->autoDisappear:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", displayThankYouMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->displayThankYouMessage:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", thankYouMessageHeader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->thankYouMessageHeader:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", thankYouMessageDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->thankYouMessageDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", thankYouMessageDescriptionContentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->thankYouMessageDescriptionContentType:Lcom/posthog/surveys/SurveyTextContentType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", thankYouMessageCloseButtonText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->thankYouMessageCloseButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", borderColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->borderColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", placeholder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->placeholder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shuffleQuestions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->shuffleQuestions:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", surveyPopupDelaySeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->surveyPopupDelaySeconds:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", widgetType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->widgetType:Lcom/posthog/surveys/SurveyAppearanceWidgetType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", widgetSelector="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->widgetSelector:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", widgetLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/surveys/SurveyAppearance;->widgetLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", widgetColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/posthog/surveys/SurveyAppearance;->widgetColor:Ljava/lang/String;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lxp;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
