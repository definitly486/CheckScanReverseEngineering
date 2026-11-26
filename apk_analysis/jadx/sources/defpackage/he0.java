package defpackage;

import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes5.dex */
public class he0 {
    public final SharedPreferences a;

    public static final class a<T> {
        public final nl3<T, j59> a;
        public final ll3<T> b;
        public volatile T c;

        /* JADX WARN: Multi-variable type inference failed */
        public a(nl3<? super T, j59> nl3Var, ll3<? extends T> ll3Var) {
            this.a = nl3Var;
            this.b = ll3Var;
        }

        public final T a(Object obj, ze4<?> ze4Var) {
            T tInvoke;
            obj.getClass();
            ze4Var.getClass();
            T t = this.c;
            if (t != null) {
                return t;
            }
            synchronized (this) {
                tInvoke = this.c;
                if (tInvoke == null) {
                    tInvoke = this.b.invoke();
                    this.c = tInvoke;
                }
            }
            return tInvoke;
        }

        public final void b(Object obj, ze4<?> ze4Var, T t) {
            obj.getClass();
            ze4Var.getClass();
            this.c = t;
            this.a.invoke(t);
        }
    }

    public static final class b extends gh4 implements nl3<Boolean, j59> {
        public final /* synthetic */ String g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String str) {
            super(1);
            this.g = str;
        }

        @Override // defpackage.nl3
        public final j59 invoke(Boolean bool) {
            he0.this.a.edit().putBoolean(this.g, bool.booleanValue()).apply();
            return j59.a;
        }
    }

    public static final class c extends gh4 implements ll3<Boolean> {
        public final /* synthetic */ String g;
        public final /* synthetic */ boolean h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(String str, boolean z) {
            super(0);
            this.g = str;
            this.h = z;
        }

        @Override // defpackage.ll3
        public final Boolean invoke() {
            return Boolean.valueOf(he0.this.a.getBoolean(this.g, this.h));
        }
    }

    public static final class d extends gh4 implements nl3<Integer, j59> {
        public final /* synthetic */ String g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(String str) {
            super(1);
            this.g = str;
        }

        @Override // defpackage.nl3
        public final j59 invoke(Integer num) {
            he0.this.a.edit().putInt(this.g, num.intValue()).apply();
            return j59.a;
        }
    }

    public static final class e extends gh4 implements ll3<Integer> {
        public final /* synthetic */ String g;
        public final /* synthetic */ int h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(String str, int i) {
            super(0);
            this.g = str;
            this.h = i;
        }

        @Override // defpackage.ll3
        public final Integer invoke() {
            return Integer.valueOf(he0.this.a.getInt(this.g, this.h));
        }
    }

    public static final class f extends gh4 implements nl3<Long, j59> {
        public final /* synthetic */ String g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(String str) {
            super(1);
            this.g = str;
        }

        @Override // defpackage.nl3
        public final j59 invoke(Long l) {
            he0.this.a.edit().putLong(this.g, l.longValue()).apply();
            return j59.a;
        }
    }

    public static final class g extends gh4 implements ll3<Long> {
        public final /* synthetic */ String g;
        public final /* synthetic */ long h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(String str, long j) {
            super(0);
            this.g = str;
            this.h = j;
        }

        @Override // defpackage.ll3
        public final Long invoke() {
            return Long.valueOf(he0.this.a.getLong(this.g, this.h));
        }
    }

    public static final class h extends gh4 implements nl3<String, j59> {
        public final /* synthetic */ String g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(String str) {
            super(1);
            this.g = str;
        }

        @Override // defpackage.nl3
        public final j59 invoke(String str) {
            String str2 = str;
            str2.getClass();
            he0.this.a.edit().putString(this.g, str2).apply();
            return j59.a;
        }
    }

    public static final class i extends gh4 implements ll3<String> {
        public final /* synthetic */ String g;
        public final /* synthetic */ String h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(String str, String str2) {
            super(0);
            this.g = str;
            this.h = str2;
        }

        @Override // defpackage.ll3
        public final String invoke() {
            SharedPreferences sharedPreferences = he0.this.a;
            String str = this.g;
            String str2 = this.h;
            String string = sharedPreferences.getString(str, str2);
            return string == null ? str2 : string;
        }
    }

    public he0(SharedPreferences sharedPreferences) {
        this.a = sharedPreferences;
    }

    public final a<Boolean> m1(String str, boolean z) {
        return new a<>(new b(str), new c(str, z));
    }

    public final a n1(int i2, String str) {
        return new a(new d(str), new e(str, i2));
    }

    public final a o1(long j, String str) {
        return new a(new f(str), new g(str, j));
    }

    public final a<String> p1(String str, String str2) {
        return new a<>(new h(str), new i(str, str2));
    }
}
