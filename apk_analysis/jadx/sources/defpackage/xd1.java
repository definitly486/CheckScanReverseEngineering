package defpackage;

import android.content.Context;
import com.warefly.checkscan.CheckScanApplication;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public final class xd1 {
    public final cf1 a;
    public final jf6 b;
    public final z68 c = px.a(new g89.b(kx2.b));
    public final hi0<j59> d = hi0.i(j59.a);
    public final fh8 e = nm4.b(b.f);

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class a {
        private static final /* synthetic */ a[] $VALUES;
        public static final a AcceptedButAlreadyReported;
        public static final a Error;
        public static final a Success;

        static {
            a aVar = new a("Success", 0);
            Success = aVar;
            a aVar2 = new a("AcceptedButAlreadyReported", 1);
            AcceptedButAlreadyReported = aVar2;
            a aVar3 = new a("Error", 2);
            Error = aVar3;
            $VALUES = new a[]{aVar, aVar2, aVar3};
        }

        public a() {
            throw null;
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) $VALUES.clone();
        }
    }

    public static final class b extends gh4 implements ll3<hi0<Object>> {
        public static final b f = new b(0);

        @Override // defpackage.ll3
        public final hi0<Object> invoke() {
            return new hi0<>();
        }
    }

    public xd1(cf1 cf1Var, jf6 jf6Var) {
        this.a = cf1Var;
        this.b = jf6Var;
    }

    public static String a() {
        Context context = CheckScanApplication.c;
        Locale locale = CheckScanApplication.a.a().getResources().getConfiguration().getLocales().get(0);
        locale.getClass();
        return cg.d(locale.getLanguage(), "_", locale.getCountry());
    }

    public final hi0<Object> b() {
        Object value = this.e.getValue();
        value.getClass();
        return (hi0) value;
    }
}
