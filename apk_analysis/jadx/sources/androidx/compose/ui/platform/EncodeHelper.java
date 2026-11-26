package androidx.compose.ui.platform;

import android.os.Parcel;
import android.util.Base64;
import androidx.compose.ui.graphics.AndroidColor_androidKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;
import androidx.media3.muxer.MuxerUtil;

/* JADX INFO: loaded from: classes2.dex */
public final class EncodeHelper {
    public static final int $stable = 8;
    private Parcel parcel = Parcel.obtain();

    public final void encode(SpanStyle spanStyle) {
        long jM8432getColor0d7_KjU = spanStyle.m8432getColor0d7_KjU();
        Color.Companion companion = Color.Companion;
        if (!Color.m6233equalsimpl0(jM8432getColor0d7_KjU, companion.m6268getUnspecified0d7_KjU())) {
            encode((byte) 1);
            m8194encode8_81llA(spanStyle.m8432getColor0d7_KjU());
        }
        long jM8433getFontSizeXSAIIZE = spanStyle.m8433getFontSizeXSAIIZE();
        TextUnit.Companion companion2 = TextUnit.Companion;
        if (!TextUnit.m9233equalsimpl0(jM8433getFontSizeXSAIIZE, companion2.m9247getUnspecifiedXSAIIZE())) {
            encode((byte) 2);
            m8191encodeR2X_6o(spanStyle.m8433getFontSizeXSAIIZE());
        }
        FontWeight fontWeight = spanStyle.getFontWeight();
        if (fontWeight != null) {
            encode((byte) 3);
            encode(fontWeight);
        }
        FontStyle fontStyleM8434getFontStyle4Lr2A7w = spanStyle.m8434getFontStyle4Lr2A7w();
        if (fontStyleM8434getFontStyle4Lr2A7w != null) {
            int iM8606unboximpl = fontStyleM8434getFontStyle4Lr2A7w.m8606unboximpl();
            encode((byte) 4);
            m8196encodenzbMABs(iM8606unboximpl);
        }
        FontSynthesis fontSynthesisM8435getFontSynthesisZQGJjVo = spanStyle.m8435getFontSynthesisZQGJjVo();
        if (fontSynthesisM8435getFontSynthesisZQGJjVo != null) {
            int iM8619unboximpl = fontSynthesisM8435getFontSynthesisZQGJjVo.m8619unboximpl();
            encode((byte) 5);
            m8193encode6p3vJLY(iM8619unboximpl);
        }
        String fontFeatureSettings = spanStyle.getFontFeatureSettings();
        if (fontFeatureSettings != null) {
            encode((byte) 6);
            encode(fontFeatureSettings);
        }
        if (!TextUnit.m9233equalsimpl0(spanStyle.m8436getLetterSpacingXSAIIZE(), companion2.m9247getUnspecifiedXSAIIZE())) {
            encode((byte) 7);
            m8191encodeR2X_6o(spanStyle.m8436getLetterSpacingXSAIIZE());
        }
        BaselineShift baselineShiftM8431getBaselineShift5SSeXJ0 = spanStyle.m8431getBaselineShift5SSeXJ0();
        if (baselineShiftM8431getBaselineShift5SSeXJ0 != null) {
            float fM8788unboximpl = baselineShiftM8431getBaselineShift5SSeXJ0.m8788unboximpl();
            encode((byte) 8);
            m8192encode4Dl_Bck(fM8788unboximpl);
        }
        TextGeometricTransform textGeometricTransform = spanStyle.getTextGeometricTransform();
        if (textGeometricTransform != null) {
            encode((byte) 9);
            encode(textGeometricTransform);
        }
        if (!Color.m6233equalsimpl0(spanStyle.m8430getBackground0d7_KjU(), companion.m6268getUnspecified0d7_KjU())) {
            encode((byte) 10);
            m8194encode8_81llA(spanStyle.m8430getBackground0d7_KjU());
        }
        TextDecoration textDecoration = spanStyle.getTextDecoration();
        if (textDecoration != null) {
            encode((byte) 11);
            encode(textDecoration);
        }
        Shadow shadow = spanStyle.getShadow();
        if (shadow != null) {
            encode((byte) 12);
            encode(shadow);
        }
    }

    /* JADX INFO: renamed from: encode--R2X_6o, reason: not valid java name */
    public final void m8191encodeR2X_6o(long j) {
        long jM9235getTypeUIouoOA = TextUnit.m9235getTypeUIouoOA(j);
        TextUnitType.Companion companion = TextUnitType.Companion;
        byte b = 0;
        if (!TextUnitType.m9264equalsimpl0(jM9235getTypeUIouoOA, companion.m9270getUnspecifiedUIouoOA())) {
            if (TextUnitType.m9264equalsimpl0(jM9235getTypeUIouoOA, companion.m9269getSpUIouoOA())) {
                b = 1;
            } else if (TextUnitType.m9264equalsimpl0(jM9235getTypeUIouoOA, companion.m9268getEmUIouoOA())) {
                b = 2;
            }
        }
        encode(b);
        if (TextUnitType.m9264equalsimpl0(TextUnit.m9235getTypeUIouoOA(j), companion.m9270getUnspecifiedUIouoOA())) {
            return;
        }
        encode(TextUnit.m9236getValueimpl(j));
    }

    /* JADX INFO: renamed from: encode-4Dl_Bck, reason: not valid java name */
    public final void m8192encode4Dl_Bck(float f) {
        encode(f);
    }

    /* JADX INFO: renamed from: encode-6p3vJLY, reason: not valid java name */
    public final void m8193encode6p3vJLY(int i) {
        FontSynthesis.Companion companion = FontSynthesis.Companion;
        byte b = 0;
        if (!FontSynthesis.m8614equalsimpl0(i, companion.m8621getNoneGVVA2EU())) {
            if (FontSynthesis.m8614equalsimpl0(i, companion.m8620getAllGVVA2EU())) {
                b = 1;
            } else if (FontSynthesis.m8614equalsimpl0(i, companion.m8623getWeightGVVA2EU())) {
                b = 2;
            } else if (FontSynthesis.m8614equalsimpl0(i, companion.m8622getStyleGVVA2EU())) {
                b = 3;
            }
        }
        encode(b);
    }

    /* JADX INFO: renamed from: encode-8_81llA, reason: not valid java name */
    public final void m8194encode8_81llA(long j) {
        m8195encodeVKZWuLQ(AndroidColor_androidKt.m6095toColorLong8_81llA(j));
    }

    /* JADX INFO: renamed from: encode-VKZWuLQ, reason: not valid java name */
    public final void m8195encodeVKZWuLQ(long j) {
        this.parcel.writeLong(j);
    }

    /* JADX INFO: renamed from: encode-nzbMABs, reason: not valid java name */
    public final void m8196encodenzbMABs(int i) {
        FontStyle.Companion companion = FontStyle.Companion;
        byte b = 0;
        if (!FontStyle.m8603equalsimpl0(i, companion.m8610getNormal_LCdwA()) && FontStyle.m8603equalsimpl0(i, companion.m8609getItalic_LCdwA())) {
            b = 1;
        }
        encode(b);
    }

    public final String encodedString() {
        return Base64.encodeToString(this.parcel.marshall(), 0);
    }

    public final void reset() {
        this.parcel.recycle();
        this.parcel = Parcel.obtain();
    }

    public final void encode(FontWeight fontWeight) {
        encode(fontWeight.getWeight());
    }

    public final void encode(TextGeometricTransform textGeometricTransform) {
        encode(textGeometricTransform.getScaleX());
        encode(textGeometricTransform.getSkewX());
    }

    public final void encode(TextDecoration textDecoration) {
        encode(textDecoration.getMask());
    }

    public final void encode(Shadow shadow) {
        m8194encode8_81llA(shadow.m6576getColor0d7_KjU());
        encode(Float.intBitsToFloat((int) (shadow.m6577getOffsetF1C5BW0() >> 32)));
        encode(Float.intBitsToFloat((int) (shadow.m6577getOffsetF1C5BW0() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
        encode(shadow.getBlurRadius());
    }

    public final void encode(byte b) {
        this.parcel.writeByte(b);
    }

    public final void encode(int i) {
        this.parcel.writeInt(i);
    }

    public final void encode(float f) {
        this.parcel.writeFloat(f);
    }

    public final void encode(String str) {
        this.parcel.writeString(str);
    }
}
