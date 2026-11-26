package androidx.compose.foundation.layout;

import defpackage.ah;
import defpackage.cl4;
import defpackage.jh2;
import defpackage.ll3;

/* JADX INFO: loaded from: classes.dex */
final class LazyImpl implements cl4<Integer> {
    public static final Companion Companion = new Companion(null);
    public static final int UNINITIALIZED_VALUE = -1;
    private int _value = -1;
    private final String errorMessage;
    private final ll3<Integer> initializer;

    public LazyImpl(ll3<Integer> ll3Var, String str) {
        this.initializer = ll3Var;
        this.errorMessage = str;
    }

    public final String getErrorMessage() {
        return this.errorMessage;
    }

    public final ll3<Integer> getInitializer() {
        return this.initializer;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // defpackage.cl4
    public Integer getValue() {
        int iIntValue = this._value;
        if (iIntValue == -1) {
            iIntValue = this.initializer.invoke().intValue();
            this._value = iIntValue;
        }
        if (iIntValue != -1) {
            return Integer.valueOf(iIntValue);
        }
        ah.f(this.errorMessage);
        return null;
    }

    @Override // defpackage.cl4
    public boolean isInitialized() {
        return this._value != -1;
    }

    public String toString() {
        return isInitialized() ? String.valueOf(getValue().intValue()) : this.errorMessage;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }
}
