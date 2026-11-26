package androidx.compose.animation.core;

import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableIntObjectMap;
import androidx.compose.animation.core.KeyframeBaseEntity;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public abstract class KeyframesSpecBaseConfig<T, E extends KeyframeBaseEntity<T>> {
    public static final int $stable = 8;
    private int delayMillis;
    private int durationMillis;
    private final MutableIntObjectMap<E> keyframes;

    private KeyframesSpecBaseConfig() {
        this.durationMillis = 300;
        this.keyframes = IntObjectMapKt.mutableIntObjectMapOf();
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public E at(T t, int i) {
        E e = (E) createEntityFor$animation_core(t);
        this.keyframes.set(i, e);
        return e;
    }

    public E atFraction(T t, float f) {
        return (E) at(t, Math.round(this.durationMillis * f));
    }

    public abstract E createEntityFor$animation_core(T t);

    public final int getDelayMillis() {
        return this.delayMillis;
    }

    public final int getDurationMillis() {
        return this.durationMillis;
    }

    public final MutableIntObjectMap<E> getKeyframes$animation_core() {
        return this.keyframes;
    }

    public final void setDelayMillis(int i) {
        this.delayMillis = i;
    }

    public final void setDurationMillis(int i) {
        this.durationMillis = i;
    }

    public final E using(E e, Easing easing) {
        e.setEasing$animation_core(easing);
        return e;
    }

    public /* synthetic */ KeyframesSpecBaseConfig(jh2 jh2Var) {
        this();
    }
}
