package com.posthog.surveys;

import androidx.compose.runtime.composer.linkbuffer.GroupFlagsKt;
import defpackage.aa4;
import defpackage.xp;
import defpackage.zg;

/* JADX INFO: loaded from: classes4.dex */
public final class SurveyAppearance {
    private final Boolean autoDisappear;
    private final String backgroundColor;
    private final String borderColor;
    private final String descriptionTextColor;
    private final Boolean displayThankYouMessage;
    private final String fontFamily;
    private final String inputBackground;
    private final String inputTextColor;
    private final String placeholder;
    private final SurveyAppearancePosition position;
    private final String ratingButtonActiveColor;
    private final String ratingButtonColor;
    private final String ratingButtonHoverColor;
    private final Boolean shuffleQuestions;
    private final String submitButtonColor;
    private final String submitButtonText;
    private final String submitButtonTextColor;
    private final Double surveyPopupDelaySeconds;
    private final String textColor;
    private final String thankYouMessageCloseButtonText;
    private final String thankYouMessageDescription;
    private final SurveyTextContentType thankYouMessageDescriptionContentType;
    private final String thankYouMessageHeader;
    private final Boolean whiteLabel;
    private final String widgetColor;
    private final String widgetLabel;
    private final String widgetSelector;
    private final SurveyAppearanceWidgetType widgetType;

    public SurveyAppearance(SurveyAppearancePosition surveyAppearancePosition, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, Boolean bool, Boolean bool2, Boolean bool3, String str13, String str14, SurveyTextContentType surveyTextContentType, String str15, String str16, String str17, Boolean bool4, Double d, SurveyAppearanceWidgetType surveyAppearanceWidgetType, String str18, String str19, String str20) {
        str16.getClass();
        this.position = surveyAppearancePosition;
        this.fontFamily = str;
        this.backgroundColor = str2;
        this.submitButtonColor = str3;
        this.submitButtonText = str4;
        this.submitButtonTextColor = str5;
        this.textColor = str6;
        this.descriptionTextColor = str7;
        this.ratingButtonColor = str8;
        this.ratingButtonActiveColor = str9;
        this.ratingButtonHoverColor = str10;
        this.inputBackground = str11;
        this.inputTextColor = str12;
        this.whiteLabel = bool;
        this.autoDisappear = bool2;
        this.displayThankYouMessage = bool3;
        this.thankYouMessageHeader = str13;
        this.thankYouMessageDescription = str14;
        this.thankYouMessageDescriptionContentType = surveyTextContentType;
        this.thankYouMessageCloseButtonText = str15;
        this.borderColor = str16;
        this.placeholder = str17;
        this.shuffleQuestions = bool4;
        this.surveyPopupDelaySeconds = d;
        this.widgetType = surveyAppearanceWidgetType;
        this.widgetSelector = str18;
        this.widgetLabel = str19;
        this.widgetColor = str20;
    }

    public static /* synthetic */ SurveyAppearance copy$default(SurveyAppearance surveyAppearance, SurveyAppearancePosition surveyAppearancePosition, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, Boolean bool, Boolean bool2, Boolean bool3, String str13, String str14, SurveyTextContentType surveyTextContentType, String str15, String str16, String str17, Boolean bool4, Double d, SurveyAppearanceWidgetType surveyAppearanceWidgetType, String str18, String str19, String str20, int i, Object obj) {
        String str21;
        String str22;
        SurveyAppearancePosition surveyAppearancePosition2 = (i & 1) != 0 ? surveyAppearance.position : surveyAppearancePosition;
        String str23 = (i & 2) != 0 ? surveyAppearance.fontFamily : str;
        String str24 = (i & 4) != 0 ? surveyAppearance.backgroundColor : str2;
        String str25 = (i & 8) != 0 ? surveyAppearance.submitButtonColor : str3;
        String str26 = (i & 16) != 0 ? surveyAppearance.submitButtonText : str4;
        String str27 = (i & 32) != 0 ? surveyAppearance.submitButtonTextColor : str5;
        String str28 = (i & 64) != 0 ? surveyAppearance.textColor : str6;
        String str29 = (i & 128) != 0 ? surveyAppearance.descriptionTextColor : str7;
        String str30 = (i & 256) != 0 ? surveyAppearance.ratingButtonColor : str8;
        String str31 = (i & 512) != 0 ? surveyAppearance.ratingButtonActiveColor : str9;
        String str32 = (i & 1024) != 0 ? surveyAppearance.ratingButtonHoverColor : str10;
        String str33 = (i & 2048) != 0 ? surveyAppearance.inputBackground : str11;
        String str34 = (i & 4096) != 0 ? surveyAppearance.inputTextColor : str12;
        Boolean bool5 = (i & 8192) != 0 ? surveyAppearance.whiteLabel : bool;
        SurveyAppearancePosition surveyAppearancePosition3 = surveyAppearancePosition2;
        Boolean bool6 = (i & 16384) != 0 ? surveyAppearance.autoDisappear : bool2;
        Boolean bool7 = (i & 32768) != 0 ? surveyAppearance.displayThankYouMessage : bool3;
        String str35 = (i & 65536) != 0 ? surveyAppearance.thankYouMessageHeader : str13;
        String str36 = (i & 131072) != 0 ? surveyAppearance.thankYouMessageDescription : str14;
        SurveyTextContentType surveyTextContentType2 = (i & 262144) != 0 ? surveyAppearance.thankYouMessageDescriptionContentType : surveyTextContentType;
        String str37 = (i & 524288) != 0 ? surveyAppearance.thankYouMessageCloseButtonText : str15;
        String str38 = (i & 1048576) != 0 ? surveyAppearance.borderColor : str16;
        String str39 = (i & 2097152) != 0 ? surveyAppearance.placeholder : str17;
        Boolean bool8 = (i & 4194304) != 0 ? surveyAppearance.shuffleQuestions : bool4;
        Double d2 = (i & 8388608) != 0 ? surveyAppearance.surveyPopupDelaySeconds : d;
        SurveyAppearanceWidgetType surveyAppearanceWidgetType2 = (i & 16777216) != 0 ? surveyAppearance.widgetType : surveyAppearanceWidgetType;
        String str40 = (i & GroupFlagsKt.HasAuxSlotFlag) != 0 ? surveyAppearance.widgetSelector : str18;
        String str41 = (i & 67108864) != 0 ? surveyAppearance.widgetLabel : str19;
        if ((i & 134217728) != 0) {
            str22 = str41;
            str21 = surveyAppearance.widgetColor;
        } else {
            str21 = str20;
            str22 = str41;
        }
        return surveyAppearance.copy(surveyAppearancePosition3, str23, str24, str25, str26, str27, str28, str29, str30, str31, str32, str33, str34, bool5, bool6, bool7, str35, str36, surveyTextContentType2, str37, str38, str39, bool8, d2, surveyAppearanceWidgetType2, str40, str22, str21);
    }

    public final SurveyAppearancePosition component1() {
        return this.position;
    }

    public final String component10() {
        return this.ratingButtonActiveColor;
    }

    public final String component11() {
        return this.ratingButtonHoverColor;
    }

    public final String component12() {
        return this.inputBackground;
    }

    public final String component13() {
        return this.inputTextColor;
    }

    public final Boolean component14() {
        return this.whiteLabel;
    }

    public final Boolean component15() {
        return this.autoDisappear;
    }

    public final Boolean component16() {
        return this.displayThankYouMessage;
    }

    public final String component17() {
        return this.thankYouMessageHeader;
    }

    public final String component18() {
        return this.thankYouMessageDescription;
    }

    public final SurveyTextContentType component19() {
        return this.thankYouMessageDescriptionContentType;
    }

    public final String component2() {
        return this.fontFamily;
    }

    public final String component20() {
        return this.thankYouMessageCloseButtonText;
    }

    public final String component21() {
        return this.borderColor;
    }

    public final String component22() {
        return this.placeholder;
    }

    public final Boolean component23() {
        return this.shuffleQuestions;
    }

    public final Double component24() {
        return this.surveyPopupDelaySeconds;
    }

    public final SurveyAppearanceWidgetType component25() {
        return this.widgetType;
    }

    public final String component26() {
        return this.widgetSelector;
    }

    public final String component27() {
        return this.widgetLabel;
    }

    public final String component28() {
        return this.widgetColor;
    }

    public final String component3() {
        return this.backgroundColor;
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

    public final SurveyAppearance copy(SurveyAppearancePosition surveyAppearancePosition, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, Boolean bool, Boolean bool2, Boolean bool3, String str13, String str14, SurveyTextContentType surveyTextContentType, String str15, String str16, String str17, Boolean bool4, Double d, SurveyAppearanceWidgetType surveyAppearanceWidgetType, String str18, String str19, String str20) {
        str16.getClass();
        return new SurveyAppearance(surveyAppearancePosition, str, str2, str3, str4, str5, str6, str7, str8, str9, str10, str11, str12, bool, bool2, bool3, str13, str14, surveyTextContentType, str15, str16, str17, bool4, d, surveyAppearanceWidgetType, str18, str19, str20);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SurveyAppearance)) {
            return false;
        }
        SurveyAppearance surveyAppearance = (SurveyAppearance) obj;
        return this.position == surveyAppearance.position && aa4.e(this.fontFamily, surveyAppearance.fontFamily) && aa4.e(this.backgroundColor, surveyAppearance.backgroundColor) && aa4.e(this.submitButtonColor, surveyAppearance.submitButtonColor) && aa4.e(this.submitButtonText, surveyAppearance.submitButtonText) && aa4.e(this.submitButtonTextColor, surveyAppearance.submitButtonTextColor) && aa4.e(this.textColor, surveyAppearance.textColor) && aa4.e(this.descriptionTextColor, surveyAppearance.descriptionTextColor) && aa4.e(this.ratingButtonColor, surveyAppearance.ratingButtonColor) && aa4.e(this.ratingButtonActiveColor, surveyAppearance.ratingButtonActiveColor) && aa4.e(this.ratingButtonHoverColor, surveyAppearance.ratingButtonHoverColor) && aa4.e(this.inputBackground, surveyAppearance.inputBackground) && aa4.e(this.inputTextColor, surveyAppearance.inputTextColor) && aa4.e(this.whiteLabel, surveyAppearance.whiteLabel) && aa4.e(this.autoDisappear, surveyAppearance.autoDisappear) && aa4.e(this.displayThankYouMessage, surveyAppearance.displayThankYouMessage) && aa4.e(this.thankYouMessageHeader, surveyAppearance.thankYouMessageHeader) && aa4.e(this.thankYouMessageDescription, surveyAppearance.thankYouMessageDescription) && this.thankYouMessageDescriptionContentType == surveyAppearance.thankYouMessageDescriptionContentType && aa4.e(this.thankYouMessageCloseButtonText, surveyAppearance.thankYouMessageCloseButtonText) && aa4.e(this.borderColor, surveyAppearance.borderColor) && aa4.e(this.placeholder, surveyAppearance.placeholder) && aa4.e(this.shuffleQuestions, surveyAppearance.shuffleQuestions) && aa4.e(this.surveyPopupDelaySeconds, surveyAppearance.surveyPopupDelaySeconds) && this.widgetType == surveyAppearance.widgetType && aa4.e(this.widgetSelector, surveyAppearance.widgetSelector) && aa4.e(this.widgetLabel, surveyAppearance.widgetLabel) && aa4.e(this.widgetColor, surveyAppearance.widgetColor);
    }

    public final Boolean getAutoDisappear() {
        return this.autoDisappear;
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

    public final Boolean getDisplayThankYouMessage() {
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

    public final SurveyAppearancePosition getPosition() {
        return this.position;
    }

    public final String getRatingButtonActiveColor() {
        return this.ratingButtonActiveColor;
    }

    public final String getRatingButtonColor() {
        return this.ratingButtonColor;
    }

    public final String getRatingButtonHoverColor() {
        return this.ratingButtonHoverColor;
    }

    public final Boolean getShuffleQuestions() {
        return this.shuffleQuestions;
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

    public final SurveyTextContentType getThankYouMessageDescriptionContentType() {
        return this.thankYouMessageDescriptionContentType;
    }

    public final String getThankYouMessageHeader() {
        return this.thankYouMessageHeader;
    }

    public final Boolean getWhiteLabel() {
        return this.whiteLabel;
    }

    public final String getWidgetColor() {
        return this.widgetColor;
    }

    public final String getWidgetLabel() {
        return this.widgetLabel;
    }

    public final String getWidgetSelector() {
        return this.widgetSelector;
    }

    public final SurveyAppearanceWidgetType getWidgetType() {
        return this.widgetType;
    }

    public int hashCode() {
        SurveyAppearancePosition surveyAppearancePosition = this.position;
        int iHashCode = (surveyAppearancePosition == null ? 0 : surveyAppearancePosition.hashCode()) * 31;
        String str = this.fontFamily;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.backgroundColor;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.submitButtonColor;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.submitButtonText;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.submitButtonTextColor;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.textColor;
        int iHashCode7 = (iHashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.descriptionTextColor;
        int iHashCode8 = (iHashCode7 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.ratingButtonColor;
        int iHashCode9 = (iHashCode8 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.ratingButtonActiveColor;
        int iHashCode10 = (iHashCode9 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.ratingButtonHoverColor;
        int iHashCode11 = (iHashCode10 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.inputBackground;
        int iHashCode12 = (iHashCode11 + (str11 == null ? 0 : str11.hashCode())) * 31;
        String str12 = this.inputTextColor;
        int iHashCode13 = (iHashCode12 + (str12 == null ? 0 : str12.hashCode())) * 31;
        Boolean bool = this.whiteLabel;
        int iHashCode14 = (iHashCode13 + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.autoDisappear;
        int iHashCode15 = (iHashCode14 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Boolean bool3 = this.displayThankYouMessage;
        int iHashCode16 = (iHashCode15 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
        String str13 = this.thankYouMessageHeader;
        int iHashCode17 = (iHashCode16 + (str13 == null ? 0 : str13.hashCode())) * 31;
        String str14 = this.thankYouMessageDescription;
        int iHashCode18 = (iHashCode17 + (str14 == null ? 0 : str14.hashCode())) * 31;
        SurveyTextContentType surveyTextContentType = this.thankYouMessageDescriptionContentType;
        int iHashCode19 = (iHashCode18 + (surveyTextContentType == null ? 0 : surveyTextContentType.hashCode())) * 31;
        String str15 = this.thankYouMessageCloseButtonText;
        int iB = zg.b((iHashCode19 + (str15 == null ? 0 : str15.hashCode())) * 31, 31, this.borderColor);
        String str16 = this.placeholder;
        int iHashCode20 = (iB + (str16 == null ? 0 : str16.hashCode())) * 31;
        Boolean bool4 = this.shuffleQuestions;
        int iHashCode21 = (iHashCode20 + (bool4 == null ? 0 : bool4.hashCode())) * 31;
        Double d = this.surveyPopupDelaySeconds;
        int iHashCode22 = (iHashCode21 + (d == null ? 0 : d.hashCode())) * 31;
        SurveyAppearanceWidgetType surveyAppearanceWidgetType = this.widgetType;
        int iHashCode23 = (iHashCode22 + (surveyAppearanceWidgetType == null ? 0 : surveyAppearanceWidgetType.hashCode())) * 31;
        String str17 = this.widgetSelector;
        int iHashCode24 = (iHashCode23 + (str17 == null ? 0 : str17.hashCode())) * 31;
        String str18 = this.widgetLabel;
        int iHashCode25 = (iHashCode24 + (str18 == null ? 0 : str18.hashCode())) * 31;
        String str19 = this.widgetColor;
        return iHashCode25 + (str19 != null ? str19.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("SurveyAppearance(position=");
        sb.append(this.position);
        sb.append(", fontFamily=");
        sb.append(this.fontFamily);
        sb.append(", backgroundColor=");
        sb.append(this.backgroundColor);
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
        sb.append(", ratingButtonHoverColor=");
        sb.append(this.ratingButtonHoverColor);
        sb.append(", inputBackground=");
        sb.append(this.inputBackground);
        sb.append(", inputTextColor=");
        sb.append(this.inputTextColor);
        sb.append(", whiteLabel=");
        sb.append(this.whiteLabel);
        sb.append(", autoDisappear=");
        sb.append(this.autoDisappear);
        sb.append(", displayThankYouMessage=");
        sb.append(this.displayThankYouMessage);
        sb.append(", thankYouMessageHeader=");
        sb.append(this.thankYouMessageHeader);
        sb.append(", thankYouMessageDescription=");
        sb.append(this.thankYouMessageDescription);
        sb.append(", thankYouMessageDescriptionContentType=");
        sb.append(this.thankYouMessageDescriptionContentType);
        sb.append(", thankYouMessageCloseButtonText=");
        sb.append(this.thankYouMessageCloseButtonText);
        sb.append(", borderColor=");
        sb.append(this.borderColor);
        sb.append(", placeholder=");
        sb.append(this.placeholder);
        sb.append(", shuffleQuestions=");
        sb.append(this.shuffleQuestions);
        sb.append(", surveyPopupDelaySeconds=");
        sb.append(this.surveyPopupDelaySeconds);
        sb.append(", widgetType=");
        sb.append(this.widgetType);
        sb.append(", widgetSelector=");
        sb.append(this.widgetSelector);
        sb.append(", widgetLabel=");
        sb.append(this.widgetLabel);
        sb.append(", widgetColor=");
        return xp.e(sb, this.widgetColor, ')');
    }
}
