package androidx.media3.extractor.text.ttml;

import android.text.TextUtils;
import com.google.common.collect.c0;
import com.google.common.collect.d0;
import com.google.common.collect.n;
import defpackage.go2;
import defpackage.lr7;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
final class TextEmphasis {
    public static final int MARK_SHAPE_AUTO = -1;
    public static final int POSITION_OUTSIDE = -2;
    public final int markFill;
    public final int markShape;
    public final int position;
    private static final Pattern WHITESPACE_PATTERN = Pattern.compile("\\s+");
    private static final n<String> SINGLE_STYLE_VALUES = n.m(2, TtmlNode.TEXT_EMPHASIS_AUTO, "none");
    private static final n<String> MARK_SHAPE_VALUES = n.m(3, TtmlNode.TEXT_EMPHASIS_MARK_DOT, TtmlNode.TEXT_EMPHASIS_MARK_SESAME, TtmlNode.TEXT_EMPHASIS_MARK_CIRCLE);
    private static final n<String> MARK_FILL_VALUES = n.m(2, TtmlNode.TEXT_EMPHASIS_MARK_FILLED, TtmlNode.TEXT_EMPHASIS_MARK_OPEN);
    private static final n<String> POSITION_VALUES = n.m(3, TtmlNode.ANNOTATION_POSITION_AFTER, TtmlNode.ANNOTATION_POSITION_BEFORE, TtmlNode.ANNOTATION_POSITION_OUTSIDE);

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Position {
    }

    private TextEmphasis(int i, int i2, int i3) {
        this.markShape = i;
        this.markFill = i2;
        this.position = i3;
    }

    public static TextEmphasis parse(String str) {
        if (str == null) {
            return null;
        }
        String strI = go2.i(str.trim());
        if (strI.isEmpty()) {
            return null;
        }
        return parseWords(n.o(TextUtils.split(strI, WHITESPACE_PATTERN)));
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0057  */
    /* JADX WARN: Code duplicated, block: B:25:0x006a  */
    /* JADX WARN: Code duplicated, block: B:31:0x007a  */
    /* JADX WARN: Code duplicated, block: B:34:0x0086  */
    /* JADX WARN: Code duplicated, block: B:42:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:43:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:46:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:52:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:56:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:57:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:60:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:62:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:65:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:68:0x0108  */
    /* JADX WARN: Code duplicated, block: B:70:0x0110  */
    /* JADX WARN: Code duplicated, block: B:71:0x0112  */
    private static TextEmphasis parseWords(n<String> nVar) {
        int i;
        c0 c0VarD;
        int i2;
        c0 c0VarD2;
        c0 c0VarD3;
        lr7 it;
        Object next;
        String str;
        int iHashCode;
        int i3;
        lr7 it2;
        Object next2;
        String str2;
        int iHashCode2;
        String str3;
        int iHashCode3;
        lr7 it3 = d0.d(POSITION_VALUES, nVar).iterator();
        String str4 = (String) (it3.hasNext() ? it3.next() : TtmlNode.ANNOTATION_POSITION_OUTSIDE);
        int iHashCode4 = str4.hashCode();
        int i4 = 1;
        if (iHashCode4 != -1392885889) {
            if (iHashCode4 != -1106037339) {
                if (iHashCode4 == 92734940 && str4.equals(TtmlNode.ANNOTATION_POSITION_AFTER)) {
                    i = 2;
                }
            } else if (str4.equals(TtmlNode.ANNOTATION_POSITION_OUTSIDE)) {
                i = -2;
            }
            c0VarD = d0.d(SINGLE_STYLE_VALUES, nVar);
            i2 = -1;
            if (!c0VarD.isEmpty()) {
                str3 = (String) c0VarD.iterator().next();
                iHashCode3 = str3.hashCode();
                if (iHashCode3 != 3005871) {
                    str3.equals(TtmlNode.TEXT_EMPHASIS_AUTO);
                } else if (iHashCode3 == 3387192 && str3.equals("none")) {
                    i2 = 0;
                }
                return new TextEmphasis(i2, 0, i);
            }
            c0VarD2 = d0.d(MARK_FILL_VALUES, nVar);
            c0VarD3 = d0.d(MARK_SHAPE_VALUES, nVar);
            if (!c0VarD2.isEmpty() && c0VarD3.isEmpty()) {
                return new TextEmphasis(-1, 0, i);
            }
            it = c0VarD2.iterator();
            if (it.hasNext()) {
                next = it.next();
            } else {
                next = TtmlNode.TEXT_EMPHASIS_MARK_FILLED;
            }
            str = (String) next;
            iHashCode = str.hashCode();
            if (iHashCode != -1274499742) {
                if (iHashCode == 3417674 && str.equals(TtmlNode.TEXT_EMPHASIS_MARK_OPEN)) {
                    i3 = 2;
                }
                it2 = c0VarD3.iterator();
                if (it2.hasNext()) {
                    next2 = it2.next();
                } else {
                    next2 = TtmlNode.TEXT_EMPHASIS_MARK_CIRCLE;
                }
                str2 = (String) next2;
                iHashCode2 = str2.hashCode();
                if (iHashCode2 != -1360216880) {
                    str2.equals(TtmlNode.TEXT_EMPHASIS_MARK_CIRCLE);
                } else if (iHashCode2 != -905816648) {
                    if (iHashCode2 == 99657 && str2.equals(TtmlNode.TEXT_EMPHASIS_MARK_DOT)) {
                        i4 = 2;
                    }
                } else if (str2.equals(TtmlNode.TEXT_EMPHASIS_MARK_SESAME)) {
                    i4 = 3;
                }
                return new TextEmphasis(i4, i3, i);
            }
            str.equals(TtmlNode.TEXT_EMPHASIS_MARK_FILLED);
            i3 = 1;
            it2 = c0VarD3.iterator();
            if (it2.hasNext()) {
                next2 = it2.next();
            } else {
                next2 = TtmlNode.TEXT_EMPHASIS_MARK_CIRCLE;
            }
            str2 = (String) next2;
            iHashCode2 = str2.hashCode();
            if (iHashCode2 != -1360216880) {
                str2.equals(TtmlNode.TEXT_EMPHASIS_MARK_CIRCLE);
            } else if (iHashCode2 != -905816648) {
                if (iHashCode2 == 99657) {
                    i4 = 2;
                }
            } else if (str2.equals(TtmlNode.TEXT_EMPHASIS_MARK_SESAME)) {
                i4 = 3;
            }
            return new TextEmphasis(i4, i3, i);
        }
        str4.equals(TtmlNode.ANNOTATION_POSITION_BEFORE);
        i = 1;
        c0VarD = d0.d(SINGLE_STYLE_VALUES, nVar);
        i2 = -1;
        if (!c0VarD.isEmpty()) {
            str3 = (String) c0VarD.iterator().next();
            iHashCode3 = str3.hashCode();
            if (iHashCode3 != 3005871) {
                str3.equals(TtmlNode.TEXT_EMPHASIS_AUTO);
            } else if (iHashCode3 == 3387192) {
                i2 = 0;
            }
            return new TextEmphasis(i2, 0, i);
        }
        c0VarD2 = d0.d(MARK_FILL_VALUES, nVar);
        c0VarD3 = d0.d(MARK_SHAPE_VALUES, nVar);
        if (!c0VarD2.isEmpty()) {
        }
        it = c0VarD2.iterator();
        if (it.hasNext()) {
            next = it.next();
        } else {
            next = TtmlNode.TEXT_EMPHASIS_MARK_FILLED;
        }
        str = (String) next;
        iHashCode = str.hashCode();
        if (iHashCode != -1274499742) {
            if (iHashCode == 3417674) {
                i3 = 2;
            }
            it2 = c0VarD3.iterator();
            if (it2.hasNext()) {
                next2 = it2.next();
            } else {
                next2 = TtmlNode.TEXT_EMPHASIS_MARK_CIRCLE;
            }
            str2 = (String) next2;
            iHashCode2 = str2.hashCode();
            if (iHashCode2 != -1360216880) {
                str2.equals(TtmlNode.TEXT_EMPHASIS_MARK_CIRCLE);
            } else if (iHashCode2 != -905816648) {
                if (iHashCode2 == 99657) {
                    i4 = 2;
                }
            } else if (str2.equals(TtmlNode.TEXT_EMPHASIS_MARK_SESAME)) {
                i4 = 3;
            }
            return new TextEmphasis(i4, i3, i);
        }
        str.equals(TtmlNode.TEXT_EMPHASIS_MARK_FILLED);
        i3 = 1;
        it2 = c0VarD3.iterator();
        if (it2.hasNext()) {
            next2 = it2.next();
        } else {
            next2 = TtmlNode.TEXT_EMPHASIS_MARK_CIRCLE;
        }
        str2 = (String) next2;
        iHashCode2 = str2.hashCode();
        if (iHashCode2 != -1360216880) {
            str2.equals(TtmlNode.TEXT_EMPHASIS_MARK_CIRCLE);
        } else if (iHashCode2 != -905816648) {
            if (iHashCode2 == 99657) {
                i4 = 2;
            }
        } else if (str2.equals(TtmlNode.TEXT_EMPHASIS_MARK_SESAME)) {
            i4 = 3;
        }
        return new TextEmphasis(i4, i3, i);
    }
}
