package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public enum df6 implements bf6<Object> {
    ALWAYS_TRUE { // from class: df6.a
        @Override // defpackage.bf6
        public final boolean apply(Object obj) {
            return true;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "Predicates.alwaysTrue()";
        }
    },
    ALWAYS_FALSE { // from class: df6.b
        @Override // defpackage.bf6
        public final boolean apply(Object obj) {
            return false;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "Predicates.alwaysFalse()";
        }
    },
    IS_NULL { // from class: df6.c
        @Override // defpackage.bf6
        public final boolean apply(Object obj) {
            return obj == null;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "Predicates.isNull()";
        }
    },
    NOT_NULL { // from class: df6.d
        @Override // defpackage.bf6
        public final boolean apply(Object obj) {
            return obj != null;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "Predicates.notNull()";
        }
    };

    df6() {
        throw null;
    }
}
