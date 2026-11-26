package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode.zzeh;
import com.google.android.gms.internal.mlkit_vision_barcode.zzrc;
import com.google.android.gms.internal.mlkit_vision_barcode.zzxk;
import com.google.android.gms.internal.mlkit_vision_barcode.zzxn;

/* JADX INFO: loaded from: classes4.dex */
public final class khc implements zzeh {
    public final /* synthetic */ zzrc a;
    public final /* synthetic */ float b;
    public final /* synthetic */ zzxn c;
    public final /* synthetic */ float d;
    public final /* synthetic */ zzxk e;

    public khc(zzxk zzxkVar, zzrc zzrcVar, float f, zzxn zzxnVar, float f2) {
        this.a = zzrcVar;
        this.b = f;
        this.c = zzxnVar;
        this.d = f2;
        this.e = zzxkVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzeh
    public final void zza(Throwable th) {
        zzxk.r.w("AutoZoom", "Unable to set zoom to " + this.d, th);
        this.e.b.set(false);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzeh
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        Float f = (Float) obj;
        if (f.floatValue() >= 1.0f) {
            zzxk zzxkVar = this.e;
            float fFloatValue = f.floatValue();
            synchronized (zzxkVar.c) {
                zzxkVar.j = fFloatValue;
                zzxkVar.c(false);
            }
            this.e.b(this.a, this.b, f.floatValue(), this.c);
        }
        this.e.b.set(false);
    }
}
