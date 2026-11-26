package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode.zzcu;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class i6b extends zzcu {
    public final transient Object[] e;

    public i6b(Object[] objArr) {
        this.e = objArr;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzcu
    public final c6b a() {
        return new c6b(this.e, 1);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzcu
    public final p5b b() {
        return new p5b(this, this.e);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzcu
    public final w5b d() {
        return new w5b(this, new c6b(this.e, 0));
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0003  */
    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzcu, java.util.Map
    public final Object get(Object obj) {
        Object obj2;
        if (obj == null) {
            obj2 = null;
        } else {
            Object[] objArr = this.e;
            Object obj3 = objArr[0];
            Objects.requireNonNull(obj3);
            if (obj3.equals(obj)) {
                obj2 = objArr[1];
                Objects.requireNonNull(obj2);
            } else {
                obj2 = null;
            }
        }
        if (obj2 == null) {
            return null;
        }
        return obj2;
    }

    @Override // java.util.Map
    public final int size() {
        return 1;
    }
}
