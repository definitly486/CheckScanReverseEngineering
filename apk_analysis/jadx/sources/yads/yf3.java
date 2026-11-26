package yads;

/* JADX INFO: loaded from: classes6.dex */
public abstract class yf3 {
    public final float a() {
        if (this instanceof xf3) {
            return (float) Math.ceil(((xf3) this).b);
        }
        if (this instanceof wf3) {
            return (float) Math.ceil(((wf3) this).a * 2.0f);
        }
        defpackage.me0.e();
        return 0.0f;
    }

    public final float b() {
        if (this instanceof xf3) {
            return (float) Math.ceil(((xf3) this).a);
        }
        if (this instanceof wf3) {
            return (float) Math.ceil(((wf3) this).a * 2.0f);
        }
        defpackage.me0.e();
        return 0.0f;
    }
}
