package defpackage;

import java.util.Comparator;

/* JADX INFO: loaded from: classes4.dex */
public abstract class mp1 {
    public static final a a = new a();
    public static final b b = new b(-1);
    public static final b c = new b(1);

    public class a extends mp1 {
        public static mp1 g(int i) {
            if (i < 0) {
                return mp1.b;
            }
            return i > 0 ? mp1.c : mp1.a;
        }

        @Override // defpackage.mp1
        public final mp1 a(int i, int i2) {
            return g(Integer.compare(i, i2));
        }

        @Override // defpackage.mp1
        public final mp1 b(long j, long j2) {
            return g(Long.compare(j, j2));
        }

        @Override // defpackage.mp1
        public final <T> mp1 c(T t, T t2, Comparator<T> comparator) {
            return g(comparator.compare(t, t2));
        }

        @Override // defpackage.mp1
        public final mp1 d(boolean z, boolean z2) {
            return g(Boolean.compare(z, z2));
        }

        @Override // defpackage.mp1
        public final mp1 e(boolean z, boolean z2) {
            return g(Boolean.compare(z2, z));
        }

        @Override // defpackage.mp1
        public final int f() {
            return 0;
        }
    }

    public static final class b extends mp1 {
        public final int d;

        public b(int i) {
            this.d = i;
        }

        @Override // defpackage.mp1
        public final mp1 a(int i, int i2) {
            return this;
        }

        @Override // defpackage.mp1
        public final mp1 b(long j, long j2) {
            return this;
        }

        @Override // defpackage.mp1
        public final <T> mp1 c(T t, T t2, Comparator<T> comparator) {
            return this;
        }

        @Override // defpackage.mp1
        public final mp1 d(boolean z, boolean z2) {
            return this;
        }

        @Override // defpackage.mp1
        public final mp1 e(boolean z, boolean z2) {
            return this;
        }

        @Override // defpackage.mp1
        public final int f() {
            return this.d;
        }
    }

    public abstract mp1 a(int i, int i2);

    public abstract mp1 b(long j, long j2);

    public abstract <T> mp1 c(T t, T t2, Comparator<T> comparator);

    public abstract mp1 d(boolean z, boolean z2);

    public abstract mp1 e(boolean z, boolean z2);

    public abstract int f();
}
