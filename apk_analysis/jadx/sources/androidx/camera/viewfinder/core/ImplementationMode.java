package androidx.camera.viewfinder.core;

import defpackage.fg;
import defpackage.g03;
import defpackage.h03;
import defpackage.jh;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public enum ImplementationMode {
    EXTERNAL(0),
    EMBEDDED(1);

    private final int id;
    private static final /* synthetic */ g03 $ENTRIES = h03.a(values());
    public static final Companion Companion = new Companion(null);

    ImplementationMode(int i) {
        this.id = i;
    }

    public static final ImplementationMode fromId(int i) {
        return Companion.fromId(i);
    }

    public static g03<ImplementationMode> getEntries() {
        return $ENTRIES;
    }

    public final int getId() {
        return this.id;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final ImplementationMode fromId(int i) {
            for (ImplementationMode implementationMode : ImplementationMode.values()) {
                if (implementationMode.id == i) {
                    return implementationMode;
                }
            }
            fg.c(jh.b(i, "Unknown implementation mode id "));
            return null;
        }

        private Companion() {
        }
    }
}
