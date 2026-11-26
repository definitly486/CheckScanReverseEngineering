package androidx.compose.ui.text.platform;

import android.content.Context;
import android.graphics.Typeface;
import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.compose.ui.text.font.Font;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontListFontFamily;
import androidx.compose.ui.text.font.FontLoadingStrategy;
import androidx.compose.ui.text.font.FontMatcher;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis_androidKt;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.compose.ui.util.ListUtilsKt;
import defpackage.b36;
import defpackage.h8;
import defpackage.jh2;
import defpackage.qn1;
import defpackage.ul2;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@ul2
public final class AndroidFontListTypeface implements AndroidTypeface {
    private final FontFamily fontFamily;
    private final FontMatcher fontMatcher$1;
    private final ScatterMap<Font, Typeface> loadedTypefaces;
    private static final Companion Companion = new Companion(null);
    public static final int $stable = 8;
    private static final FontMatcher fontMatcher = new FontMatcher();

    /* JADX WARN: Code duplicated, block: B:20:0x00a8  */
    public AndroidFontListTypeface(FontListFontFamily fontListFontFamily, Context context, List<b36<FontWeight, FontStyle>> list, FontMatcher fontMatcher2) {
        ArrayList arrayList;
        this.fontMatcher$1 = fontMatcher2;
        List<Font> fonts = fontListFontFamily.getFonts();
        ArrayList arrayList2 = new ArrayList(fonts.size());
        int size = fonts.size();
        for (int i = 0; i < size; i++) {
            Font font = fonts.get(i);
            if (FontLoadingStrategy.m8590equalsimpl0(font.mo8548getLoadingStrategyPKNRLFQ(), FontLoadingStrategy.Companion.m8595getBlockingPKNRLFQ())) {
                arrayList2.add(font);
            }
        }
        if (list != null) {
            ArrayList arrayList3 = new ArrayList(list.size());
            int size2 = list.size();
            for (int i2 = 0; i2 < size2; i2++) {
                b36<FontWeight, FontStyle> b36Var = list.get(i2);
                arrayList3.add((Font) qn1.V(this.fontMatcher$1.m8599matchFontRetOiIg(arrayList2, b36Var.b, b36Var.c.m8606unboximpl())));
            }
            List listFastFilterNotNull = ListUtilsKt.fastFilterNotNull(arrayList3);
            if (listFastFilterNotNull != null) {
                MutableScatterSet mutableScatterSet = new MutableScatterSet(listFastFilterNotNull.size());
                arrayList = new ArrayList(listFastFilterNotNull.size());
                int size3 = listFastFilterNotNull.size();
                for (int i3 = 0; i3 < size3; i3++) {
                    Object obj = listFastFilterNotNull.get(i3);
                    if (mutableScatterSet.add((Font) obj)) {
                        arrayList.add(obj);
                    }
                }
            } else {
                arrayList = null;
            }
        } else {
            arrayList = null;
        }
        arrayList2 = arrayList != null ? arrayList : arrayList2;
        if (arrayList2.isEmpty()) {
            InlineClassHelperKt.throwIllegalStateException("Could not match font");
        }
        MutableScatterMap mutableScatterMapMutableScatterMapOf = ScatterMapKt.mutableScatterMapOf();
        int size4 = arrayList2.size();
        for (int i4 = 0; i4 < size4; i4++) {
            Font font2 = (Font) arrayList2.get(i4);
            try {
                mutableScatterMapMutableScatterMapOf.set(font2, AndroidTypefaceCache.INSTANCE.getOrCreate(context, font2));
            } catch (Exception unused) {
                InlineClassHelperKt.throwIllegalStateException("Cannot create Typeface from " + font2);
            }
        }
        this.loadedTypefaces = mutableScatterMapMutableScatterMapOf;
        this.fontFamily = fontListFontFamily;
    }

    @Override // androidx.compose.ui.text.font.Typeface
    public FontFamily getFontFamily() {
        return this.fontFamily;
    }

    public final FontMatcher getFontMatcher() {
        return this.fontMatcher$1;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x004d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:15:0x004f A[LOOP:0: B:5:0x0018->B:15:0x004f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:27:0x0052 A[EDGE_INSN: B:27:0x0052->B:16:0x0052 BREAK  A[LOOP:0: B:5:0x0018->B:15:0x004f], SYNTHETIC] */
    @Override // androidx.compose.ui.text.platform.AndroidTypeface
    /* JADX INFO: renamed from: getNativeTypeface-PYhJU0U */
    public Typeface mo8744getNativeTypefacePYhJU0U(FontWeight fontWeight, int i, int i2) {
        ArrayList arrayList = new ArrayList();
        ScatterMap<Font, Typeface> scatterMap = this.loadedTypefaces;
        Object[] objArr = scatterMap.keys;
        long[] jArr = scatterMap.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i3 = 0;
            while (true) {
                long j = jArr[i3];
                if ((((~j) << 7) & j & (-9187201950435737472L)) == -9187201950435737472L) {
                    if (i3 != length) {
                        break;
                        break;
                    }
                    i3++;
                } else {
                    int i4 = 8 - ((~(i3 - length)) >>> 31);
                    for (int i5 = 0; i5 < i4; i5++) {
                        if ((255 & j) < 128) {
                            arrayList.add((Font) objArr[(i3 << 3) + i5]);
                        }
                        j >>= 8;
                    }
                    if (i4 != 8) {
                        break;
                    }
                    if (i3 != length) {
                        break;
                    }
                    i3++;
                }
            }
        }
        Font font = (Font) qn1.V(this.fontMatcher$1.m8599matchFontRetOiIg(arrayList, fontWeight, i));
        if (font == null) {
            InlineClassHelperKt.throwIllegalStateExceptionForNullCheck("Could not load font");
            h8.d();
            return null;
        }
        Typeface typeface = this.loadedTypefaces.get(font);
        if (typeface != null) {
            Object objM8625synthesizeTypefaceFxwP2eA = FontSynthesis_androidKt.m8625synthesizeTypefaceFxwP2eA(i2, typeface, font, fontWeight, i);
            objM8625synthesizeTypefaceFxwP2eA.getClass();
            return (Typeface) objM8625synthesizeTypefaceFxwP2eA;
        }
        InlineClassHelperKt.throwIllegalStateExceptionForNullCheck("Could not load typeface");
        h8.d();
        return null;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final FontMatcher getFontMatcher() {
            return AndroidFontListTypeface.fontMatcher;
        }

        private Companion() {
        }
    }

    public /* synthetic */ AndroidFontListTypeface(FontListFontFamily fontListFontFamily, Context context, List list, FontMatcher fontMatcher2, int i, jh2 jh2Var) {
        this(fontListFontFamily, context, (i & 4) != 0 ? null : list, (i & 8) != 0 ? fontMatcher : fontMatcher2);
    }
}
