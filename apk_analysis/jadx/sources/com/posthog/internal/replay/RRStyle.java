package com.posthog.internal.replay;

import defpackage.aa4;
import defpackage.jh2;
import defpackage.xp;

/* JADX INFO: loaded from: classes4.dex */
public final class RRStyle {
    private String backgroundColor;
    private String backgroundImage;
    private String bar;
    private String borderColor;
    private Integer borderRadius;
    private Integer borderWidth;
    private String color;
    private String fontFamily;
    private Integer fontSize;
    private String horizontalAlign;
    private String iconLeft;
    private String iconRight;
    private Integer paddingBottom;
    private Integer paddingLeft;
    private Integer paddingRight;
    private Integer paddingTop;
    private String verticalAlign;

    public /* synthetic */ RRStyle(String str, String str2, String str3, Integer num, Integer num2, String str4, Integer num3, String str5, String str6, String str7, Integer num4, Integer num5, Integer num6, Integer num7, String str8, String str9, String str10, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : num, (i & 16) != 0 ? null : num2, (i & 32) != 0 ? null : str4, (i & 64) != 0 ? null : num3, (i & 128) != 0 ? null : str5, (i & 256) != 0 ? null : str6, (i & 512) != 0 ? null : str7, (i & 1024) != 0 ? null : num4, (i & 2048) != 0 ? null : num5, (i & 4096) != 0 ? null : num6, (i & 8192) != 0 ? null : num7, (i & 16384) != 0 ? null : str8, (i & 32768) != 0 ? null : str9, (i & 65536) != 0 ? null : str10);
    }

    public static /* synthetic */ RRStyle copy$default(RRStyle rRStyle, String str, String str2, String str3, Integer num, Integer num2, String str4, Integer num3, String str5, String str6, String str7, Integer num4, Integer num5, Integer num6, Integer num7, String str8, String str9, String str10, int i, Object obj) {
        String str11;
        String str12;
        String str13 = (i & 1) != 0 ? rRStyle.color : str;
        String str14 = (i & 2) != 0 ? rRStyle.backgroundColor : str2;
        String str15 = (i & 4) != 0 ? rRStyle.backgroundImage : str3;
        Integer num8 = (i & 8) != 0 ? rRStyle.borderWidth : num;
        Integer num9 = (i & 16) != 0 ? rRStyle.borderRadius : num2;
        String str16 = (i & 32) != 0 ? rRStyle.borderColor : str4;
        Integer num10 = (i & 64) != 0 ? rRStyle.fontSize : num3;
        String str17 = (i & 128) != 0 ? rRStyle.fontFamily : str5;
        String str18 = (i & 256) != 0 ? rRStyle.horizontalAlign : str6;
        String str19 = (i & 512) != 0 ? rRStyle.verticalAlign : str7;
        Integer num11 = (i & 1024) != 0 ? rRStyle.paddingTop : num4;
        Integer num12 = (i & 2048) != 0 ? rRStyle.paddingBottom : num5;
        Integer num13 = (i & 4096) != 0 ? rRStyle.paddingLeft : num6;
        Integer num14 = (i & 8192) != 0 ? rRStyle.paddingRight : num7;
        String str20 = str13;
        String str21 = (i & 16384) != 0 ? rRStyle.bar : str8;
        String str22 = (i & 32768) != 0 ? rRStyle.iconLeft : str9;
        if ((i & 65536) != 0) {
            str12 = str22;
            str11 = rRStyle.iconRight;
        } else {
            str11 = str10;
            str12 = str22;
        }
        return rRStyle.copy(str20, str14, str15, num8, num9, str16, num10, str17, str18, str19, num11, num12, num13, num14, str21, str12, str11);
    }

    public final String component1() {
        return this.color;
    }

    public final String component10() {
        return this.verticalAlign;
    }

    public final Integer component11() {
        return this.paddingTop;
    }

    public final Integer component12() {
        return this.paddingBottom;
    }

    public final Integer component13() {
        return this.paddingLeft;
    }

    public final Integer component14() {
        return this.paddingRight;
    }

    public final String component15() {
        return this.bar;
    }

    public final String component16() {
        return this.iconLeft;
    }

    public final String component17() {
        return this.iconRight;
    }

    public final String component2() {
        return this.backgroundColor;
    }

    public final String component3() {
        return this.backgroundImage;
    }

    public final Integer component4() {
        return this.borderWidth;
    }

    public final Integer component5() {
        return this.borderRadius;
    }

    public final String component6() {
        return this.borderColor;
    }

    public final Integer component7() {
        return this.fontSize;
    }

    public final String component8() {
        return this.fontFamily;
    }

    public final String component9() {
        return this.horizontalAlign;
    }

    public final RRStyle copy(String str, String str2, String str3, Integer num, Integer num2, String str4, Integer num3, String str5, String str6, String str7, Integer num4, Integer num5, Integer num6, Integer num7, String str8, String str9, String str10) {
        return new RRStyle(str, str2, str3, num, num2, str4, num3, str5, str6, str7, num4, num5, num6, num7, str8, str9, str10);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RRStyle)) {
            return false;
        }
        RRStyle rRStyle = (RRStyle) obj;
        return aa4.e(this.color, rRStyle.color) && aa4.e(this.backgroundColor, rRStyle.backgroundColor) && aa4.e(this.backgroundImage, rRStyle.backgroundImage) && aa4.e(this.borderWidth, rRStyle.borderWidth) && aa4.e(this.borderRadius, rRStyle.borderRadius) && aa4.e(this.borderColor, rRStyle.borderColor) && aa4.e(this.fontSize, rRStyle.fontSize) && aa4.e(this.fontFamily, rRStyle.fontFamily) && aa4.e(this.horizontalAlign, rRStyle.horizontalAlign) && aa4.e(this.verticalAlign, rRStyle.verticalAlign) && aa4.e(this.paddingTop, rRStyle.paddingTop) && aa4.e(this.paddingBottom, rRStyle.paddingBottom) && aa4.e(this.paddingLeft, rRStyle.paddingLeft) && aa4.e(this.paddingRight, rRStyle.paddingRight) && aa4.e(this.bar, rRStyle.bar) && aa4.e(this.iconLeft, rRStyle.iconLeft) && aa4.e(this.iconRight, rRStyle.iconRight);
    }

    public final String getBackgroundColor() {
        return this.backgroundColor;
    }

    public final String getBackgroundImage() {
        return this.backgroundImage;
    }

    public final String getBar() {
        return this.bar;
    }

    public final String getBorderColor() {
        return this.borderColor;
    }

    public final Integer getBorderRadius() {
        return this.borderRadius;
    }

    public final Integer getBorderWidth() {
        return this.borderWidth;
    }

    public final String getColor() {
        return this.color;
    }

    public final String getFontFamily() {
        return this.fontFamily;
    }

    public final Integer getFontSize() {
        return this.fontSize;
    }

    public final String getHorizontalAlign() {
        return this.horizontalAlign;
    }

    public final String getIconLeft() {
        return this.iconLeft;
    }

    public final String getIconRight() {
        return this.iconRight;
    }

    public final Integer getPaddingBottom() {
        return this.paddingBottom;
    }

    public final Integer getPaddingLeft() {
        return this.paddingLeft;
    }

    public final Integer getPaddingRight() {
        return this.paddingRight;
    }

    public final Integer getPaddingTop() {
        return this.paddingTop;
    }

    public final String getVerticalAlign() {
        return this.verticalAlign;
    }

    public int hashCode() {
        String str = this.color;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.backgroundColor;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.backgroundImage;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Integer num = this.borderWidth;
        int iHashCode4 = (iHashCode3 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.borderRadius;
        int iHashCode5 = (iHashCode4 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str4 = this.borderColor;
        int iHashCode6 = (iHashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Integer num3 = this.fontSize;
        int iHashCode7 = (iHashCode6 + (num3 == null ? 0 : num3.hashCode())) * 31;
        String str5 = this.fontFamily;
        int iHashCode8 = (iHashCode7 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.horizontalAlign;
        int iHashCode9 = (iHashCode8 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.verticalAlign;
        int iHashCode10 = (iHashCode9 + (str7 == null ? 0 : str7.hashCode())) * 31;
        Integer num4 = this.paddingTop;
        int iHashCode11 = (iHashCode10 + (num4 == null ? 0 : num4.hashCode())) * 31;
        Integer num5 = this.paddingBottom;
        int iHashCode12 = (iHashCode11 + (num5 == null ? 0 : num5.hashCode())) * 31;
        Integer num6 = this.paddingLeft;
        int iHashCode13 = (iHashCode12 + (num6 == null ? 0 : num6.hashCode())) * 31;
        Integer num7 = this.paddingRight;
        int iHashCode14 = (iHashCode13 + (num7 == null ? 0 : num7.hashCode())) * 31;
        String str8 = this.bar;
        int iHashCode15 = (iHashCode14 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.iconLeft;
        int iHashCode16 = (iHashCode15 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.iconRight;
        return iHashCode16 + (str10 != null ? str10.hashCode() : 0);
    }

    public final void setBackgroundColor(String str) {
        this.backgroundColor = str;
    }

    public final void setBackgroundImage(String str) {
        this.backgroundImage = str;
    }

    public final void setBar(String str) {
        this.bar = str;
    }

    public final void setBorderColor(String str) {
        this.borderColor = str;
    }

    public final void setBorderRadius(Integer num) {
        this.borderRadius = num;
    }

    public final void setBorderWidth(Integer num) {
        this.borderWidth = num;
    }

    public final void setColor(String str) {
        this.color = str;
    }

    public final void setFontFamily(String str) {
        this.fontFamily = str;
    }

    public final void setFontSize(Integer num) {
        this.fontSize = num;
    }

    public final void setHorizontalAlign(String str) {
        this.horizontalAlign = str;
    }

    public final void setIconLeft(String str) {
        this.iconLeft = str;
    }

    public final void setIconRight(String str) {
        this.iconRight = str;
    }

    public final void setPaddingBottom(Integer num) {
        this.paddingBottom = num;
    }

    public final void setPaddingLeft(Integer num) {
        this.paddingLeft = num;
    }

    public final void setPaddingRight(Integer num) {
        this.paddingRight = num;
    }

    public final void setPaddingTop(Integer num) {
        this.paddingTop = num;
    }

    public final void setVerticalAlign(String str) {
        this.verticalAlign = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("RRStyle(color=");
        sb.append(this.color);
        sb.append(", backgroundColor=");
        sb.append(this.backgroundColor);
        sb.append(", backgroundImage=");
        sb.append(this.backgroundImage);
        sb.append(", borderWidth=");
        sb.append(this.borderWidth);
        sb.append(", borderRadius=");
        sb.append(this.borderRadius);
        sb.append(", borderColor=");
        sb.append(this.borderColor);
        sb.append(", fontSize=");
        sb.append(this.fontSize);
        sb.append(", fontFamily=");
        sb.append(this.fontFamily);
        sb.append(", horizontalAlign=");
        sb.append(this.horizontalAlign);
        sb.append(", verticalAlign=");
        sb.append(this.verticalAlign);
        sb.append(", paddingTop=");
        sb.append(this.paddingTop);
        sb.append(", paddingBottom=");
        sb.append(this.paddingBottom);
        sb.append(", paddingLeft=");
        sb.append(this.paddingLeft);
        sb.append(", paddingRight=");
        sb.append(this.paddingRight);
        sb.append(", bar=");
        sb.append(this.bar);
        sb.append(", iconLeft=");
        sb.append(this.iconLeft);
        sb.append(", iconRight=");
        return xp.e(sb, this.iconRight, ')');
    }

    public RRStyle(String str, String str2, String str3, Integer num, Integer num2, String str4, Integer num3, String str5, String str6, String str7, Integer num4, Integer num5, Integer num6, Integer num7, String str8, String str9, String str10) {
        this.color = str;
        this.backgroundColor = str2;
        this.backgroundImage = str3;
        this.borderWidth = num;
        this.borderRadius = num2;
        this.borderColor = str4;
        this.fontSize = num3;
        this.fontFamily = str5;
        this.horizontalAlign = str6;
        this.verticalAlign = str7;
        this.paddingTop = num4;
        this.paddingBottom = num5;
        this.paddingLeft = num6;
        this.paddingRight = num7;
        this.bar = str8;
        this.iconLeft = str9;
        this.iconRight = str10;
    }

    public RRStyle() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 131071, null);
    }
}
