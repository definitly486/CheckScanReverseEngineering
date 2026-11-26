package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public abstract class uf4 implements Cloneable {
    public float b;

    public static class a extends uf4 {
        public final float c;

        public a(float f, float f2) {
            this.b = f;
            this.c = f2;
        }

        @Override // defpackage.uf4
        public final Object clone() {
            return new a(this.b, this.c);
        }

        @Override // defpackage.uf4
        /* JADX INFO: renamed from: e */
        public final a clone() {
            return new a(this.b, this.c);
        }

        @Override // defpackage.uf4
        public final Float h() {
            return Float.valueOf(this.c);
        }
    }

    @Override // 
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public abstract a clone();

    public abstract Float h();
}
