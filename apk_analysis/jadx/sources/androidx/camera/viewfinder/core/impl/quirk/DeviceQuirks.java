package androidx.camera.viewfinder.core.impl.quirk;

import defpackage.aa4;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class DeviceQuirks {
    public static final DeviceQuirks INSTANCE = new DeviceQuirks();
    private static final Quirks QUIRKS = new Quirks(DeviceQuirksLoader.loadQuirks());

    private DeviceQuirks() {
    }

    public final <T extends Quirk> boolean contains() {
        List list = QUIRKS.quirks;
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
        Iterator it = QUIRKS.quirks.iterator();
        if (!it.hasNext()) {
            aa4.i();
            throw null;
        }
        ((Quirk) it.next()).getClass();
        aa4.i();
        throw null;
    }

    public final void reload() {
        QUIRKS.reset(DeviceQuirksLoader.loadQuirks());
    }
}
