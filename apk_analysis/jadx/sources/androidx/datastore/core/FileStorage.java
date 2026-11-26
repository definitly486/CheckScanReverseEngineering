package androidx.datastore.core;

import defpackage.gh4;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.nl3;
import java.io.File;
import java.io.IOException;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class FileStorage<T> implements Storage<T> {
    public static final Companion Companion = new Companion(null);
    private static final Set<String> activeFiles = new LinkedHashSet();
    private static final Object activeFilesLock = new Object();
    private final nl3<File, InterProcessCoordinator> coordinatorProducer;
    private final ll3<File> produceFile;
    private final Serializer<T> serializer;

    /* JADX INFO: renamed from: androidx.datastore.core.FileStorage$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements nl3<File, InterProcessCoordinator> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        public AnonymousClass1() {
            super(1);
        }

        @Override // defpackage.nl3
        public final InterProcessCoordinator invoke(File file) {
            file.getClass();
            return InterProcessCoordinator_jvmKt.createSingleProcessCoordinator(file);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public FileStorage(Serializer<T> serializer, nl3<? super File, ? extends InterProcessCoordinator> nl3Var, ll3<? extends File> ll3Var) {
        serializer.getClass();
        nl3Var.getClass();
        ll3Var.getClass();
        this.serializer = serializer;
        this.coordinatorProducer = nl3Var;
        this.produceFile = ll3Var;
    }

    @Override // androidx.datastore.core.Storage
    public StorageConnection<T> createConnection() throws IOException {
        File canonicalFile = this.produceFile.invoke().getCanonicalFile();
        synchronized (activeFilesLock) {
            String absolutePath = canonicalFile.getAbsolutePath();
            Set<String> set = activeFiles;
            if (set.contains(absolutePath)) {
                throw new IllegalStateException(("There are multiple DataStores active for the same file: " + absolutePath + ". You should either maintain your DataStore as a singleton or confirm that there is no two DataStore's active on the same file (by confirming that the scope is cancelled).").toString());
            }
            absolutePath.getClass();
            set.add(absolutePath);
        }
        return new FileStorageConnection(canonicalFile, this.serializer, this.coordinatorProducer.invoke(canonicalFile), new AnonymousClass2(canonicalFile));
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final Set<String> getActiveFiles$datastore_core_release() {
            return FileStorage.activeFiles;
        }

        public final Object getActiveFilesLock$datastore_core_release() {
            return FileStorage.activeFilesLock;
        }

        private Companion() {
        }
    }

    public /* synthetic */ FileStorage(Serializer serializer, nl3 nl3Var, ll3 ll3Var, int i, jh2 jh2Var) {
        this(serializer, (i & 2) != 0 ? AnonymousClass1.INSTANCE : nl3Var, ll3Var);
    }

    /* JADX INFO: renamed from: androidx.datastore.core.FileStorage$createConnection$2, reason: invalid class name */
    public static final class AnonymousClass2 extends gh4 implements ll3<j59> {
        final /* synthetic */ File $file;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(File file) {
            super(0);
            this.$file = file;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            Companion companion = FileStorage.Companion;
            Object activeFilesLock$datastore_core_release = companion.getActiveFilesLock$datastore_core_release();
            File file = this.$file;
            synchronized (activeFilesLock$datastore_core_release) {
                companion.getActiveFiles$datastore_core_release().remove(file.getAbsolutePath());
                j59 j59Var = j59.a;
            }
        }

        @Override // defpackage.ll3
        public /* bridge */ /* synthetic */ j59 invoke() {
            invoke2();
            return j59.a;
        }
    }
}
