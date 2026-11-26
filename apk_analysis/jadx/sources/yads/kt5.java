package yads;

import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes6.dex */
public final class kt5 extends xk5 {
    public static final Pattern o = Pattern.compile("\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*");
    public static final Pattern p = Pattern.compile("\\{\\\\.*?\\}");
    public final StringBuilder m = new StringBuilder();
    public final ArrayList n = new ArrayList();

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:56:0x0156  */
    /* JADX WARN: Code duplicated, block: B:60:0x0163  */
    /* JADX WARN: Code duplicated, block: B:61:0x0165  */
    /* JADX WARN: Code duplicated, block: B:73:0x0182  */
    /* JADX WARN: Code duplicated, block: B:85:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:86:0x01a9  */
    @Override // yads.xk5
    public final mt5 a(byte[] bArr, int i, boolean z) {
        String str;
        int i2;
        int i3;
        int i4;
        float f;
        sb0 sb0Var;
        kt5 kt5Var = this;
        ArrayList arrayList = new ArrayList();
        vv3 vv3Var = new vv3();
        os4 os4Var = new os4(bArr, i);
        while (true) {
            String strB = os4Var.b();
            if (strB != null) {
                if (strB.length() != 0) {
                    try {
                        Integer.parseInt(strB);
                        String strB2 = os4Var.b();
                        if (strB2 == null) {
                            sv3.d("SubripDecoder", "Unexpected end");
                        } else {
                            Matcher matcher = o.matcher(strB2);
                            if (matcher.matches()) {
                                vv3Var.a(a(matcher, 1));
                                vv3Var.a(a(matcher, 6));
                                kt5Var.m.setLength(0);
                                kt5Var.n.clear();
                                String strB3 = os4Var.b();
                                while (true) {
                                    boolean zIsEmpty = TextUtils.isEmpty(strB3);
                                    StringBuilder sb = kt5Var.m;
                                    if (zIsEmpty) {
                                        Spanned spannedFromHtml = Html.fromHtml(sb.toString());
                                        int i5 = 0;
                                        while (true) {
                                            if (i5 < kt5Var.n.size()) {
                                                str = (String) kt5Var.n.get(i5);
                                                if (!str.matches("\\{\\\\an[1-9]\\}")) {
                                                    i5++;
                                                }
                                            } else {
                                                str = null;
                                            }
                                        }
                                        if (str == null) {
                                            sb0Var = new sb0(spannedFromHtml, null, null, null, -3.4028235E38f, Integer.MIN_VALUE, Integer.MIN_VALUE, -3.4028235E38f, Integer.MIN_VALUE, Integer.MIN_VALUE, -3.4028235E38f, -3.4028235E38f, -3.4028235E38f, false, -16777216, Integer.MIN_VALUE, 0.0f);
                                        } else {
                                            switch (str.hashCode()) {
                                                case -685620710:
                                                    if (!str.equals("{\\an1}")) {
                                                        i2 = 1;
                                                    } else {
                                                        i2 = 0;
                                                    }
                                                    break;
                                                case -685620679:
                                                    str.equals("{\\an2}");
                                                    i2 = 1;
                                                    break;
                                                case -685620648:
                                                    if (!str.equals("{\\an3}")) {
                                                        i2 = 1;
                                                    } else {
                                                        i2 = 2;
                                                    }
                                                    break;
                                                case -685620617:
                                                    if (!str.equals("{\\an4}")) {
                                                        i2 = 1;
                                                    } else {
                                                        i2 = 0;
                                                    }
                                                    break;
                                                case -685620586:
                                                    str.equals("{\\an5}");
                                                    i2 = 1;
                                                    break;
                                                case -685620555:
                                                    if (!str.equals("{\\an6}")) {
                                                        i2 = 1;
                                                    } else {
                                                        i2 = 2;
                                                    }
                                                    break;
                                                case -685620524:
                                                    if (!str.equals("{\\an7}")) {
                                                        i2 = 1;
                                                    } else {
                                                        i2 = 0;
                                                    }
                                                    break;
                                                case -685620493:
                                                    str.equals("{\\an8}");
                                                    i2 = 1;
                                                    break;
                                                case -685620462:
                                                    if (!str.equals("{\\an9}")) {
                                                        i2 = 1;
                                                    } else {
                                                        i2 = 2;
                                                    }
                                                    break;
                                                default:
                                                    i2 = 1;
                                                    break;
                                            }
                                            switch (str.hashCode()) {
                                                case -685620710:
                                                    if (!str.equals("{\\an1}")) {
                                                        i3 = 1;
                                                    } else {
                                                        i3 = 2;
                                                    }
                                                    break;
                                                case -685620679:
                                                    if (!str.equals("{\\an2}")) {
                                                        i3 = 1;
                                                    } else {
                                                        i3 = 2;
                                                    }
                                                    break;
                                                case -685620648:
                                                    if (!str.equals("{\\an3}")) {
                                                        i3 = 1;
                                                    } else {
                                                        i3 = 2;
                                                    }
                                                    break;
                                                case -685620617:
                                                    str.equals("{\\an4}");
                                                    i3 = 1;
                                                    break;
                                                case -685620586:
                                                    str.equals("{\\an5}");
                                                    i3 = 1;
                                                    break;
                                                case -685620555:
                                                    str.equals("{\\an6}");
                                                    i3 = 1;
                                                    break;
                                                case -685620524:
                                                    if (!str.equals("{\\an7}")) {
                                                        i3 = 1;
                                                    } else {
                                                        i3 = 0;
                                                    }
                                                    break;
                                                case -685620493:
                                                    if (!str.equals("{\\an8}")) {
                                                        i3 = 1;
                                                    } else {
                                                        i3 = 0;
                                                    }
                                                    break;
                                                case -685620462:
                                                    if (!str.equals("{\\an9}")) {
                                                        i3 = 1;
                                                    } else {
                                                        i3 = 0;
                                                    }
                                                    break;
                                                default:
                                                    i3 = 1;
                                                    break;
                                            }
                                            float f2 = 0.08f;
                                            if (i2 != 0) {
                                                i4 = 1;
                                                if (i2 == 1) {
                                                    f = 0.5f;
                                                } else {
                                                    if (i2 != 2) {
                                                        defpackage.mi2.b();
                                                        return null;
                                                    }
                                                    f = 0.92f;
                                                }
                                            } else {
                                                i4 = 1;
                                                f = 0.08f;
                                            }
                                            if (i3 != 0) {
                                                if (i3 == i4) {
                                                    f2 = 0.5f;
                                                } else {
                                                    if (i3 != 2) {
                                                        defpackage.mi2.b();
                                                        return null;
                                                    }
                                                    f2 = 0.92f;
                                                }
                                            }
                                            sb0Var = new sb0(spannedFromHtml, null, null, null, f2, 0, i3, f, i2, Integer.MIN_VALUE, -3.4028235E38f, -3.4028235E38f, -3.4028235E38f, false, -16777216, Integer.MIN_VALUE, 0.0f);
                                        }
                                        arrayList.add(sb0Var);
                                        arrayList.add(sb0.s);
                                        kt5Var = this;
                                        vv3Var = vv3Var;
                                    } else {
                                        if (sb.length() > 0) {
                                            kt5Var.m.append("<br>");
                                        }
                                        StringBuilder sb2 = kt5Var.m;
                                        ArrayList arrayList2 = kt5Var.n;
                                        String strTrim = strB3.trim();
                                        StringBuilder sb3 = new StringBuilder(strTrim);
                                        Matcher matcher2 = p.matcher(strTrim);
                                        int i6 = 0;
                                        while (matcher2.find()) {
                                            String strGroup = matcher2.group();
                                            arrayList2.add(strGroup);
                                            int iStart = matcher2.start() - i6;
                                            int length = strGroup.length();
                                            sb3.replace(iStart, iStart + length, "");
                                            i6 += length;
                                        }
                                        sb2.append(sb3.toString());
                                        strB3 = os4Var.b();
                                    }
                                }
                            } else {
                                sv3.d("SubripDecoder", "Skipping invalid timing: ".concat(strB2));
                                kt5Var = this;
                            }
                        }
                    } catch (NumberFormatException unused) {
                        sv3.d("SubripDecoder", "Skipping invalid index: ".concat(strB));
                    }
                }
            }
        }
        return new lt5((sb0[]) arrayList.toArray(new sb0[0]), vv3Var.a());
    }

    public static long a(Matcher matcher, int i) {
        String strGroup = matcher.group(i + 1);
        long j = strGroup != null ? Long.parseLong(strGroup) * 3600000 : 0L;
        String strGroup2 = matcher.group(i + 2);
        strGroup2.getClass();
        long j2 = (Long.parseLong(strGroup2) * 60000) + j;
        String strGroup3 = matcher.group(i + 3);
        strGroup3.getClass();
        long j3 = (Long.parseLong(strGroup3) * 1000) + j2;
        String strGroup4 = matcher.group(i + 4);
        if (strGroup4 != null) {
            j3 += Long.parseLong(strGroup4);
        }
        return j3 * 1000;
    }
}
