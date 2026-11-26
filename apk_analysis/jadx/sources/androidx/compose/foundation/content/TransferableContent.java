package androidx.compose.foundation.content;

import androidx.compose.ui.platform.ClipEntry;
import androidx.compose.ui.platform.ClipMetadata;
import defpackage.jh2;
import defpackage.qz0;

/* JADX INFO: loaded from: classes.dex */
public final class TransferableContent {
    public static final int $stable = 8;
    private final ClipEntry clipEntry;
    private final ClipMetadata clipMetadata;
    private final PlatformTransferableContent platformTransferableContent;
    private final int source;

    public /* synthetic */ TransferableContent(ClipEntry clipEntry, ClipMetadata clipMetadata, int i, PlatformTransferableContent platformTransferableContent, int i2, jh2 jh2Var) {
        this(clipEntry, clipMetadata, i, (i2 & 8) != 0 ? null : platformTransferableContent, null);
    }

    public final ClipEntry getClipEntry() {
        return this.clipEntry;
    }

    public final ClipMetadata getClipMetadata() {
        return this.clipMetadata;
    }

    public final PlatformTransferableContent getPlatformTransferableContent() {
        return this.platformTransferableContent;
    }

    /* JADX INFO: renamed from: getSource-kB6V9T0, reason: not valid java name */
    public final int m1384getSourcekB6V9T0() {
        return this.source;
    }

    public static final class Source {
        private final int value;
        public static final Companion Companion = new Companion(null);
        private static final int Keyboard = m1386constructorimpl(0);
        private static final int DragAndDrop = m1386constructorimpl(1);
        private static final int Clipboard = m1386constructorimpl(2);

        private /* synthetic */ Source(int i) {
            this.value = i;
        }

        /* JADX INFO: renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ Source m1385boximpl(int i) {
            return new Source(i);
        }

        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        public static int m1386constructorimpl(int i) {
            return i;
        }

        /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
        public static boolean m1387equalsimpl(int i, Object obj) {
            return (obj instanceof Source) && i == ((Source) obj).m1391unboximpl();
        }

        /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m1388equalsimpl0(int i, int i2) {
            return i == i2;
        }

        /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
        public static int m1389hashCodeimpl(int i) {
            return Integer.hashCode(i);
        }

        /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
        public static String m1390toStringimpl(int i) {
            if (m1388equalsimpl0(i, Keyboard)) {
                return "Source.Keyboard";
            }
            if (m1388equalsimpl0(i, DragAndDrop)) {
                return "Source.DragAndDrop";
            }
            return m1388equalsimpl0(i, Clipboard) ? "Source.Clipboard" : qz0.d("Invalid (", i, ')');
        }

        public boolean equals(Object obj) {
            return m1387equalsimpl(this.value, obj);
        }

        public int hashCode() {
            return m1389hashCodeimpl(this.value);
        }

        public String toString() {
            return m1390toStringimpl(this.value);
        }

        /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
        public final /* synthetic */ int m1391unboximpl() {
            return this.value;
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            /* JADX INFO: renamed from: getClipboard-kB6V9T0, reason: not valid java name */
            public final int m1392getClipboardkB6V9T0() {
                return Source.Clipboard;
            }

            /* JADX INFO: renamed from: getDragAndDrop-kB6V9T0, reason: not valid java name */
            public final int m1393getDragAndDropkB6V9T0() {
                return Source.DragAndDrop;
            }

            /* JADX INFO: renamed from: getKeyboard-kB6V9T0, reason: not valid java name */
            public final int m1394getKeyboardkB6V9T0() {
                return Source.Keyboard;
            }

            private Companion() {
            }
        }
    }

    private TransferableContent(ClipEntry clipEntry, ClipMetadata clipMetadata, int i, PlatformTransferableContent platformTransferableContent) {
        this.clipEntry = clipEntry;
        this.clipMetadata = clipMetadata;
        this.source = i;
        this.platformTransferableContent = platformTransferableContent;
    }

    public /* synthetic */ TransferableContent(ClipEntry clipEntry, ClipMetadata clipMetadata, int i, PlatformTransferableContent platformTransferableContent, jh2 jh2Var) {
        this(clipEntry, clipMetadata, i, platformTransferableContent);
    }
}
