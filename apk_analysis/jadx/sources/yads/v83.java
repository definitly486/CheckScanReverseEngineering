package yads;

import defpackage.u96;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.net.URLDecoder;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes6.dex */
public abstract class v83 {
    public static final Charset a = defpackage.ha1.c;

    public static final Charset a(Map map) {
        List listH;
        List listO0;
        List listH2;
        List listO1;
        if (map == null) {
            return a;
        }
        String str = (String) map.get("Content-Type");
        if (str != null) {
            Pattern patternCompile = Pattern.compile(";");
            patternCompile.getClass();
            Matcher matcher = patternCompile.matcher(str);
            if (matcher.find()) {
                ArrayList arrayList = new ArrayList(10);
                int iEnd = 0;
                do {
                    arrayList.add(str.subSequence(iEnd, matcher.start()).toString());
                    iEnd = matcher.end();
                } while (matcher.find());
                arrayList.add(str.subSequence(iEnd, str.length()).toString());
                listH = arrayList;
            } else {
                listH = u96.h(str.toString());
            }
            boolean zIsEmpty = listH.isEmpty();
            defpackage.kx2 kx2Var = defpackage.kx2.b;
            if (zIsEmpty) {
                listO0 = kx2Var;
                break;
            }
            ListIterator listIterator = listH.listIterator(listH.size());
            while (true) {
                if (!listIterator.hasPrevious()) {
                    listO0 = kx2Var;
                    break;
                }
                if (((String) listIterator.previous()).length() != 0) {
                    listO0 = defpackage.qn1.o0(listH, listIterator.nextIndex() + 1);
                    break;
                }
            }
            String[] strArr = (String[]) listO0.toArray(new String[0]);
            int length = strArr.length;
            for (int i = 1; i < length; i++) {
                String str2 = strArr[i];
                int length2 = str2.length() - 1;
                int i2 = 0;
                boolean z = false;
                while (i2 <= length2) {
                    boolean z2 = defpackage.aa4.f(str2.charAt(!z ? i2 : length2), 32) <= 0;
                    if (z) {
                        if (!z2) {
                            break;
                        }
                        length2--;
                    } else if (z2) {
                        i2++;
                    } else {
                        z = true;
                    }
                }
                String string = str2.subSequence(i2, length2 + 1).toString();
                Pattern patternCompile2 = Pattern.compile("=");
                patternCompile2.getClass();
                string.getClass();
                Matcher matcher2 = patternCompile2.matcher(string);
                if (matcher2.find()) {
                    ArrayList arrayList2 = new ArrayList(10);
                    int iEnd2 = 0;
                    do {
                        arrayList2.add(string.subSequence(iEnd2, matcher2.start()).toString());
                        iEnd2 = matcher2.end();
                    } while (matcher2.find());
                    arrayList2.add(string.subSequence(iEnd2, string.length()).toString());
                    listH2 = arrayList2;
                } else {
                    listH2 = u96.h(string.toString());
                }
                if (listH2.isEmpty()) {
                    listO1 = kx2Var;
                    break;
                }
                ListIterator listIterator2 = listH2.listIterator(listH2.size());
                while (true) {
                    if (!listIterator2.hasPrevious()) {
                        listO1 = kx2Var;
                        break;
                    }
                    if (((String) listIterator2.previous()).length() != 0) {
                        listO1 = defpackage.qn1.o0(listH2, listIterator2.nextIndex() + 1);
                        break;
                    }
                }
                String[] strArr2 = (String[]) listO1.toArray(new String[0]);
                if (strArr2.length == 2 && defpackage.aa4.e(strArr2[0], "charset")) {
                    return Charset.forName(strArr2[1]);
                }
            }
        }
        return a;
    }

    public static final String b(Map map, oa3 oa3Var) {
        if (map != null) {
            return (String) map.get(oa3Var.b);
        }
        return null;
    }

    public static int c(Map map, oa3 oa3Var) {
        String strB = b(map, oa3Var);
        int i = ya.b;
        if (strB == null) {
            return 0;
        }
        try {
            return Integer.parseInt(strB);
        } catch (NumberFormatException unused) {
            return 0;
        }
    }

    public static final ArrayList d(Map map, oa3 oa3Var) {
        List listH;
        Collection collectionO0;
        ArrayList arrayList = new ArrayList();
        String strB = b(map, oa3Var);
        if (strB != null && strB.length() != 0) {
            Pattern patternCompile = Pattern.compile(StringUtils.COMMA);
            patternCompile.getClass();
            Matcher matcher = patternCompile.matcher(strB);
            if (matcher.find()) {
                ArrayList arrayList2 = new ArrayList(10);
                int iEnd = 0;
                do {
                    arrayList2.add(strB.subSequence(iEnd, matcher.start()).toString());
                    iEnd = matcher.end();
                } while (matcher.find());
                arrayList2.add(strB.subSequence(iEnd, strB.length()).toString());
                listH = arrayList2;
            } else {
                listH = u96.h(strB.toString());
            }
            if (listH.isEmpty()) {
                collectionO0 = defpackage.kx2.b;
                break;
            }
            ListIterator listIterator = listH.listIterator(listH.size());
            while (true) {
                if (!listIterator.hasPrevious()) {
                    collectionO0 = defpackage.kx2.b;
                    break;
                }
                if (((String) listIterator.previous()).length() != 0) {
                    collectionO0 = defpackage.qn1.o0(listH, listIterator.nextIndex() + 1);
                    break;
                }
            }
            for (String str : (String[]) collectionO0.toArray(new String[0])) {
                try {
                    int length = str.length() - 1;
                    int i = 0;
                    boolean z = false;
                    while (i <= length) {
                        boolean z2 = defpackage.aa4.f(str.charAt(!z ? i : length), 32) <= 0;
                        if (z) {
                            if (!z2) {
                                break;
                            }
                            length--;
                        } else if (z2) {
                            i++;
                        } else {
                            z = true;
                        }
                    }
                    String strDecode = URLDecoder.decode(str.subSequence(i, length + 1).toString(), "UTF-8");
                    if (strDecode != null) {
                        arrayList.add(strDecode);
                    }
                } catch (Throwable unused) {
                }
            }
        }
        return arrayList;
    }

    public static boolean a(Map map, oa3 oa3Var) {
        String strB = b(map, oa3Var);
        if (strB == null) {
            return false;
        }
        return Boolean.parseBoolean(strB);
    }
}
