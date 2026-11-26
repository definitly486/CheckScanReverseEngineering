package defpackage;

import com.google.android.gms.internal.common.zzw;
import java.io.IOException;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class ydc implements Iterable {
    public final /* synthetic */ CharSequence b;
    public final /* synthetic */ zzw c;

    public ydc(zzw zzwVar, CharSequence charSequence) {
        this.b = charSequence;
        this.c = zzwVar;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        zzw zzwVar = this.c;
        return new ndc(zzwVar, this.b, zzwVar.c.a);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        try {
            ndc ndcVar = (ndc) iterator();
            if (ndcVar.hasNext()) {
                Object next = ndcVar.next();
                Objects.requireNonNull(next);
                sb.append(next instanceof CharSequence ? (CharSequence) next : next.toString());
                while (ndcVar.hasNext()) {
                    sb.append((CharSequence) ", ");
                    Object next2 = ndcVar.next();
                    Objects.requireNonNull(next2);
                    sb.append(next2 instanceof CharSequence ? (CharSequence) next2 : next2.toString());
                }
            }
            sb.append(']');
            return sb.toString();
        } catch (IOException e) {
            xg.d(e);
            return null;
        }
    }
}
