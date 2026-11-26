package defpackage;

import androidx.tracing.Trace;
import java.io.EOFException;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public abstract class h36<T> {

    public static final class a<T> extends h36<T> {
        public final Method a;
        public final int b;
        public final i02<T, g37> c;

        public a(Method method, int i, i02<T, g37> i02Var) {
            this.a = method;
            this.b = i;
            this.c = i02Var;
        }

        @Override // defpackage.h36
        public final void a(i37 i37Var, T t) {
            int i = this.b;
            Method method = this.a;
            if (t == null) {
                throw kb9.j(method, i, "Body parameter value must not be null.", new Object[0]);
            }
            try {
                i37Var.k = this.c.convert(t);
            } catch (IOException e) {
                throw kb9.k(method, e, i, ch.c(t, "Unable to convert ", " to RequestBody"), new Object[0]);
            }
        }
    }

    public static final class b<T> extends h36<T> {
        public final String a;
        public final boolean b;

        public b(String str, boolean z) {
            Objects.requireNonNull(str, "name == null");
            this.a = str;
            this.b = z;
        }

        @Override // defpackage.h36
        public final void a(i37 i37Var, T t) {
            String string;
            if (t == null || (string = t.toString()) == null) {
                return;
            }
            i37Var.a(this.a, string, this.b);
        }
    }

    public static final class c<T> extends h36<Map<String, T>> {
        public final Method a;
        public final int b;
        public final boolean c;

        public c(Method method, int i, boolean z) {
            this.a = method;
            this.b = i;
            this.c = z;
        }

        @Override // defpackage.h36
        public final void a(i37 i37Var, Object obj) {
            Map map = (Map) obj;
            int i = this.b;
            Method method = this.a;
            if (map == null) {
                throw kb9.j(method, i, "Field map was null.", new Object[0]);
            }
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                if (str == null) {
                    throw kb9.j(method, i, "Field map contained null key.", new Object[0]);
                }
                Object value = entry.getValue();
                if (value == null) {
                    throw kb9.j(method, i, me0.c("Field map contained null value for key '", str, "'."), new Object[0]);
                }
                String string = value.toString();
                if (string == null) {
                    throw kb9.j(method, i, "Field map value '" + value + "' converted to null by " + cv0.d.class.getName() + " for key '" + str + "'.", new Object[0]);
                }
                i37Var.a(str, string, this.c);
            }
        }
    }

    public static final class d<T> extends h36<T> {
        public final String a;
        public final boolean b;

        public d(String str, boolean z) {
            Objects.requireNonNull(str, "name == null");
            this.a = str;
            this.b = z;
        }

        @Override // defpackage.h36
        public final void a(i37 i37Var, T t) {
            String string;
            if (t == null || (string = t.toString()) == null) {
                return;
            }
            i37Var.b(this.a, string, this.b);
        }
    }

    public static final class e<T> extends h36<Map<String, T>> {
        public final Method a;
        public final int b;
        public final boolean c;

        public e(Method method, int i, boolean z) {
            this.a = method;
            this.b = i;
            this.c = z;
        }

        @Override // defpackage.h36
        public final void a(i37 i37Var, Object obj) {
            Map map = (Map) obj;
            int i = this.b;
            Method method = this.a;
            if (map == null) {
                throw kb9.j(method, i, "Header map was null.", new Object[0]);
            }
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                if (str == null) {
                    throw kb9.j(method, i, "Header map contained null key.", new Object[0]);
                }
                Object value = entry.getValue();
                if (value == null) {
                    throw kb9.j(method, i, me0.c("Header map contained null value for key '", str, "'."), new Object[0]);
                }
                i37Var.b(str, value.toString(), this.c);
            }
        }
    }

    public static final class f extends h36<jv3> {
        public final Method a;
        public final int b;

        public f(int i, Method method) {
            this.a = method;
            this.b = i;
        }

        @Override // defpackage.h36
        public final void a(i37 i37Var, jv3 jv3Var) {
            jv3 jv3Var2 = jv3Var;
            if (jv3Var2 == null) {
                throw kb9.j(this.a, this.b, "Headers parameter must not be null.", new Object[0]);
            }
            jv3.a aVar = i37Var.f;
            aVar.getClass();
            int size = jv3Var2.size();
            for (int i = 0; i < size; i++) {
                aVar.c(jv3Var2.b(i), jv3Var2.g(i));
            }
        }
    }

    public static final class g<T> extends h36<T> {
        public final Method a;
        public final int b;
        public final jv3 c;
        public final i02<T, g37> d;

        public g(Method method, int i, jv3 jv3Var, i02<T, g37> i02Var) {
            this.a = method;
            this.b = i;
            this.c = jv3Var;
            this.d = i02Var;
        }

        @Override // defpackage.h36
        public final void a(i37 i37Var, T t) {
            if (t == null) {
                return;
            }
            try {
                i37Var.c(this.c, this.d.convert(t));
            } catch (IOException e) {
                throw kb9.j(this.a, this.b, ch.c(t, "Unable to convert ", " to RequestBody"), e);
            }
        }
    }

    public static final class h<T> extends h36<Map<String, T>> {
        public final Method a;
        public final int b;
        public final i02<T, g37> c;
        public final String d;

        public h(Method method, int i, i02<T, g37> i02Var, String str) {
            this.a = method;
            this.b = i;
            this.c = i02Var;
            this.d = str;
        }

        @Override // defpackage.h36
        public final void a(i37 i37Var, Object obj) {
            Map map = (Map) obj;
            int i = this.b;
            Method method = this.a;
            if (map == null) {
                throw kb9.j(method, i, "Part map was null.", new Object[0]);
            }
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                if (str == null) {
                    throw kb9.j(method, i, "Part map contained null key.", new Object[0]);
                }
                Object value = entry.getValue();
                if (value == null) {
                    throw kb9.j(method, i, me0.c("Part map contained null value for key '", str, "'."), new Object[0]);
                }
                i37Var.c(jv3.b.c("Content-Disposition", me0.c("form-data; name=\"", str, "\""), "Content-Transfer-Encoding", this.d), this.c.convert((T) value));
            }
        }
    }

    public static final class i<T> extends h36<T> {
        public final Method a;
        public final int b;
        public final String c;
        public final boolean d;

        public i(Method method, int i, String str, boolean z) {
            this.a = method;
            this.b = i;
            Objects.requireNonNull(str, "name == null");
            this.c = str;
            this.d = z;
        }

        @Override // defpackage.h36
        public final void a(i37 i37Var, T t) throws EOFException {
            String strQ0;
            String str = this.c;
            if (t == null) {
                throw kb9.j(this.a, this.b, me0.c("Path parameter \"", str, "\" value must not be null."), new Object[0]);
            }
            String string = t.toString();
            if (i37Var.c == null) {
                xp.g();
                return;
            }
            int length = string.length();
            int iCharCount = 0;
            while (true) {
                if (iCharCount >= length) {
                    strQ0 = string;
                    break;
                }
                int iCodePointAt = string.codePointAt(iCharCount);
                boolean z = this.d;
                int i = 47;
                int i2 = -1;
                int i3 = Trace.MAX_TRACE_LABEL_LENGTH;
                int i4 = 32;
                if (iCodePointAt < 32 || iCodePointAt >= 127 || " \"<>^`{}|\\?#".indexOf(iCodePointAt) != -1 || (!z && (iCodePointAt == 47 || iCodePointAt == 37))) {
                    bu0 bu0Var = new bu0();
                    bu0Var.H0(0, iCharCount, string);
                    bu0 bu0Var2 = null;
                    while (iCharCount < length) {
                        int iCodePointAt2 = string.codePointAt(iCharCount);
                        if (!z || (iCodePointAt2 != 9 && iCodePointAt2 != 10 && iCodePointAt2 != 12 && iCodePointAt2 != 13)) {
                            if (iCodePointAt2 < i4 || iCodePointAt2 >= i3 || " \"<>^`{}|\\?#".indexOf(iCodePointAt2) != i2 || (!z && (iCodePointAt2 == i || iCodePointAt2 == 37))) {
                                if (bu0Var2 == null) {
                                    bu0Var2 = new bu0();
                                }
                                bu0Var2.J0(iCodePointAt2);
                                long j = bu0Var2.c;
                                long j2 = 0;
                                while (j2 < j) {
                                    byte bQ = bu0Var2.Q(j2);
                                    bu0Var.A0(37);
                                    char[] cArr = i37.l;
                                    bu0Var.A0(cArr[((bQ & 255) >> 4) & 15]);
                                    bu0Var.A0(cArr[bQ & 15]);
                                    j2++;
                                    bu0Var2 = bu0Var2;
                                }
                                bu0Var2.p();
                            } else {
                                bu0Var.J0(iCodePointAt2);
                            }
                        }
                        iCharCount += Character.charCount(iCodePointAt2);
                        i = 47;
                        i2 = -1;
                        i3 = Trace.MAX_TRACE_LABEL_LENGTH;
                        i4 = 32;
                    }
                    strQ0 = bu0Var.q0();
                    break;
                }
                iCharCount += Character.charCount(iCodePointAt);
            }
            String strReplace = i37Var.c.replace("{" + str + "}", strQ0);
            if (i37.m.matcher(strReplace).matches()) {
                fg.c("@Path parameters shouldn't perform path traversal ('.' or '..'): ".concat(string));
            } else {
                i37Var.c = strReplace;
            }
        }
    }

    public static final class j<T> extends h36<T> {
        public final String a;
        public final boolean b;

        public j(String str, boolean z) {
            Objects.requireNonNull(str, "name == null");
            this.a = str;
            this.b = z;
        }

        @Override // defpackage.h36
        public final void a(i37 i37Var, T t) {
            String string;
            if (t == null || (string = t.toString()) == null) {
                return;
            }
            i37Var.d(this.a, string, this.b);
        }
    }

    public static final class k<T> extends h36<Map<String, T>> {
        public final Method a;
        public final int b;
        public final boolean c;

        public k(Method method, int i, boolean z) {
            this.a = method;
            this.b = i;
            this.c = z;
        }

        @Override // defpackage.h36
        public final void a(i37 i37Var, Object obj) {
            Map map = (Map) obj;
            int i = this.b;
            Method method = this.a;
            if (map == null) {
                throw kb9.j(method, i, "Query map was null", new Object[0]);
            }
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                if (str == null) {
                    throw kb9.j(method, i, "Query map contained null key.", new Object[0]);
                }
                Object value = entry.getValue();
                if (value == null) {
                    throw kb9.j(method, i, me0.c("Query map contained null value for key '", str, "'."), new Object[0]);
                }
                String string = value.toString();
                if (string == null) {
                    throw kb9.j(method, i, "Query map value '" + value + "' converted to null by " + cv0.d.class.getName() + " for key '" + str + "'.", new Object[0]);
                }
                i37Var.d(str, string, this.c);
            }
        }
    }

    public static final class l<T> extends h36<T> {
        public final boolean a;

        public l(boolean z) {
            this.a = z;
        }

        @Override // defpackage.h36
        public final void a(i37 i37Var, T t) {
            if (t == null) {
                return;
            }
            i37Var.d(t.toString(), null, this.a);
        }
    }

    public static final class m extends h36<lg5.c> {
        public static final m a = new m();

        @Override // defpackage.h36
        public final void a(i37 i37Var, lg5.c cVar) {
            lg5.c cVar2 = cVar;
            if (cVar2 != null) {
                i37Var.i.c.add(cVar2);
            }
        }
    }

    public static final class n extends h36<Object> {
        public final Method a;
        public final int b;

        public n(int i, Method method) {
            this.a = method;
            this.b = i;
        }

        @Override // defpackage.h36
        public final void a(i37 i37Var, Object obj) {
            if (obj != null) {
                i37Var.c = obj.toString();
            } else {
                throw kb9.j(this.a, this.b, "@Url parameter is null.", new Object[0]);
            }
        }
    }

    public static final class o<T> extends h36<T> {
        public final Class<T> a;

        public o(Class<T> cls) {
            this.a = cls;
        }

        @Override // defpackage.h36
        public final void a(i37 i37Var, T t) {
            i37Var.e.d(this.a, t);
        }
    }

    public abstract void a(i37 i37Var, T t);
}
