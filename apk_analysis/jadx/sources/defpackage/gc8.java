package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class gc8 extends zs7<Integer> implements y68<Integer> {
    @Override // defpackage.y68
    public final Integer getValue() {
        Integer numValueOf;
        synchronized (this) {
            Object[] objArr = this.i;
            objArr.getClass();
            numValueOf = Integer.valueOf(((Number) objArr[((int) ((this.j + ((long) ((int) ((q() + ((long) this.l)) - this.j)))) - 1)) & (objArr.length - 1)]).intValue());
        }
        return numValueOf;
    }

    public final void x(int i) {
        synchronized (this) {
            Object[] objArr = this.i;
            objArr.getClass();
            e(Integer.valueOf(((Number) objArr[((int) ((this.j + ((long) ((int) ((q() + ((long) this.l)) - this.j)))) - 1)) & (objArr.length - 1)]).intValue() + i));
        }
    }
}
