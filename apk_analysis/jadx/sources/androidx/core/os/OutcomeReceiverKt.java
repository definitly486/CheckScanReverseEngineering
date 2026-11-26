package androidx.core.os;

import android.os.OutcomeReceiver;
import defpackage.e02;

/* JADX INFO: loaded from: classes3.dex */
public final class OutcomeReceiverKt {
    public static final <R, E extends Throwable> OutcomeReceiver asOutcomeReceiver(e02<? super R> e02Var) {
        return new ContinuationOutcomeReceiver(e02Var);
    }
}
