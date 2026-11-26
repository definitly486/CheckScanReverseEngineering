package yads;

import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import androidx.media3.extractor.text.ttml.TtmlNode;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes6.dex */
public abstract class sk6 {
    public static final Pattern a = Pattern.compile("^(\\S+)\\s+-->\\s+(\\S+)(.*)?$");
    public static final Pattern b = Pattern.compile("(\\S+?):(\\S+)");
    public static final Map c;
    public static final Map d;

    static {
        HashMap map = new HashMap();
        defpackage.n7.f(255, 255, 255, map, "white");
        defpackage.n7.f(0, 255, 0, map, "lime");
        defpackage.n7.f(0, 255, 255, map, "cyan");
        defpackage.n7.f(255, 0, 0, map, "red");
        defpackage.n7.f(255, 255, 0, map, "yellow");
        defpackage.n7.f(255, 0, 255, map, "magenta");
        defpackage.n7.f(0, 0, 255, map, "blue");
        defpackage.n7.f(0, 0, 0, map, "black");
        c = Collections.unmodifiableMap(map);
        HashMap map2 = new HashMap();
        defpackage.n7.f(255, 255, 255, map2, "bg_white");
        defpackage.n7.f(0, 255, 0, map2, "bg_lime");
        defpackage.n7.f(0, 255, 255, map2, "bg_cyan");
        defpackage.n7.f(255, 0, 0, map2, "bg_red");
        defpackage.n7.f(255, 255, 0, map2, "bg_yellow");
        defpackage.n7.f(255, 0, 255, map2, "bg_magenta");
        defpackage.n7.f(0, 0, 255, map2, "bg_blue");
        defpackage.n7.f(0, 0, 0, map2, "bg_black");
        d = Collections.unmodifiableMap(map2);
    }

    public static void a(String str, pk6 pk6Var, List list, SpannableStringBuilder spannableStringBuilder, List list2) {
        int i;
        int i2;
        int i3;
        ArrayList arrayList;
        int i4 = pk6Var.b;
        int length = spannableStringBuilder.length();
        String str2 = pk6Var.a;
        str2.getClass();
        switch (str2) {
            case "":
            case "v":
            case "lang":
                break;
            case "b":
                spannableStringBuilder.setSpan(new StyleSpan(1), i4, length, 33);
                break;
            case "c":
                for (String str3 : pk6Var.d) {
                    Map map = c;
                    if (map.containsKey(str3)) {
                        spannableStringBuilder.setSpan(new ForegroundColorSpan(((Integer) map.get(str3)).intValue()), i4, length, 33);
                    } else {
                        Map map2 = d;
                        if (map2.containsKey(str3)) {
                            spannableStringBuilder.setSpan(new BackgroundColorSpan(((Integer) map2.get(str3)).intValue()), i4, length, 33);
                        }
                    }
                }
                break;
            case "i":
                spannableStringBuilder.setSpan(new StyleSpan(2), i4, length, 33);
                break;
            case "u":
                spannableStringBuilder.setSpan(new UnderlineSpan(), i4, length, 33);
                break;
            case "ruby":
                ArrayList arrayList2 = new ArrayList();
                for (int i5 = 0; i5 < list2.size(); i5++) {
                    mk6 mk6Var = (mk6) list2.get(i5);
                    int iA = mk6Var.a(str, pk6Var.a, pk6Var.d, pk6Var.c);
                    if (iA > 0) {
                        arrayList2.add(new qk6(iA, mk6Var));
                    }
                }
                Collections.sort(arrayList2);
                for (int i6 = 0; i6 < arrayList2.size() && ((qk6) arrayList2.get(i6)).c.p == -1; i6++) {
                }
                ArrayList arrayList3 = new ArrayList(list.size());
                arrayList3.addAll(list);
                Collections.sort(arrayList3, ok6.c);
                int i7 = pk6Var.b;
                int i8 = 0;
                int length2 = 0;
                while (i8 < arrayList3.size()) {
                    if ("rt".equals(((ok6) arrayList3.get(i8)).a.a)) {
                        ok6 ok6Var = (ok6) arrayList3.get(i8);
                        pk6 pk6Var2 = ok6Var.a;
                        ArrayList arrayList4 = new ArrayList();
                        int i9 = 0;
                        while (i9 < list2.size()) {
                            mk6 mk6Var2 = (mk6) list2.get(i9);
                            ArrayList arrayList5 = arrayList3;
                            int i10 = i9;
                            int iA2 = mk6Var2.a(str, pk6Var2.a, pk6Var2.d, pk6Var2.c);
                            if (iA2 > 0) {
                                arrayList4.add(new qk6(iA2, mk6Var2));
                            }
                            i9 = i10 + 1;
                            arrayList3 = arrayList5;
                        }
                        arrayList = arrayList3;
                        Collections.sort(arrayList4);
                        for (int i11 = 0; i11 < arrayList4.size() && ((qk6) arrayList4.get(i11)).c.p == -1; i11++) {
                        }
                        int i12 = ok6Var.a.b - length2;
                        int i13 = ok6Var.b - length2;
                        CharSequence charSequenceSubSequence = spannableStringBuilder.subSequence(i12, i13);
                        spannableStringBuilder.delete(i12, i13);
                        charSequenceSubSequence.toString();
                        spannableStringBuilder.setSpan(new qb5(), i7, i12, 33);
                        length2 += charSequenceSubSequence.length();
                        i7 = i12;
                    } else {
                        arrayList = arrayList3;
                    }
                    i8++;
                    arrayList3 = arrayList;
                }
                break;
            default:
                return;
        }
        ArrayList arrayList6 = new ArrayList();
        for (int i14 = 0; i14 < list2.size(); i14++) {
            mk6 mk6Var3 = (mk6) list2.get(i14);
            int iA3 = mk6Var3.a(str, pk6Var.a, pk6Var.d, pk6Var.c);
            if (iA3 > 0) {
                arrayList6.add(new qk6(iA3, mk6Var3));
            }
        }
        Collections.sort(arrayList6);
        for (int i15 = 0; i15 < arrayList6.size(); i15++) {
            mk6 mk6Var4 = ((qk6) arrayList6.get(i15)).c;
            int i16 = mk6Var4.l;
            if (((i16 == -1 && mk6Var4.m == -1) ? -1 : (i16 == 1 ? (char) 1 : (char) 0) | (mk6Var4.m == 1 ? (char) 2 : (char) 0)) != -1) {
                int i17 = mk6Var4.l;
                if (i17 == -1 && mk6Var4.m == -1) {
                    i3 = -1;
                    i = 1;
                } else {
                    i = 1;
                    i3 = (i17 == 1 ? 1 : 0) | (mk6Var4.m == 1 ? 2 : 0);
                }
                so5.a(spannableStringBuilder, new StyleSpan(i3), i4, length);
            } else {
                i = 1;
            }
            if (mk6Var4.j == i) {
                i2 = 33;
                spannableStringBuilder.setSpan(new StrikethroughSpan(), i4, length, 33);
            } else {
                i2 = 33;
            }
            if (mk6Var4.k == i) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i4, length, i2);
            }
            if (mk6Var4.g) {
                if (!mk6Var4.g) {
                    defpackage.ah.f("Font color not defined");
                    return;
                }
                so5.a(spannableStringBuilder, new ForegroundColorSpan(mk6Var4.f), i4, length);
            }
            if (mk6Var4.i) {
                if (!mk6Var4.i) {
                    defpackage.ah.f("Background color not defined.");
                    return;
                }
                so5.a(spannableStringBuilder, new BackgroundColorSpan(mk6Var4.h), i4, length);
            }
            if (mk6Var4.e != null) {
                so5.a(spannableStringBuilder, new TypefaceSpan(mk6Var4.e), i4, length);
            }
            int i18 = mk6Var4.n;
            if (i18 == 1) {
                so5.a(spannableStringBuilder, new AbsoluteSizeSpan((int) mk6Var4.o, true), i4, length);
            } else if (i18 == 2) {
                so5.a(spannableStringBuilder, new RelativeSizeSpan(mk6Var4.o), i4, length);
            } else if (i18 == 3) {
                so5.a(spannableStringBuilder, new RelativeSizeSpan(mk6Var4.o / 100.0f), i4, length);
            }
            if (mk6Var4.q) {
                spannableStringBuilder.setSpan(new t93(), i4, length, 33);
            }
        }
    }

    public static void b(String str, rk6 rk6Var) {
        int iIndexOf = str.indexOf(44);
        if (iIndexOf != -1) {
            String strSubstring = str.substring(iIndexOf + 1);
            int i = 2;
            switch (strSubstring) {
                case "center":
                case "middle":
                    i = 1;
                    break;
                case "end":
                    break;
                case "start":
                    i = 0;
                    break;
                default:
                    sv3.d("WebvttCueParser", "Invalid anchor value: ".concat(strSubstring));
                    i = Integer.MIN_VALUE;
                    break;
            }
            rk6Var.g = i;
            str = str.substring(0, iIndexOf);
        }
        if (!str.endsWith("%")) {
            rk6Var.e = Integer.parseInt(str);
            rk6Var.f = 1;
            return;
        }
        int i2 = uk6.a;
        if (!str.endsWith("%")) {
            throw new NumberFormatException("Percentages must end with %");
        }
        rk6Var.e = Float.parseFloat(str.substring(0, str.length() - 1)) / 100.0f;
        rk6Var.f = 0;
    }

    public static nk6 a(String str, Matcher matcher, os4 os4Var, ArrayList arrayList) {
        rk6 rk6Var = new rk6();
        try {
            String strGroup = matcher.group(1);
            strGroup.getClass();
            rk6Var.a = uk6.a(strGroup);
            String strGroup2 = matcher.group(2);
            strGroup2.getClass();
            rk6Var.b = uk6.a(strGroup2);
            String strGroup3 = matcher.group(3);
            strGroup3.getClass();
            a(strGroup3, rk6Var);
            StringBuilder sb = new StringBuilder();
            String strB = os4Var.b();
            while (!TextUtils.isEmpty(strB)) {
                if (sb.length() > 0) {
                    sb.append("\n");
                }
                sb.append(strB.trim());
                strB = os4Var.b();
            }
            rk6Var.c = a(str, sb.toString(), arrayList);
            return new nk6(rk6Var.a().a(), rk6Var.a, rk6Var.b);
        } catch (NumberFormatException unused) {
            sv3.d("WebvttCueParser", "Skipping cue with bad header: " + matcher.group());
            return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static void a(String str, rk6 rk6Var) {
        int i;
        int i2;
        int i3;
        Matcher matcher = b.matcher(str);
        while (matcher.find()) {
            String strGroup = matcher.group(1);
            strGroup.getClass();
            String strGroup2 = matcher.group(2);
            strGroup2.getClass();
            try {
                if ("line".equals(strGroup)) {
                    b(strGroup2, rk6Var);
                } else if ("align".equals(strGroup)) {
                    switch (strGroup2) {
                        case "center":
                        case "middle":
                            i = 2;
                            break;
                        case "end":
                            i = 3;
                            break;
                        case "left":
                            i = 4;
                            break;
                        case "right":
                            i = 5;
                            break;
                        case "start":
                            i = 1;
                            break;
                        default:
                            sv3.d("WebvttCueParser", "Invalid alignment value: ".concat(strGroup2));
                            i = 2;
                            break;
                    }
                    rk6Var.d = i;
                } else if ("position".equals(strGroup)) {
                    int iIndexOf = strGroup2.indexOf(44);
                    if (iIndexOf != -1) {
                        String strSubstring = strGroup2.substring(iIndexOf + 1);
                        switch (strSubstring.hashCode()) {
                            case -1842484672:
                                if (strSubstring.equals("line-left")) {
                                }
                                break;
                            case -1364013995:
                                if (strSubstring.equals(TtmlNode.CENTER)) {
                                }
                                break;
                            case -1276788989:
                                if (strSubstring.equals("line-right")) {
                                }
                                break;
                            case -1074341483:
                                if (strSubstring.equals("middle")) {
                                }
                                break;
                            case 100571:
                                if (strSubstring.equals(TtmlNode.END)) {
                                }
                                break;
                            case 109757538:
                                if (strSubstring.equals(TtmlNode.START)) {
                                }
                                break;
                        }
                        /*  JADX ERROR: Method code generation error
                            java.lang.NullPointerException: Switch insn not found in header
                            	at java.base/java.util.Objects.requireNonNull(Objects.java:235)
                            	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:246)
                            	at jadx.core.dex.regions.SwitchRegion.generate(SwitchRegion.java:90)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                            	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:157)
                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:136)
                            	at jadx.core.codegen.RegionGen.connectElseIf(RegionGen.java:157)
                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:136)
                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                            	at jadx.core.codegen.RegionGen.makeTryCatch(RegionGen.java:320)
                            	at jadx.core.dex.regions.TryCatchRegion.generate(TryCatchRegion.java:85)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                            	at jadx.core.codegen.RegionGen.makeLoop(RegionGen.java:226)
                            	at jadx.core.dex.regions.loops.LoopRegion.generate(LoopRegion.java:173)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:291)
                            	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:270)
                            	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:420)
                            	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
                            	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:299)
                            	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                            	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                            	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                            	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                            */
                        /*
                            Method dump skipped, instruction units count: 542
                            To view this dump add '--comments-level debug' option
                        */
                        throw new UnsupportedOperationException("Method not decompiled: yads.sk6.a(java.lang.String, yads.rk6):void");
                    }

                    public static SpannedString a(String str, String str2, List list) {
                        char c2;
                        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                        ArrayDeque arrayDeque = new ArrayDeque();
                        ArrayList arrayList = new ArrayList();
                        int i = 0;
                        while (true) {
                            String strTrim = "";
                            if (i < str2.length()) {
                                char cCharAt = str2.charAt(i);
                                if (cCharAt == '&') {
                                    i++;
                                    int iIndexOf = str2.indexOf(59, i);
                                    int iIndexOf2 = str2.indexOf(32, i);
                                    if (iIndexOf == -1) {
                                        iIndexOf = iIndexOf2;
                                    } else if (iIndexOf2 != -1) {
                                        iIndexOf = Math.min(iIndexOf, iIndexOf2);
                                    }
                                    if (iIndexOf != -1) {
                                        String strSubstring = str2.substring(i, iIndexOf);
                                        switch (strSubstring) {
                                            case "gt":
                                                spannableStringBuilder.append('>');
                                                break;
                                            case "lt":
                                                spannableStringBuilder.append('<');
                                                break;
                                            case "amp":
                                                spannableStringBuilder.append('&');
                                                break;
                                            case "nbsp":
                                                spannableStringBuilder.append(' ');
                                                break;
                                            default:
                                                sv3.d("WebvttCueParser", "ignoring unsupported entity: '&" + strSubstring + ";'");
                                                break;
                                        }
                                        if (iIndexOf == iIndexOf2) {
                                            spannableStringBuilder.append((CharSequence) " ");
                                        }
                                        i = iIndexOf + 1;
                                    } else {
                                        spannableStringBuilder.append(cCharAt);
                                    }
                                } else if (cCharAt != '<') {
                                    spannableStringBuilder.append(cCharAt);
                                    i++;
                                } else {
                                    int length = i + 1;
                                    if (length < str2.length()) {
                                        boolean z = str2.charAt(length) == '/';
                                        int iIndexOf3 = str2.indexOf(62, length);
                                        length = iIndexOf3 == -1 ? str2.length() : iIndexOf3 + 1;
                                        int i2 = length - 2;
                                        boolean z2 = str2.charAt(i2) == '/';
                                        int i3 = i + (z ? 2 : 1);
                                        if (!z2) {
                                            i2 = length - 1;
                                        }
                                        String strSubstring2 = str2.substring(i3, i2);
                                        if (!strSubstring2.trim().isEmpty()) {
                                            String strTrim2 = strSubstring2.trim();
                                            if (!strTrim2.isEmpty()) {
                                                int i4 = u56.a;
                                                String str3 = strTrim2.split("[ \\.]", 2)[0];
                                                str3.getClass();
                                                switch (str3) {
                                                    case "b":
                                                    case "c":
                                                    case "i":
                                                    case "u":
                                                    case "v":
                                                    case "rt":
                                                    case "lang":
                                                    case "ruby":
                                                        if (!z) {
                                                            if (!z2) {
                                                                int length2 = spannableStringBuilder.length();
                                                                String strTrim3 = strSubstring2.trim();
                                                                if (!strTrim3.isEmpty()) {
                                                                    int iIndexOf4 = strTrim3.indexOf(" ");
                                                                    if (iIndexOf4 == -1) {
                                                                        c2 = 0;
                                                                    } else {
                                                                        strTrim = strTrim3.substring(iIndexOf4).trim();
                                                                        c2 = 0;
                                                                        strTrim3 = strTrim3.substring(0, iIndexOf4);
                                                                    }
                                                                    String[] strArrSplit = strTrim3.split("\\.", -1);
                                                                    String str4 = strArrSplit[c2];
                                                                    HashSet hashSet = new HashSet();
                                                                    for (int i5 = 1; i5 < strArrSplit.length; i5++) {
                                                                        hashSet.add(strArrSplit[i5]);
                                                                    }
                                                                    arrayDeque.push(new pk6(str4, length2, strTrim, hashSet));
                                                                } else {
                                                                    defpackage.mi2.b();
                                                                    return null;
                                                                }
                                                            }
                                                            break;
                                                        } else {
                                                            while (!arrayDeque.isEmpty()) {
                                                                pk6 pk6Var = (pk6) arrayDeque.pop();
                                                                a(str, pk6Var, arrayList, spannableStringBuilder, list);
                                                                if (!arrayDeque.isEmpty()) {
                                                                    arrayList.add(new ok6(pk6Var, spannableStringBuilder.length()));
                                                                } else {
                                                                    arrayList.clear();
                                                                }
                                                                if (pk6Var.a.equals(str3)) {
                                                                    break;
                                                                }
                                                            }
                                                            break;
                                                        }
                                                    default:
                                                        i = length;
                                                        break;
                                                }
                                            } else {
                                                defpackage.mi2.b();
                                                return null;
                                            }
                                        }
                                    }
                                    i = length;
                                }
                            } else {
                                while (!arrayDeque.isEmpty()) {
                                    a(str, (pk6) arrayDeque.pop(), arrayList, spannableStringBuilder, list);
                                }
                                a(str, new pk6("", 0, "", Collections.EMPTY_SET), Collections.EMPTY_LIST, spannableStringBuilder, list);
                                return SpannedString.valueOf(spannableStringBuilder);
                            }
                        }
                    }
                }
