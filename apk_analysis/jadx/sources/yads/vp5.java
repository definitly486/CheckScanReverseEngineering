package yads;

import android.graphics.PointF;
import android.text.Layout;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.media3.common.C;
import androidx.media3.extractor.text.ttml.TtmlNode;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes6.dex */
public final class vp5 extends xk5 {
    public static final Pattern r = Pattern.compile("(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)");
    public final boolean m;
    public final wp5 n;
    public LinkedHashMap o;
    public float p = -3.4028235E38f;
    public float q = -3.4028235E38f;

    public vp5(List list) {
        if (list == null || list.isEmpty()) {
            this.m = false;
            this.n = null;
            return;
        }
        this.m = true;
        String strA = u56.a((byte[]) list.get(0));
        if (!strA.startsWith("Format:")) {
            defpackage.mi2.b();
            throw null;
        }
        wp5 wp5VarA = wp5.a(strA);
        wp5VarA.getClass();
        this.n = wp5VarA;
        a(new os4((byte[]) list.get(1)));
    }

    /* JADX WARN: Code duplicated, block: B:173:0x02fc  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final void a(os4 os4Var) {
        int i;
        int i2;
        float f;
        int i3;
        zp5 zp5Var;
        while (true) {
            String strB = os4Var.b();
            if (strB == null) {
                return;
            }
            char c = '[';
            int i4 = 0;
            if ("[Script Info]".equalsIgnoreCase(strB)) {
                while (true) {
                    String strB2 = os4Var.b();
                    if (strB2 == null) {
                        break;
                    }
                    int i5 = os4Var.c;
                    int i6 = os4Var.b;
                    if (i5 - i6 != 0 && (os4Var.a[i6] & 255) == 91) {
                        break;
                    }
                    String[] strArrSplit = strB2.split(StringUtils.PROCESS_POSTFIX_DELIMITER);
                    if (strArrSplit.length == 2) {
                        String strA = oj.a(strArrSplit[0].trim());
                        strA.getClass();
                        if (strA.equals("playresx")) {
                            this.p = Float.parseFloat(strArrSplit[1].trim());
                        } else if (strA.equals("playresy")) {
                            try {
                                this.q = Float.parseFloat(strArrSplit[1].trim());
                            } catch (NumberFormatException unused) {
                            }
                        }
                    }
                }
            } else if ("[V4+ Styles]".equalsIgnoreCase(strB)) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                while (true) {
                    xp5 xp5Var = null;
                    while (true) {
                        String strB3 = os4Var.b();
                        if (strB3 != null) {
                            int i7 = os4Var.c;
                            int i8 = os4Var.b;
                            if (i7 - i8 == 0 || (os4Var.a[i8] & 255) != c) {
                                if (strB3.startsWith("Format:")) {
                                    String[] strArrSplit2 = TextUtils.split(strB3.substring(7), StringUtils.COMMA);
                                    int i9 = -1;
                                    int i10 = -1;
                                    int i11 = -1;
                                    int i12 = -1;
                                    int i13 = -1;
                                    int i14 = -1;
                                    int i15 = -1;
                                    int i16 = -1;
                                    int i17 = -1;
                                    int i18 = -1;
                                    for (int i19 = i4; i19 < strArrSplit2.length; i19++) {
                                        String strA2 = oj.a(strArrSplit2[i19].trim());
                                        strA2.getClass();
                                        switch (strA2.hashCode()) {
                                            case -1178781136:
                                                i = strA2.equals(TtmlNode.ITALIC) ? i4 : -1;
                                                break;
                                            case -1026963764:
                                                i = strA2.equals(TtmlNode.UNDERLINE) ? 1 : -1;
                                                break;
                                            case -192095652:
                                                i = strA2.equals("strikeout") ? 2 : -1;
                                                break;
                                            case -70925746:
                                                i = strA2.equals("primarycolour") ? 3 : -1;
                                                break;
                                            case 3029637:
                                                i = strA2.equals(TtmlNode.BOLD) ? 4 : -1;
                                                break;
                                            case 3373707:
                                                i = strA2.equals("name") ? 5 : -1;
                                                break;
                                            case 366554320:
                                                i = strA2.equals("fontsize") ? 6 : -1;
                                                break;
                                            case 767321349:
                                                i = strA2.equals("borderstyle") ? 7 : -1;
                                                break;
                                            case 1767875043:
                                                i = strA2.equals("alignment") ? 8 : -1;
                                                break;
                                            case 1988365454:
                                                i = strA2.equals("outlinecolour") ? 9 : -1;
                                                break;
                                            default:
                                                i = -1;
                                                break;
                                        }
                                        switch (i) {
                                            case 0:
                                                i15 = i19;
                                                break;
                                            case 1:
                                                i16 = i19;
                                                break;
                                            case 2:
                                                i17 = i19;
                                                break;
                                            case 3:
                                                i11 = i19;
                                                break;
                                            case 4:
                                                i14 = i19;
                                                break;
                                            case 5:
                                                i9 = i19;
                                                break;
                                            case 6:
                                                i13 = i19;
                                                break;
                                            case 7:
                                                i18 = i19;
                                                break;
                                            case 8:
                                                i10 = i19;
                                                break;
                                            case 9:
                                                i12 = i19;
                                                break;
                                        }
                                    }
                                    if (i9 != -1) {
                                        xp5Var = new xp5(i9, i10, i11, i12, i13, i14, i15, i16, i17, i18, strArrSplit2.length);
                                    }
                                } else {
                                    if (strB3.startsWith("Style:")) {
                                        if (xp5Var == null) {
                                            sv3.d("SsaDecoder", "Skipping 'Style:' line before 'Format:' line: ".concat(strB3));
                                        } else {
                                            if (!strB3.startsWith("Style:")) {
                                                defpackage.mi2.b();
                                                return;
                                            }
                                            String[] strArrSplit3 = TextUtils.split(strB3.substring(6), StringUtils.COMMA);
                                            int length = strArrSplit3.length;
                                            int i20 = xp5Var.k;
                                            if (length != i20) {
                                                int length2 = strArrSplit3.length;
                                                int i21 = u56.a;
                                                Locale locale = Locale.US;
                                                StringBuilder sbF = defpackage.bg.f(i20, length2, "Skipping malformed 'Style:' line (expected ", " values, found ", "): '");
                                                sbF.append(strB3);
                                                sbF.append("'");
                                                sv3.d("SsaStyle", sbF.toString());
                                            } else {
                                                try {
                                                    String strTrim = strArrSplit3[xp5Var.a].trim();
                                                    int i22 = xp5Var.b;
                                                    if (i22 != -1) {
                                                        String strTrim2 = strArrSplit3[i22].trim();
                                                        try {
                                                            int i23 = Integer.parseInt(strTrim2.trim());
                                                            switch (i23) {
                                                                case 1:
                                                                case 2:
                                                                case 3:
                                                                case 4:
                                                                case 5:
                                                                case 6:
                                                                case 7:
                                                                case 8:
                                                                case 9:
                                                                    i2 = i23;
                                                                    break;
                                                                default:
                                                                    sv3.d("SsaStyle", "Ignoring unknown alignment: " + strTrim2);
                                                                    i2 = -1;
                                                                    break;
                                                            }
                                                        } catch (NumberFormatException unused2) {
                                                        }
                                                    } else {
                                                        i2 = -1;
                                                    }
                                                    int i24 = xp5Var.c;
                                                    Integer numB = i24 != -1 ? zp5.b(strArrSplit3[i24].trim()) : null;
                                                    int i25 = xp5Var.d;
                                                    Integer numB2 = i25 != -1 ? zp5.b(strArrSplit3[i25].trim()) : null;
                                                    int i26 = xp5Var.e;
                                                    if (i26 != -1) {
                                                        String strTrim3 = strArrSplit3[i26].trim();
                                                        try {
                                                            f = Float.parseFloat(strTrim3);
                                                        } catch (NumberFormatException e) {
                                                            sv3.d("SsaStyle", sv3.a("Failed to parse font size: '" + strTrim3 + "'", e));
                                                            f = -3.4028235E38f;
                                                        }
                                                    } else {
                                                        f = -3.4028235E38f;
                                                    }
                                                    float f2 = f;
                                                    int i27 = xp5Var.f;
                                                    boolean z = i27 != -1 && zp5.a(strArrSplit3[i27].trim());
                                                    int i28 = xp5Var.g;
                                                    boolean z2 = i28 != -1 && zp5.a(strArrSplit3[i28].trim());
                                                    int i29 = xp5Var.h;
                                                    boolean z3 = i29 != -1 && zp5.a(strArrSplit3[i29].trim());
                                                    int i30 = xp5Var.i;
                                                    boolean z4 = i30 != -1 && zp5.a(strArrSplit3[i30].trim());
                                                    int i31 = xp5Var.j;
                                                    if (i31 != -1) {
                                                        String strTrim4 = strArrSplit3[i31].trim();
                                                        try {
                                                            int i32 = Integer.parseInt(strTrim4.trim());
                                                            if (i32 == 1 || i32 == 3) {
                                                                i3 = i32;
                                                            } else {
                                                                sv3.d("SsaStyle", "Ignoring unknown BorderStyle: " + strTrim4);
                                                                i3 = -1;
                                                            }
                                                        } catch (NumberFormatException unused3) {
                                                        }
                                                    } else {
                                                        i3 = -1;
                                                    }
                                                    zp5Var = new zp5(strTrim, i2, numB, numB2, f2, z, z2, z3, z4, i3);
                                                } catch (RuntimeException e2) {
                                                    sv3.d("SsaStyle", sv3.a("Skipping malformed 'Style:' line: '" + strB3 + "'", e2));
                                                    zp5Var = null;
                                                }
                                                if (zp5Var != null) {
                                                    linkedHashMap.put(zp5Var.a, zp5Var);
                                                }
                                            }
                                            zp5Var = null;
                                            if (zp5Var != null) {
                                                linkedHashMap.put(zp5Var.a, zp5Var);
                                            }
                                        }
                                    }
                                    c = '[';
                                    i4 = 0;
                                }
                            }
                        }
                    }
                }
                this.o = linkedHashMap;
            } else if ("[V4 Styles]".equalsIgnoreCase(strB)) {
                sv3.c("SsaDecoder", "[V4 Styles] are not supported");
            } else if ("[Events]".equalsIgnoreCase(strB)) {
                return;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:149:0x02dc A[LOOP:2: B:148:0x02da->B:149:0x02dc, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:177:0x0139 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:178:0x0130 A[SYNTHETIC] */
    /* JADX WARN: Failed to find 'out' block for switch in B:48:0x0101. Please report as an issue. */
    @Override // yads.xk5
    public final mt5 a(byte[] bArr, int i, boolean z) {
        os4 os4Var;
        wp5 wp5Var;
        int i2;
        float f;
        int i3;
        Layout.Alignment alignment;
        int i4;
        float f2;
        float f3;
        float f4;
        sb0 sb0Var;
        int iA;
        int iA2;
        float f5;
        int i5;
        float f6;
        int i6;
        int i7;
        wp5 wp5Var2;
        PointF pointF;
        int i8;
        int i9;
        vp5 vp5Var = this;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        os4 os4Var2 = new os4(bArr, i);
        if (!vp5Var.m) {
            vp5Var.a(os4Var2);
        }
        wp5 wp5VarA = vp5Var.m ? vp5Var.n : null;
        while (true) {
            String strB = os4Var2.b();
            if (strB != null) {
                if (strB.startsWith("Format:")) {
                    wp5VarA = wp5.a(strB);
                } else {
                    if (strB.startsWith("Dialogue:")) {
                        if (wp5VarA == null) {
                            sv3.d("SsaDecoder", "Skipping dialogue line before complete format: ".concat(strB));
                        } else if (strB.startsWith("Dialogue:")) {
                            String[] strArrSplit = strB.substring(9).split(StringUtils.COMMA, wp5VarA.e);
                            if (strArrSplit.length != wp5VarA.e) {
                                sv3.d("SsaDecoder", "Skipping dialogue line with fewer columns than format: ".concat(strB));
                            } else {
                                long jA = a(strArrSplit[wp5VarA.a]);
                                if (jA == C.TIME_UNSET) {
                                    sv3.d("SsaDecoder", "Skipping invalid timing: ".concat(strB));
                                } else {
                                    long jA2 = a(strArrSplit[wp5VarA.b]);
                                    if (jA2 == C.TIME_UNSET) {
                                        sv3.d("SsaDecoder", "Skipping invalid timing: ".concat(strB));
                                    } else {
                                        LinkedHashMap linkedHashMap = vp5Var.o;
                                        zp5 zp5Var = (linkedHashMap == null || (i9 = wp5VarA.c) == -1) ? null : (zp5) linkedHashMap.get(strArrSplit[i9].trim());
                                        String str = strArrSplit[wp5VarA.d];
                                        Matcher matcher = yp5.a.matcher(str);
                                        int i10 = -1;
                                        PointF pointF2 = null;
                                        while (matcher.find()) {
                                            os4Var2 = os4Var2;
                                            String strGroup = matcher.group(1);
                                            strGroup.getClass();
                                            try {
                                                PointF pointFA = yp5.a(strGroup);
                                                if (pointFA != null) {
                                                    pointF2 = pointFA;
                                                }
                                            } catch (RuntimeException unused) {
                                            }
                                            try {
                                                Matcher matcher2 = yp5.d.matcher(strGroup);
                                                if (matcher2.find()) {
                                                    String strGroup2 = matcher2.group(1);
                                                    strGroup2.getClass();
                                                    try {
                                                        i8 = Integer.parseInt(strGroup2.trim());
                                                        switch (i8) {
                                                            case 1:
                                                            case 2:
                                                            case 3:
                                                            case 4:
                                                            case 5:
                                                            case 6:
                                                            case 7:
                                                            case 8:
                                                            case 9:
                                                                wp5Var2 = wp5VarA;
                                                                pointF = pointF2;
                                                                if (i8 != -1) {
                                                                    i10 = i8;
                                                                    pointF2 = pointF;
                                                                    wp5VarA = wp5Var2;
                                                                } else {
                                                                    pointF2 = pointF;
                                                                    wp5VarA = wp5Var2;
                                                                }
                                                                break;
                                                            default:
                                                                wp5Var2 = wp5VarA;
                                                                try {
                                                                    pointF = pointF2;
                                                                    try {
                                                                        sv3.d("SsaStyle", "Ignoring unknown alignment: " + strGroup2);
                                                                    } catch (RuntimeException unused2) {
                                                                    }
                                                                } catch (RuntimeException unused3) {
                                                                    pointF = pointF2;
                                                                }
                                                                break;
                                                        }
                                                    } catch (NumberFormatException unused4) {
                                                    }
                                                } else {
                                                    wp5Var2 = wp5VarA;
                                                    pointF = pointF2;
                                                }
                                                i8 = -1;
                                                if (i8 != -1) {
                                                    i10 = i8;
                                                    pointF2 = pointF;
                                                    wp5VarA = wp5Var2;
                                                } else {
                                                    pointF2 = pointF;
                                                    wp5VarA = wp5Var2;
                                                }
                                            } catch (RuntimeException unused5) {
                                                wp5Var2 = wp5VarA;
                                            }
                                        }
                                        os4Var = os4Var2;
                                        wp5Var = wp5VarA;
                                        String strReplace = yp5.a.matcher(str).replaceAll("").replace("\\N", "\n").replace("\\n", "\n").replace("\\h", " ");
                                        float f7 = vp5Var.p;
                                        float f8 = vp5Var.q;
                                        SpannableString spannableString = new SpannableString(strReplace);
                                        float f9 = -3.4028235E38f;
                                        if (zp5Var != null) {
                                            if (zp5Var.c != null) {
                                                spannableString.setSpan(new ForegroundColorSpan(zp5Var.c.intValue()), 0, spannableString.length(), 33);
                                            }
                                            if (zp5Var.j == 3 && zp5Var.d != null) {
                                                spannableString.setSpan(new BackgroundColorSpan(zp5Var.d.intValue()), 0, spannableString.length(), 33);
                                            }
                                            float f10 = zp5Var.e;
                                            if (f10 == -3.4028235E38f || f8 == -3.4028235E38f) {
                                                f5 = -3.4028235E38f;
                                                i5 = Integer.MIN_VALUE;
                                            } else {
                                                f5 = f10 / f8;
                                                i5 = 1;
                                            }
                                            boolean z2 = zp5Var.f;
                                            if (z2 && zp5Var.g) {
                                                f6 = f5;
                                                i6 = i5;
                                                i7 = 33;
                                                i2 = 0;
                                                spannableString.setSpan(new StyleSpan(3), 0, spannableString.length(), 33);
                                            } else {
                                                f6 = f5;
                                                i6 = i5;
                                                i7 = 33;
                                                i2 = 0;
                                                if (z2) {
                                                    spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 33);
                                                } else if (zp5Var.g) {
                                                    spannableString.setSpan(new StyleSpan(2), 0, spannableString.length(), 33);
                                                }
                                            }
                                            if (zp5Var.h) {
                                                spannableString.setSpan(new UnderlineSpan(), i2, spannableString.length(), i7);
                                            }
                                            if (zp5Var.i) {
                                                spannableString.setSpan(new StrikethroughSpan(), i2, spannableString.length(), i7);
                                            }
                                            i3 = i6;
                                            f = f6;
                                        } else {
                                            f7 = f7;
                                            i2 = 0;
                                            f = -3.4028235E38f;
                                            i3 = Integer.MIN_VALUE;
                                        }
                                        int i11 = -1;
                                        if (i10 != -1) {
                                            i11 = i10;
                                        } else if (zp5Var != null) {
                                            i11 = zp5Var.b;
                                        }
                                        switch (i11) {
                                            case 0:
                                            default:
                                                qt3.a(i11, "Unknown alignment: ", "SsaDecoder");
                                            case -1:
                                                alignment = null;
                                                break;
                                            case 1:
                                            case 4:
                                            case 7:
                                                alignment = Layout.Alignment.ALIGN_NORMAL;
                                                break;
                                            case 2:
                                            case 5:
                                            case 8:
                                                alignment = Layout.Alignment.ALIGN_CENTER;
                                                break;
                                            case 3:
                                            case 6:
                                            case 9:
                                                alignment = Layout.Alignment.ALIGN_OPPOSITE;
                                                break;
                                        }
                                        switch (i11) {
                                            case 0:
                                            default:
                                                qt3.a(i11, "Unknown alignment: ", "SsaDecoder");
                                            case -1:
                                                i4 = Integer.MIN_VALUE;
                                                break;
                                            case 1:
                                            case 4:
                                            case 7:
                                                i4 = i2;
                                                break;
                                            case 2:
                                            case 5:
                                            case 8:
                                                i4 = 1;
                                                break;
                                            case 3:
                                            case 6:
                                            case 9:
                                                i4 = 2;
                                                break;
                                        }
                                        switch (i11) {
                                            case 0:
                                            default:
                                                qt3.a(i11, "Unknown alignment: ", "SsaDecoder");
                                            case -1:
                                                i2 = Integer.MIN_VALUE;
                                                break;
                                            case 1:
                                            case 2:
                                            case 3:
                                                i2 = 2;
                                                break;
                                            case 4:
                                            case 5:
                                            case 6:
                                                i2 = 1;
                                                break;
                                            case 7:
                                            case 8:
                                            case 9:
                                                break;
                                        }
                                        if (pointF2 != null && f8 != -3.4028235E38f && f7 != -3.4028235E38f) {
                                            float f11 = pointF2.x / f7;
                                            f9 = pointF2.y / f8;
                                            f4 = f11;
                                        } else {
                                            if (i4 == 0) {
                                                f2 = 0.05f;
                                            } else if (i4 != 1) {
                                                f2 = i4 != 2 ? -3.4028235E38f : 0.95f;
                                            } else {
                                                f2 = 0.5f;
                                            }
                                            if (i2 == 0) {
                                                f3 = 0.05f;
                                            } else if (i2 == 1) {
                                                f3 = 0.5f;
                                            } else if (i2 != 2) {
                                                f4 = f2;
                                            } else {
                                                f3 = 0.95f;
                                            }
                                            f4 = f2;
                                            sb0Var = new sb0(spannableString, alignment, null, null, f3, 0, i2, f4, i4, i3, f, -3.4028235E38f, -3.4028235E38f, false, -16777216, Integer.MIN_VALUE, 0.0f);
                                            iA2 = a(jA2, arrayList2, arrayList);
                                            for (iA = a(jA, arrayList2, arrayList); iA < iA2; iA++) {
                                                ((List) arrayList.get(iA)).add(sb0Var);
                                            }
                                        }
                                        f3 = f9;
                                        sb0Var = new sb0(spannableString, alignment, null, null, f3, 0, i2, f4, i4, i3, f, -3.4028235E38f, -3.4028235E38f, false, -16777216, Integer.MIN_VALUE, 0.0f);
                                        iA2 = a(jA2, arrayList2, arrayList);
                                        while (iA < iA2) {
                                            ((List) arrayList.get(iA)).add(sb0Var);
                                        }
                                    }
                                }
                            }
                        } else {
                            defpackage.mi2.b();
                            return null;
                        }
                        os4Var = os4Var2;
                        wp5Var = wp5VarA;
                    } else {
                        os4Var = os4Var2;
                        wp5Var = wp5VarA;
                    }
                    vp5Var = this;
                    os4Var2 = os4Var;
                    wp5VarA = wp5Var;
                }
            } else {
                return new aq5(arrayList, arrayList2);
            }
        }
    }

    public static long a(String str) {
        Matcher matcher = r.matcher(str.trim());
        if (!matcher.matches()) {
            return C.TIME_UNSET;
        }
        String strGroup = matcher.group(1);
        int i = u56.a;
        return (Long.parseLong(matcher.group(4)) * 10000) + (Long.parseLong(matcher.group(3)) * 1000000) + (Long.parseLong(matcher.group(2)) * 60000000) + (Long.parseLong(strGroup) * 3600000000L);
    }

    public static int a(long j, ArrayList arrayList, ArrayList arrayList2) {
        int i;
        int size = arrayList.size() - 1;
        while (true) {
            if (size < 0) {
                i = 0;
                break;
            }
            if (((Long) arrayList.get(size)).longValue() == j) {
                return size;
            }
            if (((Long) arrayList.get(size)).longValue() < j) {
                i = size + 1;
                break;
            }
            size--;
        }
        arrayList.add(i, Long.valueOf(j));
        arrayList2.add(i, i == 0 ? new ArrayList() : new ArrayList((Collection) arrayList2.get(i - 1)));
        return i;
    }
}
