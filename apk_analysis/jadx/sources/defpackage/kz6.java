package defpackage;

import android.view.View;

/* JADX INFO: loaded from: classes3.dex */
public final class kz6<T extends View> implements oe9<T> {
    public final T b;

    /* JADX WARN: Multi-variable type inference failed */
    public kz6(View view) {
        this.b = view;
    }

    @Override // defpackage.oe9
    public final boolean d() {
        return true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof kz6) && aa4.e(this.b, ((kz6) obj).b);
    }

    @Override // defpackage.oe9
    public final T getView() {
        return this.b;
    }

    public final int hashCode() {
        return Boolean.hashCode(true) + (this.b.hashCode() * 31);
    }

    public final String toString() {
        return "RealViewSizeResolver(view=" + this.b + ", subtractPadding=true)";
    }
}
