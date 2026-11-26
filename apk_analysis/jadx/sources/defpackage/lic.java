package defpackage;

import com.google.android.gms.internal.mlkit_vision_common.zzr;

/* JADX INFO: loaded from: classes4.dex */
public final class lic extends zzr {
    public static final /* synthetic */ int g = 0;
    public final transient Object[] e;
    public final transient int f;

    static {
        new lic(new Object[0], 0);
    }

    public lic(Object[] objArr, int i) {
        this.e = objArr;
        this.f = i;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_common.zzr
    public final vhc a() {
        return new vhc(this.e, 1, this.f);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_common.zzr
    public final kgc b() {
        return new kgc(this, this.e, this.f);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_common.zzr
    public final chc d() {
        return new chc(this, new vhc(this.e, 0, this.f));
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0003  */
    @Override // com.google.android.gms.internal.mlkit_vision_common.zzr, java.util.Map
    public final Object get(Object obj) {
        Object obj2;
        if (obj != null && this.f == 1) {
            Object[] objArr = this.e;
            Object obj3 = objArr[0];
            obj3.getClass();
            if (obj3.equals(obj)) {
                obj2 = objArr[1];
                obj2.getClass();
            } else {
                obj2 = null;
            }
        } else {
            obj2 = null;
        }
        if (obj2 == null) {
            return null;
        }
        return obj2;
    }

    @Override // java.util.Map
    public final int size() {
        return this.f;
    }
}
