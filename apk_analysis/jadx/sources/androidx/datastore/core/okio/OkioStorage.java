package androidx.datastore.core.okio;

import androidx.datastore.core.InterProcessCoordinator;
import androidx.datastore.core.Storage;
import androidx.datastore.core.StorageConnection;
import defpackage.bm3;
import defpackage.cl4;
import defpackage.fh8;
import defpackage.gh4;
import defpackage.j46;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.w93;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class OkioStorage<T> implements Storage<T> {
    public static final Companion Companion = new Companion(null);
    private static final Set<String> activeFiles = new LinkedHashSet();
    private static final Synchronizer activeFilesLock = new Synchronizer();
    private final cl4 canonicalPath$delegate;
    private final bm3<j46, w93, InterProcessCoordinator> coordinatorProducer;
    private final w93 fileSystem;
    private final ll3<j46> producePath;
    private final OkioSerializer<T> serializer;

    /* JADX INFO: renamed from: androidx.datastore.core.okio.OkioStorage$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements bm3<j46, w93, InterProcessCoordinator> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        public AnonymousClass1() {
            super(2);
        }

        @Override // defpackage.bm3
        public final InterProcessCoordinator invoke(j46 j46Var, w93 w93Var) {
            j46Var.getClass();
            w93Var.getClass();
            return OkioStorageKt.createSingleProcessCoordinator(j46Var);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public OkioStorage(w93 w93Var, OkioSerializer<T> okioSerializer, bm3<? super j46, ? super w93, ? extends InterProcessCoordinator> bm3Var, ll3<j46> ll3Var) {
        w93Var.getClass();
        okioSerializer.getClass();
        bm3Var.getClass();
        ll3Var.getClass();
        this.fileSystem = w93Var;
        this.serializer = okioSerializer;
        this.coordinatorProducer = bm3Var;
        this.producePath = ll3Var;
        this.canonicalPath$delegate = new fh8(new OkioStorage$canonicalPath$2(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final j46 getCanonicalPath() {
        return (j46) this.canonicalPath$delegate.getValue();
    }

    @Override // androidx.datastore.core.Storage
    public StorageConnection<T> createConnection() {
        String strX = getCanonicalPath().b.x();
        synchronized (activeFilesLock) {
            Set<String> set = activeFiles;
            if (set.contains(strX)) {
                throw new IllegalStateException(("There are multiple DataStores active for the same file: " + strX + ". You should either maintain your DataStore as a singleton or confirm that there is no two DataStore's active on the same file (by confirming that the scope is cancelled).").toString());
            }
            set.add(strX);
        }
        return new OkioStorageConnection(this.fileSystem, getCanonicalPath(), this.serializer, this.coordinatorProducer.invoke(getCanonicalPath(), this.fileSystem), new AnonymousClass2(this));
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final Set<String> getActiveFiles$datastore_core_okio() {
            return OkioStorage.activeFiles;
        }

        public final Synchronizer getActiveFilesLock() {
            return OkioStorage.activeFilesLock;
        }

        private Companion() {
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.okio.OkioStorage$createConnection$2, reason: invalid class name */
    public static final class AnonymousClass2 extends gh4 implements ll3<j59> {
        final /* synthetic */ OkioStorage<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(OkioStorage<T> okioStorage) {
            super(0);
            this.this$0 = okioStorage;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            Companion companion = OkioStorage.Companion;
            Synchronizer activeFilesLock = companion.getActiveFilesLock();
            OkioStorage<T> okioStorage = this.this$0;
            synchronized (activeFilesLock) {
                companion.getActiveFiles$datastore_core_okio().remove(okioStorage.getCanonicalPath().b.x());
                j59 j59Var = j59.a;
            }
        }

        @Override // defpackage.ll3
        public /* bridge */ /* synthetic */ j59 invoke() {
            invoke2();
            return j59.a;
        }
    }

    public /* synthetic */ OkioStorage(w93 w93Var, OkioSerializer okioSerializer, bm3 bm3Var, ll3 ll3Var, int i, jh2 jh2Var) {
        this(w93Var, okioSerializer, (i & 4) != 0 ? AnonymousClass1.INSTANCE : bm3Var, ll3Var);
    }
}
