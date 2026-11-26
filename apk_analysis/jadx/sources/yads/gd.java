package yads;

import defpackage.j59;

/* JADX INFO: loaded from: classes6.dex */
public final class gd {
    public static final Object b = new Object();
    public final zu3 a;

    public gd(zu3 zu3Var) {
        this.a = zu3Var;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0017 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:12:0x0019 A[Catch: all -> 0x0015, TryCatch #0 {all -> 0x0015, blocks: (B:6:0x0009, B:8:0x000d, B:18:0x002a, B:20:0x002e, B:26:0x0045, B:27:0x004e, B:22:0x0038, B:24:0x003c, B:12:0x0019, B:15:0x001f), top: B:32:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:13:0x001c  */
    /* JADX WARN: Code duplicated, block: B:15:0x001f A[Catch: all -> 0x0015, TryCatch #0 {all -> 0x0015, blocks: (B:6:0x0009, B:8:0x000d, B:18:0x002a, B:20:0x002e, B:26:0x0045, B:27:0x004e, B:22:0x0038, B:24:0x003c, B:12:0x0019, B:15:0x001f), top: B:32:0x0009 }] */
    public final void a(id idVar, id idVar2, String str) {
        String str2;
        synchronized (b) {
            if (idVar != null) {
                try {
                    if (idVar.b) {
                        ((av3) this.a).a("google_advertising_id_key", (String) null);
                    } else {
                        if (idVar != null) {
                            str2 = idVar.a;
                        } else {
                            str2 = null;
                        }
                        if (str2 != null) {
                            ((av3) this.a).a("google_advertising_id_key", str2);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            } else {
                if (idVar != null) {
                    str2 = idVar.a;
                } else {
                    str2 = null;
                }
                if (str2 != null) {
                    ((av3) this.a).a("google_advertising_id_key", str2);
                }
            }
            if (idVar2 == null || !idVar2.b) {
                String str3 = idVar2 != null ? idVar2.a : null;
                if (str3 != null) {
                    ((av3) this.a).a("huawei_advertising_id_key", str3);
                }
            } else {
                ((av3) this.a).a("huawei_advertising_id_key", (String) null);
            }
            if (str != null) {
                ((av3) this.a).a("app_set_advertising_id_key", str);
            }
            j59 j59Var = j59.a;
        }
    }
}
