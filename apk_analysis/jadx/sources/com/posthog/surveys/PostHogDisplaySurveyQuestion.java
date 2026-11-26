package com.posthog.surveys;

import defpackage.b36;
import defpackage.jh2;
import defpackage.kx2;
import defpackage.me0;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class PostHogDisplaySurveyQuestion {
    public static final Companion Companion = new Companion(null);
    private final String buttonText;
    private final String id;
    private final boolean isOptional;
    private final String question;
    private final String questionDescription;
    private final PostHogDisplaySurveyTextContentType questionDescriptionContentType;

    public PostHogDisplaySurveyQuestion(String str, String str2, String str3, PostHogDisplaySurveyTextContentType postHogDisplaySurveyTextContentType, boolean z, String str4) {
        str.getClass();
        str2.getClass();
        postHogDisplaySurveyTextContentType.getClass();
        this.id = str;
        this.question = str2;
        this.questionDescription = str3;
        this.questionDescriptionContentType = postHogDisplaySurveyTextContentType;
        this.isOptional = z;
        this.buttonText = str4;
    }

    public final String getButtonText() {
        return this.buttonText;
    }

    public final String getId() {
        return this.id;
    }

    public final String getQuestion() {
        return this.question;
    }

    public final String getQuestionDescription() {
        return this.questionDescription;
    }

    public final PostHogDisplaySurveyTextContentType getQuestionDescriptionContentType() {
        return this.questionDescriptionContentType;
    }

    public final boolean isOptional() {
        return this.isOptional;
    }

    public static final class Companion {

        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;
            public static final /* synthetic */ int[] $EnumSwitchMapping$1;
            public static final /* synthetic */ int[] $EnumSwitchMapping$2;

            static {
                int[] iArr = new int[SurveyTextContentType.values().length];
                try {
                    iArr[SurveyTextContentType.HTML.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[SurveyTextContentType.TEXT.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                $EnumSwitchMapping$0 = iArr;
                int[] iArr2 = new int[SurveyRatingDisplayType.values().length];
                try {
                    iArr2[SurveyRatingDisplayType.EMOJI.ordinal()] = 1;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr2[SurveyRatingDisplayType.NUMBER.ordinal()] = 2;
                } catch (NoSuchFieldError unused4) {
                }
                $EnumSwitchMapping$1 = iArr2;
                int[] iArr3 = new int[SurveyQuestionType.values().length];
                try {
                    iArr3[SurveyQuestionType.OPEN.ordinal()] = 1;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr3[SurveyQuestionType.LINK.ordinal()] = 2;
                } catch (NoSuchFieldError unused6) {
                }
                try {
                    iArr3[SurveyQuestionType.RATING.ordinal()] = 3;
                } catch (NoSuchFieldError unused7) {
                }
                try {
                    iArr3[SurveyQuestionType.SINGLE_CHOICE.ordinal()] = 4;
                } catch (NoSuchFieldError unused8) {
                }
                try {
                    iArr3[SurveyQuestionType.MULTIPLE_CHOICE.ordinal()] = 5;
                } catch (NoSuchFieldError unused9) {
                }
                $EnumSwitchMapping$2 = iArr3;
            }
        }

        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public static /* synthetic */ PostHogDisplaySurveyQuestion fromSurveyQuestion$posthog$default(Companion companion, SurveyQuestion surveyQuestion, SurveyQuestionTranslation surveyQuestionTranslation, int i, Object obj) {
            if ((i & 2) != 0) {
                surveyQuestionTranslation = null;
            }
            return companion.fromSurveyQuestion$posthog(surveyQuestion, surveyQuestionTranslation);
        }

        /* JADX WARN: Code duplicated, block: B:121:0x013d  */
        /* JADX WARN: Code duplicated, block: B:41:0x006e  */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r8v1 */
        /* JADX WARN: Type inference failed for: r8v10 */
        /* JADX WARN: Type inference failed for: r8v11, types: [java.util.List] */
        /* JADX WARN: Type inference failed for: r8v12 */
        /* JADX WARN: Type inference failed for: r8v2, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r8v3 */
        /* JADX WARN: Type inference failed for: r8v6, types: [kx2] */
        /* JADX WARN: Type inference failed for: r8v7 */
        /* JADX WARN: Type inference failed for: r8v8, types: [java.util.List] */
        /* JADX WARN: Type inference failed for: r8v9 */
        public final PostHogDisplaySurveyQuestion fromSurveyQuestion$posthog(SurveyQuestion surveyQuestion, SurveyQuestionTranslation surveyQuestionTranslation) {
            String question;
            String description;
            String buttonText;
            PostHogDisplaySurveyTextContentType postHogDisplaySurveyTextContentType;
            String link;
            String upperBoundLabel;
            String lowerBoundLabel;
            PostHogDisplaySurveyRatingType postHogDisplaySurveyRatingType;
            b36 b36Var;
            String lowerBoundLabel2;
            int i;
            String str;
            String upperBoundLabel2;
            Object choices;
            Boolean shuffleOptions;
            Boolean hasOpenChoice;
            List<String> choices2;
            Boolean shuffleOptions2;
            Boolean hasOpenChoice2;
            List<String> choices3;
            surveyQuestion.getClass();
            String id = surveyQuestion.getId();
            String str2 = id == null ? "" : id;
            if ((surveyQuestionTranslation == null || (question = surveyQuestionTranslation.getQuestion()) == null) && (question = surveyQuestion.getQuestion()) == null) {
                return null;
            }
            String str3 = question;
            if (surveyQuestionTranslation == null || (description = surveyQuestionTranslation.getDescription()) == null) {
                description = surveyQuestion.getDescription();
            }
            String str4 = description;
            if (surveyQuestionTranslation == null || (buttonText = surveyQuestionTranslation.getButtonText()) == null) {
                buttonText = surveyQuestion.getButtonText();
            }
            String str5 = buttonText;
            Boolean optional = surveyQuestion.getOptional();
            boolean zBooleanValue = optional != null ? optional.booleanValue() : false;
            SurveyTextContentType descriptionContentType = surveyQuestion.getDescriptionContentType();
            if (descriptionContentType == null) {
                postHogDisplaySurveyTextContentType = PostHogDisplaySurveyTextContentType.TEXT;
            } else {
                int i2 = WhenMappings.$EnumSwitchMapping$0[descriptionContentType.ordinal()];
                if (i2 == 1) {
                    postHogDisplaySurveyTextContentType = PostHogDisplaySurveyTextContentType.HTML;
                } else {
                    if (i2 != 2) {
                        me0.e();
                        return null;
                    }
                    postHogDisplaySurveyTextContentType = PostHogDisplaySurveyTextContentType.TEXT;
                }
                if (postHogDisplaySurveyTextContentType == null) {
                    postHogDisplaySurveyTextContentType = PostHogDisplaySurveyTextContentType.TEXT;
                }
            }
            SurveyQuestionType type = surveyQuestion.getType();
            int i3 = type == null ? -1 : WhenMappings.$EnumSwitchMapping$2[type.ordinal()];
            if (i3 == 1) {
                return new PostHogDisplayOpenQuestion(str2, str3, str4, postHogDisplaySurveyTextContentType, zBooleanValue, str5);
            }
            if (i3 == 2) {
                PostHogDisplaySurveyTextContentType postHogDisplaySurveyTextContentType2 = postHogDisplaySurveyTextContentType;
                LinkSurveyQuestion linkSurveyQuestion = surveyQuestion instanceof LinkSurveyQuestion ? (LinkSurveyQuestion) surveyQuestion : null;
                return new PostHogDisplayLinkQuestion(str2, str3, str4, postHogDisplaySurveyTextContentType2, zBooleanValue, str5, (surveyQuestionTranslation == null || (link = surveyQuestionTranslation.getLink()) == null) ? linkSurveyQuestion != null ? linkSurveyQuestion.getLink() : null : link);
            }
            if (i3 != 3) {
                ?? r8 = kx2.b;
                if (i3 == 4) {
                    boolean zBooleanValue2 = false;
                    PostHogDisplaySurveyTextContentType postHogDisplaySurveyTextContentType3 = postHogDisplaySurveyTextContentType;
                    SingleSurveyQuestion singleSurveyQuestion = surveyQuestion instanceof SingleSurveyQuestion ? (SingleSurveyQuestion) surveyQuestion : null;
                    if (surveyQuestionTranslation == null || (choices2 = surveyQuestionTranslation.getChoices()) == null) {
                        choices = singleSurveyQuestion != null ? singleSurveyQuestion.getChoices() : null;
                        if (choices != null) {
                            r8 = choices;
                        }
                    } else {
                        r8 = choices2;
                    }
                    boolean zBooleanValue3 = (singleSurveyQuestion == null || (hasOpenChoice = singleSurveyQuestion.getHasOpenChoice()) == null) ? false : hasOpenChoice.booleanValue();
                    if (singleSurveyQuestion != null && (shuffleOptions = singleSurveyQuestion.getShuffleOptions()) != null) {
                        zBooleanValue2 = shuffleOptions.booleanValue();
                    }
                    return new PostHogDisplayChoiceQuestion(str2, str3, str4, postHogDisplaySurveyTextContentType3, zBooleanValue, str5, r8, zBooleanValue3, zBooleanValue2, false);
                }
                if (i3 != 5) {
                    return null;
                }
                MultipleSurveyQuestion multipleSurveyQuestion = surveyQuestion instanceof MultipleSurveyQuestion ? (MultipleSurveyQuestion) surveyQuestion : null;
                if (surveyQuestionTranslation == null || (choices3 = surveyQuestionTranslation.getChoices()) == null) {
                    choices = multipleSurveyQuestion != null ? multipleSurveyQuestion.getChoices() : null;
                    if (choices != null) {
                        r8 = choices;
                    }
                } else {
                    r8 = choices3;
                }
                boolean zBooleanValue4 = false;
                PostHogDisplaySurveyTextContentType postHogDisplaySurveyTextContentType4 = postHogDisplaySurveyTextContentType;
                boolean zBooleanValue5 = (multipleSurveyQuestion == null || (hasOpenChoice2 = multipleSurveyQuestion.getHasOpenChoice()) == null) ? false : hasOpenChoice2.booleanValue();
                if (multipleSurveyQuestion != null && (shuffleOptions2 = multipleSurveyQuestion.getShuffleOptions()) != null) {
                    zBooleanValue4 = shuffleOptions2.booleanValue();
                }
                return new PostHogDisplayChoiceQuestion(str2, str3, str4, postHogDisplaySurveyTextContentType4, zBooleanValue, str5, r8, zBooleanValue5, zBooleanValue4, true);
            }
            PostHogDisplaySurveyTextContentType postHogDisplaySurveyTextContentType5 = postHogDisplaySurveyTextContentType;
            if (!(surveyQuestion instanceof RatingSurveyQuestion)) {
                return new PostHogDisplayRatingQuestion(str2, str3, str4, postHogDisplaySurveyTextContentType5, zBooleanValue, str5, PostHogDisplaySurveyRatingType.NUMBER, 1, 5, (surveyQuestionTranslation == null || (lowerBoundLabel = surveyQuestionTranslation.getLowerBoundLabel()) == null) ? "" : lowerBoundLabel, (surveyQuestionTranslation == null || (upperBoundLabel = surveyQuestionTranslation.getUpperBoundLabel()) == null) ? "" : upperBoundLabel);
            }
            RatingSurveyQuestion ratingSurveyQuestion = (RatingSurveyQuestion) surveyQuestion;
            SurveyRatingDisplayType display = ratingSurveyQuestion.getDisplay();
            if (display == null) {
                postHogDisplaySurveyRatingType = PostHogDisplaySurveyRatingType.NUMBER;
            } else {
                int i4 = WhenMappings.$EnumSwitchMapping$1[display.ordinal()];
                if (i4 == 1) {
                    postHogDisplaySurveyRatingType = PostHogDisplaySurveyRatingType.EMOJI;
                } else {
                    if (i4 != 2) {
                        me0.e();
                        return null;
                    }
                    postHogDisplaySurveyRatingType = PostHogDisplaySurveyRatingType.NUMBER;
                }
                if (postHogDisplaySurveyRatingType == null) {
                    postHogDisplaySurveyRatingType = PostHogDisplaySurveyRatingType.NUMBER;
                }
            }
            PostHogDisplaySurveyRatingType postHogDisplaySurveyRatingType2 = postHogDisplaySurveyRatingType;
            Integer scale = ratingSurveyQuestion.getScale();
            if (scale != null && scale.intValue() == 10) {
                b36Var = new b36(0, 10);
            } else {
                Integer scale2 = ratingSurveyQuestion.getScale();
                b36Var = new b36(1, Integer.valueOf(scale2 != null ? scale2.intValue() : 5));
            }
            int iIntValue = ((Number) b36Var.b).intValue();
            int iIntValue2 = ((Number) b36Var.c).intValue();
            String str6 = ((surveyQuestionTranslation == null || (lowerBoundLabel2 = surveyQuestionTranslation.getLowerBoundLabel()) == null) && (lowerBoundLabel2 = ratingSurveyQuestion.getLowerBoundLabel()) == null) ? "" : lowerBoundLabel2;
            if (surveyQuestionTranslation == null || (upperBoundLabel2 = surveyQuestionTranslation.getUpperBoundLabel()) == null) {
                String upperBoundLabel3 = ratingSurveyQuestion.getUpperBoundLabel();
                i = iIntValue;
                str = upperBoundLabel3 == null ? "" : upperBoundLabel3;
            } else {
                i = iIntValue;
                str = upperBoundLabel2;
            }
            return new PostHogDisplayRatingQuestion(str2, str3, str4, postHogDisplaySurveyTextContentType5, zBooleanValue, str5, postHogDisplaySurveyRatingType2, i, iIntValue2, str6, str);
        }

        private Companion() {
        }
    }
}
