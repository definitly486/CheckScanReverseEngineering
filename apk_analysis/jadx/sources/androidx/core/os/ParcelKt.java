package androidx.core.os;

import android.os.Parcel;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class ParcelKt {
    public static final <T> T use(Parcel parcel, nl3<? super Parcel, ? extends T> nl3Var) {
        T tInvoke = nl3Var.invoke(parcel);
        parcel.recycle();
        return tInvoke;
    }
}
