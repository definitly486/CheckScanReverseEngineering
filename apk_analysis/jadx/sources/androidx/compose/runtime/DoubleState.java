package androidx.compose.runtime;

/* JADX INFO: loaded from: classes2.dex */
public interface DoubleState extends State<Double> {

    public static final class DefaultImpls {
        @Deprecated
        public static Double getValue(DoubleState doubleState) {
            return Double.valueOf(DoubleState.access$getValue$jd(doubleState));
        }
    }

    static /* synthetic */ double access$getValue$jd(DoubleState doubleState) {
        return super.getValue().doubleValue();
    }

    double getDoubleValue();

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.compose.runtime.State
    default Double getValue() {
        return Double.valueOf(getDoubleValue());
    }
}
