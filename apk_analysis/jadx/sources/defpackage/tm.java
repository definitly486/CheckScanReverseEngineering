package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public abstract class tm implements Cloneable {
    public ArrayList<a> b = null;

    public interface a {
        void onAnimationEnd();
    }

    @Override // 
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public tm clone() {
        try {
            tm tmVar = (tm) super.clone();
            ArrayList<a> arrayList = this.b;
            if (arrayList != null) {
                tmVar.b = new ArrayList<>();
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    tmVar.b.add(arrayList.get(i));
                }
            }
            return tmVar;
        } catch (CloneNotSupportedException unused) {
            xp.g();
            return null;
        }
    }
}
