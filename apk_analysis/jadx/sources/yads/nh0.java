package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class nh0 extends uh0 {
    public nh0() {
        mh0 mh0Var = mh0.TEST_MODE;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof nh0)) {
            return false;
        }
        mh0 mh0Var = mh0.TEST_MODE;
        return true;
    }

    public final int hashCode() {
        return mh0.TEST_MODE.hashCode() - 120198036;
    }

    public final String toString() {
        return "Button(text=Enable Test mode, actionType=" + mh0.TEST_MODE + ")";
    }
}
