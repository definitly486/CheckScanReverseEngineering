package defpackage;

import android.os.Build;

/* JADX INFO: loaded from: classes5.dex */
public final class fi extends gh4 implements nl3<b36<? extends String, ? extends String>, fm2> {
    public final /* synthetic */ boolean f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fi(boolean z) {
        super(1);
        this.f = z;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0035  */
    /* JADX WARN: Code duplicated, block: B:22:0x0045  */
    /* JADX WARN: Code duplicated, block: B:7:0x0020  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.nl3
    public final fm2 invoke(b36<? extends String, ? extends String> b36Var) {
        Object obj;
        Object obj2;
        b36<? extends String, ? extends String> b36Var2 = b36Var;
        b36Var2.getClass();
        String strValueOf = String.valueOf(Build.VERSION.SDK_INT);
        Object obj3 = b36Var2.b;
        String str = (String) obj3;
        boolean z = this.f;
        if (z) {
            str.getClass();
            if (ta8.M(str)) {
                obj = null;
            } else {
                obj = obj3;
            }
        } else {
            obj = null;
        }
        String str2 = (String) obj;
        if (str2 == null) {
            str2 = "Gurl, I am Huawei. xoxo";
        }
        String str3 = str2;
        if (z) {
            obj2 = null;
        } else {
            str.getClass();
            if (ta8.M(str)) {
                obj2 = null;
            } else {
                obj2 = obj3;
            }
        }
        String str4 = (String) obj2;
        if (z) {
            str.getClass();
            if (ta8.M(str)) {
                obj3 = null;
            }
        } else {
            obj3 = null;
        }
        return new fm2("2.14.5.79", "Android", strValueOf, str3, str4, (String) obj3, (String) b36Var2.c);
    }
}
