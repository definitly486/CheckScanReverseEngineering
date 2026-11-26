package defpackage;

import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class y77 {
    public final CopyOnWriteArrayList<hw5> a = new CopyOnWriteArrayList<>();
    public final a b = new a();

    public static final class a extends ArrayList<View> {
        public a() {
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean add(Object obj) {
            View view = (View) obj;
            view.getClass();
            Iterator<hw5> it = y77.this.a.iterator();
            while (it.hasNext()) {
                it.next().a(view, true);
            }
            return super.add(view);
        }

        @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public final /* bridge */ boolean contains(Object obj) {
            if (obj instanceof View) {
                return super.contains((View) obj);
            }
            return false;
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
        public final /* bridge */ int indexOf(Object obj) {
            if (obj instanceof View) {
                return super.indexOf((View) obj);
            }
            return -1;
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
        public final /* bridge */ int lastIndexOf(Object obj) {
            if (obj instanceof View) {
                return super.lastIndexOf((View) obj);
            }
            return -1;
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
        public final Object remove(int i) {
            Object objRemove = super.remove(i);
            objRemove.getClass();
            View view = (View) objRemove;
            Iterator<hw5> it = y77.this.a.iterator();
            while (it.hasNext()) {
                it.next().a(view, false);
            }
            return view;
        }

        @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public final /* bridge */ boolean remove(Object obj) {
            if (obj instanceof View) {
                return super.remove((View) obj);
            }
            return false;
        }
    }
}
