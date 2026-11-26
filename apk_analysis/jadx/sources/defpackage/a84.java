package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public final class a84 implements cr<int[]> {
    @Override // defpackage.cr
    public final int a(int[] iArr) {
        return iArr.length;
    }

    @Override // defpackage.cr
    public final int b() {
        return 4;
    }

    @Override // defpackage.cr
    public final String getTag() {
        return "IntegerArrayPool";
    }

    @Override // defpackage.cr
    public final int[] newArray(int i) {
        return new int[i];
    }
}
