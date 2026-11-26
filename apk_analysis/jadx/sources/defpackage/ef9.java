package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ef9 {

    public static final class a extends ef9 {
        public static final a a = new a();
    }

    public static final class b extends ef9 {
        public final ArrayList a;

        public b(ArrayList arrayList) {
            this.a = arrayList;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b) && this.a.equals(((b) obj).a);
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        public final String toString() {
            return "Sent(values=" + this.a + ')';
        }
    }
}
