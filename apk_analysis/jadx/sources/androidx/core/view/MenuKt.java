package androidx.core.view;

import android.view.Menu;
import android.view.MenuItem;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.j59;
import defpackage.nl3;
import defpackage.re4;
import defpackage.v93;
import defpackage.zo7;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class MenuKt {

    /* JADX INFO: renamed from: androidx.core.view.MenuKt$iterator$1, reason: invalid class name */
    public static final class AnonymousClass1 implements Iterator<MenuItem>, re4 {
        final /* synthetic */ Menu $this_iterator;
        private int index;

        public AnonymousClass1(Menu menu) {
            this.$this_iterator = menu;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.index < this.$this_iterator.size();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Iterator
        public MenuItem next() {
            Menu menu = this.$this_iterator;
            int i = this.index;
            this.index = i + 1;
            MenuItem item = menu.getItem(i);
            if (item != null) {
                return item;
            }
            v93.b();
            return null;
        }

        @Override // java.util.Iterator
        public void remove() {
            Menu menu = this.$this_iterator;
            int i = this.index - 1;
            this.index = i;
            MenuItem item = menu.getItem(i);
            if (item != null) {
                menu.removeItem(item.getItemId());
            } else {
                v93.b();
            }
        }
    }

    public static final boolean contains(Menu menu, MenuItem menuItem) {
        int size = menu.size();
        for (int i = 0; i < size; i++) {
            if (aa4.e(menu.getItem(i), menuItem)) {
                return true;
            }
        }
        return false;
    }

    public static final void forEach(Menu menu, nl3<? super MenuItem, j59> nl3Var) {
        int size = menu.size();
        for (int i = 0; i < size; i++) {
            nl3Var.invoke(menu.getItem(i));
        }
    }

    public static final void forEachIndexed(Menu menu, bm3<? super Integer, ? super MenuItem, j59> bm3Var) {
        int size = menu.size();
        for (int i = 0; i < size; i++) {
            bm3Var.invoke(Integer.valueOf(i), menu.getItem(i));
        }
    }

    public static final MenuItem get(Menu menu, int i) {
        return menu.getItem(i);
    }

    public static final zo7<MenuItem> getChildren(final Menu menu) {
        return new zo7<MenuItem>() { // from class: androidx.core.view.MenuKt$children$1
            @Override // defpackage.zo7
            public Iterator<MenuItem> iterator() {
                return MenuKt.iterator(menu);
            }
        };
    }

    public static final int getSize(Menu menu) {
        return menu.size();
    }

    public static final boolean isEmpty(Menu menu) {
        return menu.size() == 0;
    }

    public static final boolean isNotEmpty(Menu menu) {
        return menu.size() != 0;
    }

    public static final Iterator<MenuItem> iterator(Menu menu) {
        return new AnonymousClass1(menu);
    }

    public static final void minusAssign(Menu menu, MenuItem menuItem) {
        menu.removeItem(menuItem.getItemId());
    }

    public static final void removeItemAt(Menu menu, int i) {
        MenuItem item = menu.getItem(i);
        if (item != null) {
            menu.removeItem(item.getItemId());
        } else {
            v93.b();
        }
    }
}
