package androidx.camera.viewfinder.core.impl.quirk;

import defpackage.aa4;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class Quirks {
    private final List<Quirk> quirks;

    public Quirks(List<? extends Quirk> list) {
        list.getClass();
        this.quirks = new ArrayList(list);
    }

    public final <T extends Quirk> boolean contains() {
        List list = this.quirks;
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        Iterator it = list.iterator();
        if (!it.hasNext()) {
            return false;
        }
        aa4.i();
        throw null;
    }

    public final <T extends Quirk> T get() {
        Iterator it = this.quirks.iterator();
        if (!it.hasNext()) {
            aa4.i();
            throw null;
        }
        ((Quirk) it.next()).getClass();
        aa4.i();
        throw null;
    }

    public final void reset(List<? extends Quirk> list) {
        list.getClass();
        this.quirks.clear();
        this.quirks.addAll(list);
    }
}
