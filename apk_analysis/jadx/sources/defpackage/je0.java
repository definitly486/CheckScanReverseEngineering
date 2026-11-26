package defpackage;

import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes5.dex */
public final class je0 extends gh4 implements ll3<Double> {
    public final /* synthetic */ he0 f;
    public final /* synthetic */ String g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public je0(he0 he0Var, String str) {
        super(0);
        this.f = he0Var;
        this.g = str;
    }

    @Override // defpackage.ll3
    public final Double invoke() {
        double dLongBitsToDouble;
        String str = this.g;
        SharedPreferences sharedPreferences = this.f.a;
        try {
            dLongBitsToDouble = Double.longBitsToDouble(sharedPreferences.getLong(str, Double.doubleToRawLongBits(0.0d)));
        } catch (ClassCastException unused) {
            dLongBitsToDouble = sharedPreferences.getFloat(str, 0.0f);
        }
        return Double.valueOf(dLongBitsToDouble);
    }
}
