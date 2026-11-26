package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class th0 extends uh0 {
    public final boolean a;

    public th0(boolean z) {
        sh0 sh0Var = sh0.DEBUG_ERROR_INDICATOR;
        this.a = z;
    }

    @Override // yads.uh0
    public final boolean a(uh0 uh0Var) {
        if (!(uh0Var instanceof th0)) {
            return false;
        }
        sh0 sh0Var = sh0.DEBUG_ERROR_INDICATOR;
        return true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof th0)) {
            return false;
        }
        sh0 sh0Var = sh0.DEBUG_ERROR_INDICATOR;
        return this.a == ((th0) obj).a;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.a) + ((sh0.DEBUG_ERROR_INDICATOR.hashCode() - 1222345866) * 31);
    }

    public final String toString() {
        return "Switch(text=Debug Error Indicator, switchType=" + sh0.DEBUG_ERROR_INDICATOR + ", initialState=" + this.a + ")";
    }
}
