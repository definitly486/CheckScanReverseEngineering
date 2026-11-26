package yads;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.util.Base64;
import android.util.Pair;
import androidx.media3.common.C;
import androidx.media3.extractor.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes6.dex */
public final class a36 {
    public final String a;
    public final String b;
    public final boolean c;
    public final long d;
    public final long e;
    public final d36 f;
    public final String[] g;
    public final String h;
    public final String i;
    public final a36 j;
    public final HashMap k;
    public final HashMap l;
    public ArrayList m;

    public a36(String str, String str2, long j, long j2, d36 d36Var, String[] strArr, String str3, String str4, a36 a36Var) {
        this.a = str;
        this.b = str2;
        this.i = str4;
        this.f = d36Var;
        this.g = strArr;
        this.c = str2 != null;
        this.d = j;
        this.e = j2;
        str3.getClass();
        this.h = str3;
        this.j = a36Var;
        this.k = new HashMap();
        this.l = new HashMap();
    }

    public final ArrayList a(long j, Map map, HashMap map2, HashMap map3) {
        ArrayList<Pair> arrayList = new ArrayList();
        a(j, this.h, arrayList);
        TreeMap treeMap = new TreeMap();
        a(j, false, this.h, treeMap);
        a(j, map, map2, this.h, treeMap);
        ArrayList arrayList2 = new ArrayList();
        for (Pair pair : arrayList) {
            String str = (String) map3.get(pair.second);
            if (str != null) {
                byte[] bArrDecode = Base64.decode(str, 0);
                Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length);
                b36 b36Var = (b36) map2.get(pair.first);
                b36Var.getClass();
                arrayList2.add(new sb0(null, null, null, bitmapDecodeByteArray, b36Var.c, 0, b36Var.e, b36Var.b, 0, Integer.MIN_VALUE, -3.4028235E38f, b36Var.f, b36Var.g, false, -16777216, b36Var.j, 0.0f));
            }
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            b36 b36Var2 = (b36) map2.get(entry.getKey());
            b36Var2.getClass();
            rb0 rb0Var = (rb0) entry.getValue();
            CharSequence charSequence = rb0Var.a;
            charSequence.getClass();
            SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) charSequence;
            for (jn0 jn0Var : (jn0[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), jn0.class)) {
                spannableStringBuilder.replace(spannableStringBuilder.getSpanStart(jn0Var), spannableStringBuilder.getSpanEnd(jn0Var), (CharSequence) "");
            }
            for (int i = 0; i < spannableStringBuilder.length(); i++) {
                if (spannableStringBuilder.charAt(i) == ' ') {
                    int i2 = i + 1;
                    int i3 = i2;
                    while (i3 < spannableStringBuilder.length() && spannableStringBuilder.charAt(i3) == ' ') {
                        i3++;
                    }
                    int i4 = i3 - i2;
                    if (i4 > 0) {
                        spannableStringBuilder.delete(i, i4 + i);
                    }
                }
            }
            if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(0) == ' ') {
                spannableStringBuilder.delete(0, 1);
            }
            for (int i5 = 0; i5 < spannableStringBuilder.length() - 1; i5++) {
                if (spannableStringBuilder.charAt(i5) == '\n') {
                    int i6 = i5 + 1;
                    if (spannableStringBuilder.charAt(i6) == ' ') {
                        spannableStringBuilder.delete(i6, i5 + 2);
                    }
                }
            }
            if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == ' ') {
                spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
            }
            for (int i7 = 0; i7 < spannableStringBuilder.length() - 1; i7++) {
                if (spannableStringBuilder.charAt(i7) == ' ') {
                    int i8 = i7 + 1;
                    if (spannableStringBuilder.charAt(i8) == '\n') {
                        spannableStringBuilder.delete(i7, i8);
                    }
                }
            }
            if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == '\n') {
                spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
            }
            float f = b36Var2.c;
            int i9 = b36Var2.d;
            rb0Var.e = f;
            rb0Var.f = i9;
            rb0Var.g = b36Var2.e;
            rb0Var.h = b36Var2.b;
            rb0Var.l = b36Var2.f;
            float f2 = b36Var2.i;
            int i10 = b36Var2.h;
            rb0Var.k = f2;
            rb0Var.j = i10;
            rb0Var.p = b36Var2.j;
            arrayList2.add(rb0Var.a());
        }
        return arrayList2;
    }

    public final boolean a(long j) {
        long j2 = this.d;
        if (j2 == C.TIME_UNSET && this.e == C.TIME_UNSET) {
            return true;
        }
        if (j2 <= j && this.e == C.TIME_UNSET) {
            return true;
        }
        if (j2 != C.TIME_UNSET || j >= this.e) {
            return j2 <= j && j < this.e;
        }
        return true;
    }

    public final a36 a(int i) {
        ArrayList arrayList = this.m;
        if (arrayList != null) {
            return (a36) arrayList.get(i);
        }
        defpackage.v93.b();
        return null;
    }

    public final void a(TreeSet treeSet, boolean z) {
        boolean zEquals = TtmlNode.TAG_P.equals(this.a);
        boolean zEquals2 = TtmlNode.TAG_DIV.equals(this.a);
        if (z || zEquals || (zEquals2 && this.i != null)) {
            long j = this.d;
            if (j != C.TIME_UNSET) {
                treeSet.add(Long.valueOf(j));
            }
            long j2 = this.e;
            if (j2 != C.TIME_UNSET) {
                treeSet.add(Long.valueOf(j2));
            }
        }
        if (this.m == null) {
            return;
        }
        for (int i = 0; i < this.m.size(); i++) {
            ((a36) this.m.get(i)).a(treeSet, z || zEquals);
        }
    }

    public static a36 a(String str) {
        return new a36(null, str.replaceAll("\r\n", "\n").replaceAll(" *\n *", "\n").replaceAll("\n", " ").replaceAll("[ \t\\x0B\f\r]+", " "), C.TIME_UNSET, C.TIME_UNSET, null, null, "", null, null);
    }

    public final void a(long j, String str, ArrayList arrayList) {
        if (!"".equals(this.h)) {
            str = this.h;
        }
        if (a(j) && TtmlNode.TAG_DIV.equals(this.a) && this.i != null) {
            arrayList.add(new Pair(str, this.i));
            return;
        }
        int i = 0;
        while (true) {
            ArrayList arrayList2 = this.m;
            if (i >= (arrayList2 == null ? 0 : arrayList2.size())) {
                return;
            }
            a(i).a(j, str, arrayList);
            i++;
        }
    }

    public final void a(long j, boolean z, String str, TreeMap treeMap) {
        this.k.clear();
        this.l.clear();
        if (TtmlNode.TAG_METADATA.equals(this.a)) {
            return;
        }
        if (!"".equals(this.h)) {
            str = this.h;
        }
        String str2 = str;
        if (this.c && z) {
            SpannableStringBuilder spannableStringBuilderA = a(str2, treeMap);
            String str3 = this.b;
            str3.getClass();
            spannableStringBuilderA.append((CharSequence) str3);
            return;
        }
        if ("br".equals(this.a) && z) {
            a(str2, treeMap).append('\n');
            return;
        }
        if (a(j)) {
            for (Map.Entry entry : treeMap.entrySet()) {
                HashMap map = this.k;
                String str4 = (String) entry.getKey();
                CharSequence charSequence = ((rb0) entry.getValue()).a;
                charSequence.getClass();
                map.put(str4, Integer.valueOf(charSequence.length()));
            }
            boolean zEquals = TtmlNode.TAG_P.equals(this.a);
            int i = 0;
            while (true) {
                ArrayList arrayList = this.m;
                if (i >= (arrayList == null ? 0 : arrayList.size())) {
                    break;
                }
                a(i).a(j, z || zEquals, str2, treeMap);
                j = j;
                i++;
                treeMap = treeMap;
            }
            TreeMap treeMap2 = treeMap;
            if (zEquals) {
                SpannableStringBuilder spannableStringBuilderA2 = a(str2, treeMap2);
                int length = spannableStringBuilderA2.length() - 1;
                while (length >= 0 && spannableStringBuilderA2.charAt(length) == ' ') {
                    length--;
                }
                if (length >= 0 && spannableStringBuilderA2.charAt(length) != '\n') {
                    spannableStringBuilderA2.append('\n');
                }
            }
            for (Map.Entry entry2 : treeMap2.entrySet()) {
                HashMap map2 = this.l;
                String str5 = (String) entry2.getKey();
                CharSequence charSequence2 = ((rb0) entry2.getValue()).a;
                charSequence2.getClass();
                map2.put(str5, Integer.valueOf(charSequence2.length()));
            }
        }
    }

    public static SpannableStringBuilder a(String str, TreeMap treeMap) {
        if (!treeMap.containsKey(str)) {
            rb0 rb0Var = new rb0();
            rb0Var.a = new SpannableStringBuilder();
            treeMap.put(str, rb0Var);
        }
        CharSequence charSequence = ((rb0) treeMap.get(str)).a;
        charSequence.getClass();
        return (SpannableStringBuilder) charSequence;
    }

    public final void a(long j, Map map, HashMap map2, String str, TreeMap treeMap) {
        if (!a(j)) {
            return;
        }
        String str2 = "".equals(this.h) ? str : this.h;
        Iterator it = this.l.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Map.Entry entry = (Map.Entry) it.next();
            String str3 = (String) entry.getKey();
            int iIntValue = this.k.containsKey(str3) ? ((Integer) this.k.get(str3)).intValue() : 0;
            int iIntValue2 = ((Integer) entry.getValue()).intValue();
            if (iIntValue != iIntValue2) {
                rb0 rb0Var = (rb0) treeMap.get(str3);
                rb0Var.getClass();
                b36 b36Var = (b36) map2.get(str2);
                b36Var.getClass();
                int i = b36Var.j;
                d36 d36VarA = c36.a(this.f, this.g, map);
                SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) rb0Var.a;
                if (spannableStringBuilder == null) {
                    spannableStringBuilder = new SpannableStringBuilder();
                    rb0Var.a = spannableStringBuilder;
                }
                SpannableStringBuilder spannableStringBuilder2 = spannableStringBuilder;
                if (d36VarA != null) {
                    c36.a(spannableStringBuilder2, iIntValue, iIntValue2, d36VarA, this.j, map, i);
                    if (TtmlNode.TAG_P.equals(this.a)) {
                        float f = d36VarA.s;
                        if (f != Float.MAX_VALUE) {
                            rb0Var.q = (f * (-90.0f)) / 100.0f;
                        }
                        Layout.Alignment alignment = d36VarA.o;
                        if (alignment != null) {
                            rb0Var.c = alignment;
                        }
                        Layout.Alignment alignment2 = d36VarA.p;
                        if (alignment2 != null) {
                            rb0Var.d = alignment2;
                        }
                    }
                }
            }
        }
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.m;
            if (i2 >= (arrayList == null ? 0 : arrayList.size())) {
                return;
            }
            a(i2).a(j, map, map2, str2, treeMap);
            i2++;
        }
    }
}
