package com.posthog.surveys;

import com.tapjoy.TJAdUnitConstants;
import defpackage.aa4;
import defpackage.jh2;
import defpackage.tg;
import defpackage.xp;

/* JADX INFO: loaded from: classes4.dex */
public final class PostHogDisplaySurveyAppearance {
    public static final Companion Companion = new Companion(null);
    private final String backgroundColor;
    private final String borderColor;
    private final String descriptionTextColor;
    private final boolean displayThankYouMessage;
    private final String fontFamily;
    private final String inputBackground;
    private final String inputTextColor;
    private final String placeholder;
    private final String ratingButtonActiveColor;
    private final String ratingButtonColor;
    private final String submitButtonColor;
    private final String submitButtonText;
    private final String submitButtonTextColor;
    private final Double surveyPopupDelaySeconds;
    private final String textColor;
    private final String thankYouMessageCloseButtonText;
    private final String thankYouMessageDescription;
    private final PostHogDisplaySurveyTextContentType thankYouMessageDescriptionContentType;
    private final String thankYouMessageHeader;

    public /* synthetic */ PostHogDisplaySurveyAppearance(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, Double d, boolean z, String str14, String str15, PostHogDisplaySurveyTextContentType postHogDisplaySurveyTextContentType, String str16, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4, (i & 16) != 0 ? null : str5, (i & 32) != 0 ? null : str6, (i & 64) != 0 ? null : str7, (i & 128) != 0 ? null : str8, (i & 256) != 0 ? null : str9, (i & 512) != 0 ? null : str10, (i & 1024) != 0 ? null : str11, (i & 2048) != 0 ? null : str12, (i & 4096) != 0 ? null : str13, (i & 8192) != 0 ? null : d, (i & 16384) != 0 ? false : z, (i & 32768) != 0 ? null : str14, (i & 65536) != 0 ? null : str15, (i & 131072) != 0 ? null : postHogDisplaySurveyTextContentType, (i & 262144) != 0 ? null : str16);
    }

    public static /* synthetic */ PostHogDisplaySurveyAppearance copy$default(PostHogDisplaySurveyAppearance postHogDisplaySurveyAppearance, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, Double d, boolean z, String str14, String str15, PostHogDisplaySurveyTextContentType postHogDisplaySurveyTextContentType, String str16, int i, Object obj) {
        String str17;
        PostHogDisplaySurveyTextContentType postHogDisplaySurveyTextContentType2;
        String str18 = (i & 1) != 0 ? postHogDisplaySurveyAppearance.fontFamily : str;
        String str19 = (i & 2) != 0 ? postHogDisplaySurveyAppearance.backgroundColor : str2;
        String str20 = (i & 4) != 0 ? postHogDisplaySurveyAppearance.borderColor : str3;
        String str21 = (i & 8) != 0 ? postHogDisplaySurveyAppearance.submitButtonColor : str4;
        String str22 = (i & 16) != 0 ? postHogDisplaySurveyAppearance.submitButtonText : str5;
        String str23 = (i & 32) != 0 ? postHogDisplaySurveyAppearance.submitButtonTextColor : str6;
        String str24 = (i & 64) != 0 ? postHogDisplaySurveyAppearance.textColor : str7;
        String str25 = (i & 128) != 0 ? postHogDisplaySurveyAppearance.descriptionTextColor : str8;
        String str26 = (i & 256) != 0 ? postHogDisplaySurveyAppearance.ratingButtonColor : str9;
        String str27 = (i & 512) != 0 ? postHogDisplaySurveyAppearance.ratingButtonActiveColor : str10;
        String str28 = (i & 1024) != 0 ? postHogDisplaySurveyAppearance.inputBackground : str11;
        String str29 = (i & 2048) != 0 ? postHogDisplaySurveyAppearance.inputTextColor : str12;
        String str30 = (i & 4096) != 0 ? postHogDisplaySurveyAppearance.placeholder : str13;
        Double d2 = (i & 8192) != 0 ? postHogDisplaySurveyAppearance.surveyPopupDelaySeconds : d;
        String str31 = str18;
        boolean z2 = (i & 16384) != 0 ? postHogDisplaySurveyAppearance.displayThankYouMessage : z;
        String str32 = (i & 32768) != 0 ? postHogDisplaySurveyAppearance.thankYouMessageHeader : str14;
        String str33 = (i & 65536) != 0 ? postHogDisplaySurveyAppearance.thankYouMessageDescription : str15;
        PostHogDisplaySurveyTextContentType postHogDisplaySurveyTextContentType3 = (i & 131072) != 0 ? postHogDisplaySurveyAppearance.thankYouMessageDescriptionContentType : postHogDisplaySurveyTextContentType;
        if ((i & 262144) != 0) {
            postHogDisplaySurveyTextContentType2 = postHogDisplaySurveyTextContentType3;
            str17 = postHogDisplaySurveyAppearance.thankYouMessageCloseButtonText;
        } else {
            str17 = str16;
            postHogDisplaySurveyTextContentType2 = postHogDisplaySurveyTextContentType3;
        }
        return postHogDisplaySurveyAppearance.copy(str31, str19, str20, str21, str22, str23, str24, str25, str26, str27, str28, str29, str30, d2, z2, str32, str33, postHogDisplaySurveyTextContentType2, str17);
    }

    public final String component1() {
        return this.fontFamily;
    }

    public final String component10() {
        return this.ratingButtonActiveColor;
    }

    public final String component11() {
        return this.inputBackground;
    }

    public final String component12() {
        return this.inputTextColor;
    }

    public final String component13() {
        return this.placeholder;
    }

    public final Double component14() {
        return this.surveyPopupDelaySeconds;
    }

    public final boolean component15() {
        return this.displayThankYouMessage;
    }

    public final String component16() {
        return this.thankYouMessageHeader;
    }

    public final String component17() {
        return this.thankYouMessageDescription;
    }

    public final PostHogDisplaySurveyTextContentType component18() {
        return this.thankYouMessageDescriptionContentType;
    }

    public final String component19() {
        return this.thankYouMessageCloseButtonText;
    }

    public final String component2() {
        return this.backgroundColor;
    }

    public final String component3() {
        return this.borderColor;
    }

    public final String component4() {
        return this.submitButtonColor;
    }

    public final String component5() {
        return this.submitButtonText;
    }

    public final String component6() {
        return this.submitButtonTextColor;
    }

    public final String component7() {
        return this.textColor;
    }

    public final String component8() {
        return this.descriptionTextColor;
    }

    public final String component9() {
        return this.ratingButtonColor;
    }

    public final PostHogDisplaySurveyAppearance copy(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, Double d, boolean z, String str14, String str15, PostHogDisplaySurveyTextContentType postHogDisplaySurveyTextContentType, String str16) {
        return new PostHogDisplaySurveyAppearance(str, str2, str3, str4, str5, str6, str7, str8, str9, str10, str11, str12, str13, d, z, str14, str15, postHogDisplaySurveyTextContentType, str16);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PostHogDisplaySurveyAppearance)) {
            return false;
        }
        PostHogDisplaySurveyAppearance postHogDisplaySurveyAppearance = (PostHogDisplaySurveyAppearance) obj;
        return aa4.e(this.fontFamily, postHogDisplaySurveyAppearance.fontFamily) && aa4.e(this.backgroundColor, postHogDisplaySurveyAppearance.backgroundColor) && aa4.e(this.borderColor, postHogDisplaySurveyAppearance.borderColor) && aa4.e(this.submitButtonColor, postHogDisplaySurveyAppearance.submitButtonColor) && aa4.e(this.submitButtonText, postHogDisplaySurveyAppearance.submitButtonText) && aa4.e(this.submitButtonTextColor, postHogDisplaySurveyAppearance.submitButtonTextColor) && aa4.e(this.textColor, postHogDisplaySurveyAppearance.textColor) && aa4.e(this.descriptionTextColor, postHogDisplaySurveyAppearance.descriptionTextColor) && aa4.e(this.ratingButtonColor, postHogDisplaySurveyAppearance.ratingButtonColor) && aa4.e(this.ratingButtonActiveColor, postHogDisplaySurveyAppearance.ratingButtonActiveColor) && aa4.e(this.inputBackground, postHogDisplaySurveyAppearance.inputBackground) && aa4.e(this.inputTextColor, postHogDisplaySurveyAppearance.inputTextColor) && aa4.e(this.placeholder, postHogDisplaySurveyAppearance.placeholder) && aa4.e(this.surveyPopupDelaySeconds, postHogDisplaySurveyAppearance.surveyPopupDelaySeconds) && this.displayThankYouMessage == postHogDisplaySurveyAppearance.displayThankYouMessage && aa4.e(this.thankYouMessageHeader, postHogDisplaySurveyAppearance.thankYouMessageHeader) && aa4.e(this.thankYouMessageDescription, postHogDisplaySurveyAppearance.thankYouMessageDescription) && this.thankYouMessageDescriptionContentType == postHogDisplaySurveyAppearance.thankYouMessageDescriptionContentType && aa4.e(this.thankYouMessageCloseButtonText, postHogDisplaySurveyAppearance.thankYouMessageCloseButtonText);
    }

    public final String getBackgroundColor() {
        return this.backgroundColor;
    }

    public final String getBorderColor() {
        return this.borderColor;
    }

    public final String getDescriptionTextColor() {
        return this.descriptionTextColor;
    }

    public final boolean getDisplayThankYouMessage() {
        return this.displayThankYouMessage;
    }

    public final String getFontFamily() {
        return this.fontFamily;
    }

    public final String getInputBackground() {
        return this.inputBackground;
    }

    public final String getInputTextColor() {
        return this.inputTextColor;
    }

    public final String getPlaceholder() {
        return this.placeholder;
    }

    public final String getRatingButtonActiveColor() {
        return this.ratingButtonActiveColor;
    }

    public final String getRatingButtonColor() {
        return this.ratingButtonColor;
    }

    public final String getSubmitButtonColor() {
        return this.submitButtonColor;
    }

    public final String getSubmitButtonText() {
        return this.submitButtonText;
    }

    public final String getSubmitButtonTextColor() {
        return this.submitButtonTextColor;
    }

    public final Double getSurveyPopupDelaySeconds() {
        return this.surveyPopupDelaySeconds;
    }

    public final String getTextColor() {
        return this.textColor;
    }

    public final String getThankYouMessageCloseButtonText() {
        return this.thankYouMessageCloseButtonText;
    }

    public final String getThankYouMessageDescription() {
        return this.thankYouMessageDescription;
    }

    public final PostHogDisplaySurveyTextContentType getThankYouMessageDescriptionContentType() {
        return this.thankYouMessageDescriptionContentType;
    }

    public final String getThankYouMessageHeader() {
        return this.thankYouMessageHeader;
    }

    public int hashCode() {
        String str = this.fontFamily;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.backgroundColor;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.borderColor;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.submitButtonColor;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.submitButtonText;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.submitButtonTextColor;
        int iHashCode6 = (iHashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.textColor;
        int iHashCode7 = (iHashCode6 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.descriptionTextColor;
        int iHashCode8 = (iHashCode7 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.ratingButtonColor;
        int iHashCode9 = (iHashCode8 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.ratingButtonActiveColor;
        int iHashCode10 = (iHashCode9 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.inputBackground;
        int iHashCode11 = (iHashCode10 + (str11 == null ? 0 : str11.hashCode())) * 31;
        String str12 = this.inputTextColor;
        int iHashCode12 = (iHashCode11 + (str12 == null ? 0 : str12.hashCode())) * 31;
        String str13 = this.placeholder;
        int iHashCode13 = (iHashCode12 + (str13 == null ? 0 : str13.hashCode())) * 31;
        Double d = this.surveyPopupDelaySeconds;
        int iC = tg.c((iHashCode13 + (d == null ? 0 : d.hashCode())) * 31, 31, this.displayThankYouMessage);
        String str14 = this.thankYouMessageHeader;
        int iHashCode14 = (iC + (str14 == null ? 0 : str14.hashCode())) * 31;
        String str15 = this.thankYouMessageDescription;
        int iHashCode15 = (iHashCode14 + (str15 == null ? 0 : str15.hashCode())) * 31;
        PostHogDisplaySurveyTextContentType postHogDisplaySurveyTextContentType = this.thankYouMessageDescriptionContentType;
        int iHashCode16 = (iHashCode15 + (postHogDisplaySurveyTextContentType == null ? 0 : postHogDisplaySurveyTextContentType.hashCode())) * 31;
        String str16 = this.thankYouMessageCloseButtonText;
        return iHashCode16 + (str16 != null ? str16.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("PostHogDisplaySurveyAppearance(fontFamily=");
        sb.append(this.fontFamily);
        sb.append(", backgroundColor=");
        sb.append(this.backgroundColor);
        sb.append(", borderColor=");
        sb.append(this.borderColor);
        sb.append(", submitButtonColor=");
        sb.append(this.submitButtonColor);
        sb.append(", submitButtonText=");
        sb.append(this.submitButtonText);
        sb.append(", submitButtonTextColor=");
        sb.append(this.submitButtonTextColor);
        sb.append(", textColor=");
        sb.append(this.textColor);
        sb.append(", descriptionTextColor=");
        sb.append(this.descriptionTextColor);
        sb.append(", ratingButtonColor=");
        sb.append(this.ratingButtonColor);
        sb.append(", ratingButtonActiveColor=");
        sb.append(this.ratingButtonActiveColor);
        sb.append(", inputBackground=");
        sb.append(this.inputBackground);
        sb.append(", inputTextColor=");
        sb.append(this.inputTextColor);
        sb.append(", placeholder=");
        sb.append(this.placeholder);
        sb.append(", surveyPopupDelaySeconds=");
        sb.append(this.surveyPopupDelaySeconds);
        sb.append(", displayThankYouMessage=");
        sb.append(this.displayThankYouMessage);
        sb.append(", thankYouMessageHeader=");
        sb.append(this.thankYouMessageHeader);
        sb.append(", thankYouMessageDescription=");
        sb.append(this.thankYouMessageDescription);
        sb.append(", thankYouMessageDescriptionContentType=");
        sb.append(this.thankYouMessageDescriptionContentType);
        sb.append(", thankYouMessageCloseButtonText=");
        return xp.e(sb, this.thankYouMessageCloseButtonText, ')');
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public static /* synthetic */ PostHogDisplaySurveyAppearance fromSurveyAppearance$posthog$default(Companion companion, SurveyAppearance surveyAppearance, SurveyTranslation surveyTranslation, int i, Object obj) {
            if ((i & 2) != 0) {
                surveyTranslation = null;
            }
            return companion.fromSurveyAppearance$posthog(surveyAppearance, surveyTranslation);
        }

        public final PostHogDisplaySurveyAppearance fromSurveyAppearance$posthog(SurveyAppearance surveyAppearance, SurveyTranslation surveyTranslation) {
            String thankYouMessageHeader;
            String thankYouMessageDescription;
            String thankYouMessageCloseButtonText;
            surveyAppearance.getClass();
            SurveyTextContentType thankYouMessageDescriptionContentType = surveyAppearance.getThankYouMessageDescriptionContentType();
            PostHogDisplaySurveyTextContentType postHogDisplaySurveyTextContentType = aa4.e(thankYouMessageDescriptionContentType != null ? thankYouMessageDescriptionContentType.getValue() : null, TJAdUnitConstants.String.HTML) ? PostHogDisplaySurveyTextContentType.HTML : PostHogDisplaySurveyTextContentType.TEXT;
            String fontFamily = surveyAppearance.getFontFamily();
            String backgroundColor = surveyAppearance.getBackgroundColor();
            String borderColor = surveyAppearance.getBorderColor();
            String submitButtonColor = surveyAppearance.getSubmitButtonColor();
            String submitButtonText = surveyAppearance.getSubmitButtonText();
            String submitButtonTextColor = surveyAppearance.getSubmitButtonTextColor();
            String textColor = surveyAppearance.getTextColor();
            String descriptionTextColor = surveyAppearance.getDescriptionTextColor();
            String ratingButtonColor = surveyAppearance.getRatingButtonColor();
            String ratingButtonActiveColor = surveyAppearance.getRatingButtonActiveColor();
            String inputBackground = surveyAppearance.getInputBackground();
            String inputTextColor = surveyAppearance.getInputTextColor();
            String placeholder = surveyAppearance.getPlaceholder();
            Double surveyPopupDelaySeconds = surveyAppearance.getSurveyPopupDelaySeconds();
            Boolean displayThankYouMessage = surveyAppearance.getDisplayThankYouMessage();
            boolean zBooleanValue = displayThankYouMessage != null ? displayThankYouMessage.booleanValue() : false;
            if (surveyTranslation == null || (thankYouMessageHeader = surveyTranslation.getThankYouMessageHeader()) == null) {
                thankYouMessageHeader = surveyAppearance.getThankYouMessageHeader();
            }
            String str = thankYouMessageHeader;
            if (surveyTranslation == null || (thankYouMessageDescription = surveyTranslation.getThankYouMessageDescription()) == null) {
                thankYouMessageDescription = surveyAppearance.getThankYouMessageDescription();
            }
            String str2 = thankYouMessageDescription;
            if (surveyTranslation == null || (thankYouMessageCloseButtonText = surveyTranslation.getThankYouMessageCloseButtonText()) == null) {
                thankYouMessageCloseButtonText = surveyAppearance.getThankYouMessageCloseButtonText();
            }
            return new PostHogDisplaySurveyAppearance(fontFamily, backgroundColor, borderColor, submitButtonColor, submitButtonText, submitButtonTextColor, textColor, descriptionTextColor, ratingButtonColor, ratingButtonActiveColor, inputBackground, inputTextColor, placeholder, surveyPopupDelaySeconds, zBooleanValue, str, str2, postHogDisplaySurveyTextContentType, thankYouMessageCloseButtonText);
        }

        private Companion() {
        }
    }

    public PostHogDisplaySurveyAppearance(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, Double d, boolean z, String str14, String str15, PostHogDisplaySurveyTextContentType postHogDisplaySurveyTextContentType, String str16) {
        this.fontFamily = str;
        this.backgroundColor = str2;
        this.borderColor = str3;
        this.submitButtonColor = str4;
        this.submitButtonText = str5;
        this.submitButtonTextColor = str6;
        this.textColor = str7;
        this.descriptionTextColor = str8;
        this.ratingButtonColor = str9;
        this.ratingButtonActiveColor = str10;
        this.inputBackground = str11;
        this.inputTextColor = str12;
        this.placeholder = str13;
        this.surveyPopupDelaySeconds = d;
        this.displayThankYouMessage = z;
        this.thankYouMessageHeader = str14;
        this.thankYouMessageDescription = str15;
        this.thankYouMessageDescriptionContentType = postHogDisplaySurveyTextContentType;
        this.thankYouMessageCloseButtonText = str16;
    }

    public PostHogDisplaySurveyAppearance() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, null, 524287, null);
    }
}
