package androidx.core.util;

import defpackage.ve6;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public interface Predicate<T> {
    static <T> Predicate<T> isEqual(final Object obj) {
        return obj == null ? new ve6() : new Predicate() { // from class: we6
            @Override // androidx.core.util.Predicate
            public final boolean test(Object obj2) {
                return obj.equals(obj2);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ default boolean lambda$and$0(Predicate predicate, Object obj) {
        return test(obj) && predicate.test(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ default boolean lambda$negate$1(Object obj) {
        return !test(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ default boolean lambda$or$2(Predicate predicate, Object obj) {
        return test(obj) || predicate.test(obj);
    }

    static <T> Predicate<T> not(Predicate<? super T> predicate) {
        Objects.requireNonNull(predicate);
        return predicate.negate();
    }

    default Predicate<T> and(final Predicate<? super T> predicate) {
        Objects.requireNonNull(predicate);
        return new Predicate() { // from class: xe6
            @Override // androidx.core.util.Predicate
            public final boolean test(Object obj) {
                return this.a.lambda$and$0(predicate, obj);
            }
        };
    }

    default Predicate<T> negate() {
        return new Predicate() { // from class: ye6
            @Override // androidx.core.util.Predicate
            public final boolean test(Object obj) {
                return this.a.lambda$negate$1(obj);
            }
        };
    }

    default Predicate<T> or(final Predicate<? super T> predicate) {
        Objects.requireNonNull(predicate);
        return new Predicate() { // from class: ue6
            @Override // androidx.core.util.Predicate
            public final boolean test(Object obj) {
                return this.a.lambda$or$2(predicate, obj);
            }
        };
    }

    boolean test(T t);
}
