package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class vr implements Iterable<Float>, re4 {
    public final /* synthetic */ float[] b;

    public vr(float[] fArr) {
        this.b = fArr;
    }

    @Override // java.lang.Iterable
    public final Iterator<Float> iterator() {
        return new hr(this.b);
    }
}
