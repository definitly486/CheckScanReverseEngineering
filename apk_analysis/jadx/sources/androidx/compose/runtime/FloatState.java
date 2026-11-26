package androidx.compose.runtime;

/* JADX INFO: loaded from: classes2.dex */
public interface FloatState extends State<Float> {

    public static final class DefaultImpls {
        @Deprecated
        public static Float getValue(FloatState floatState) {
            return Float.valueOf(FloatState.access$getValue$jd(floatState));
        }
    }

    static /* synthetic */ float access$getValue$jd(FloatState floatState) {
        return super.getValue().floatValue();
    }

    float getFloatValue();

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.compose.runtime.State
    default Float getValue() {
        return Float.valueOf(getFloatValue());
    }
}
