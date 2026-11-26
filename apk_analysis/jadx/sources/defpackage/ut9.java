package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;

/* JADX INFO: loaded from: classes2.dex */
public final class ut9 {
    public final Context a;
    public final fh8 b = new fh8(new a());

    public static final class a extends gh4 implements ll3<is9> {
        public a() {
            super(0);
        }

        @Override // defpackage.ll3
        public final is9 invoke() {
            Object aVar;
            Context context = ut9.this.a;
            try {
                PackageManager packageManager = context.getPackageManager();
                packageManager.getClass();
                String packageName = context.getPackageName();
                packageName.getClass();
                String str = xu9.a(packageManager, packageName).versionName;
                if (str == null) {
                    throw new IllegalArgumentException("Required value was null.");
                }
                aVar = new is9(str);
                if (aVar instanceof k57.a) {
                    aVar = null;
                }
                is9 is9Var = (is9) aVar;
                String str2 = is9Var != null ? is9Var.a : null;
                if (str2 != null) {
                    return new is9(str2);
                }
                return null;
            } catch (Throwable th) {
                aVar = new k57.a(th);
            }
        }
    }

    public ut9(Context context) {
        this.a = context;
    }
}
