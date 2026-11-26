package defpackage;

import android.net.UrlQuerySanitizer;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.google.firebase.remoteconfig.internal.Personalization;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public final class wu6 {
    public static final wu6 a = new wu6();
    public static final fh8 b = nm4.b(b.f);
    public static final fh8 c = nm4.b(c.f);

    public static final class a {
        public final String a;
        public final String b;
        public final String c;
        public final String d;
        public final String e;
        public final String f;
        public final b36<Long, String> g;

        public a(String str, String str2, String str3, String str4, String str5, String str6, b36<Long, String> b36Var) {
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = str4;
            this.e = str5;
            this.f = str6;
            this.g = b36Var;
        }

        public final hv6 a() {
            b36<Long, String> b36Var = this.g;
            Long l = b36Var.b;
            Locale locale = Locale.US;
            locale.getClass();
            String str = this.a;
            String upperCase = str.toUpperCase(locale);
            upperCase.getClass();
            String strConcat = upperCase.concat(str.length() < 15 ? "00" : "");
            String str2 = this.b;
            StringBuilder sbD = ad2.d("t=", str, "&s=", str2, "&fn=");
            String str3 = this.c;
            String str4 = this.d;
            kv2.c(sbD, str3, "&i=", str4, "&fp=");
            String str5 = this.e;
            String str6 = this.f;
            return new hv6(strConcat, str4, str3, str5, str2, kh.c(sbD, str5, "&n=", str6), str6, 0, l.longValue() == -1 ? null : new gv6(l.longValue(), b36Var.c), 128, null);
        }

        public final Date b() {
            Object aVar;
            Object aVar2;
            wu6 wu6Var = wu6.a;
            String str = this.a;
            wu6Var.getClass();
            try {
                aVar = ((SimpleDateFormat) wu6.b.getValue()).parse(str);
            } catch (Throwable th) {
                aVar = new k57.a(th);
            }
            if (k57.a(aVar) != null) {
                try {
                    wu6.a.getClass();
                    aVar2 = ((SimpleDateFormat) wu6.c.getValue()).parse(str);
                } catch (Throwable th2) {
                    aVar2 = new k57.a(th2);
                }
                if (aVar2 instanceof k57.a) {
                    aVar2 = null;
                }
                aVar = (Date) aVar2;
            }
            return (Date) aVar;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.a.equals(aVar.a) && this.b.equals(aVar.b) && this.c.equals(aVar.c) && this.d.equals(aVar.d) && this.e.equals(aVar.e) && this.f.equals(aVar.f) && this.g.equals(aVar.g);
        }

        public final int hashCode() {
            return this.g.hashCode() + zg.b(zg.b(zg.b(zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31, this.d), 31, this.e), 31, this.f);
        }

        public final String toString() {
            StringBuilder sbD = ad2.d("ChequesQr(t=", this.a, ", s=", this.b, ", fn=");
            kv2.c(sbD, this.c, ", i=", this.d, ", fp=");
            kv2.c(sbD, this.e, ", n=", this.f, ", from=");
            sbD.append(this.g);
            sbD.append(")");
            return sbD.toString();
        }
    }

    public static final class b extends gh4 implements ll3<SimpleDateFormat> {
        public static final b f = new b(0);

        @Override // defpackage.ll3
        public final SimpleDateFormat invoke() {
            return new SimpleDateFormat("yyyyMMdd'T'HHmmss", Locale.getDefault());
        }
    }

    public static final class c extends gh4 implements ll3<SimpleDateFormat> {
        public static final c f = new c(0);

        @Override // defpackage.ll3
        public final SimpleDateFormat invoke() {
            return new SimpleDateFormat("yyyyMMdd'T'HHmm", Locale.getDefault());
        }
    }

    public static a a(String str, b36 b36Var) {
        String string;
        Character chJ0;
        str.getClass();
        LinkedHashMap linkedHashMapC = c(str);
        String str2 = (String) linkedHashMapC.get("t");
        if (str2 == null) {
            throw new IllegalStateException(str.concat(" has not proper format.Parameter 't' is missing").toString());
        }
        String str3 = (String) linkedHashMapC.get(CmcdData.STREAMING_FORMAT_SS);
        if (str3 == null) {
            throw new IllegalStateException(str.concat(" has not proper format.Parameter 's' is missing").toString());
        }
        String str4 = (String) linkedHashMapC.get("fn");
        if (str4 == null) {
            throw new IllegalStateException(str.concat(" has not proper format.Parameter 'fn' is missing").toString());
        }
        String str5 = (String) linkedHashMapC.get("i");
        if (str5 == null) {
            throw new IllegalStateException(str.concat(" has not proper format.Parameter 'i' is missing").toString());
        }
        String str6 = (String) linkedHashMapC.get(Personalization.ANALYTICS_ORIGIN_PERSONALIZATION);
        if (str6 == null) {
            throw new IllegalStateException(str.concat(" has not proper format.Parameter 'fp' is missing").toString());
        }
        String str7 = (String) linkedHashMapC.get("n");
        if (str7 == null || (chJ0 = ua8.j0(str7)) == null || (string = chJ0.toString()) == null) {
            string = "1";
        }
        return new a(str2, str3, str4, str5, str6, string, b36Var);
    }

    public static a b(wu6 wu6Var, String str) {
        b36 b36Var = new b36(-1L, new String());
        wu6Var.getClass();
        return a(str, b36Var);
    }

    public static LinkedHashMap c(String str) {
        UrlQuerySanitizer urlQuerySanitizer = new UrlQuerySanitizer();
        urlQuerySanitizer.setAllowUnregisteredParamaters(true);
        if (!ta8.E(str, '?')) {
            str = "?".concat(str);
        }
        urlQuerySanitizer.parseUrl(str);
        List<UrlQuerySanitizer.ParameterValuePair> parameterList = urlQuerySanitizer.getParameterList();
        parameterList.getClass();
        List<UrlQuerySanitizer.ParameterValuePair> list = parameterList;
        int iB = m05.b(kn1.q(list, 10));
        if (iB < 16) {
            iB = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(iB);
        for (UrlQuerySanitizer.ParameterValuePair parameterValuePair : list) {
            String str2 = parameterValuePair.mParameter;
            str2.getClass();
            Locale locale = Locale.US;
            locale.getClass();
            String lowerCase = str2.toLowerCase(locale);
            lowerCase.getClass();
            linkedHashMap.put(lowerCase, parameterValuePair.mValue);
        }
        return linkedHashMap;
    }
}
