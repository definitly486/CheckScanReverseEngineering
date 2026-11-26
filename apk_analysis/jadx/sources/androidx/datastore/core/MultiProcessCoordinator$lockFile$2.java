package androidx.datastore.core;

import defpackage.gh4;
import defpackage.ll3;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class MultiProcessCoordinator$lockFile$2 extends gh4 implements ll3<File> {
    final /* synthetic */ MultiProcessCoordinator this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MultiProcessCoordinator$lockFile$2(MultiProcessCoordinator multiProcessCoordinator) {
        super(0);
        this.this$0 = multiProcessCoordinator;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // defpackage.ll3
    public final File invoke() throws IOException {
        MultiProcessCoordinator multiProcessCoordinator = this.this$0;
        File fileFileWithSuffix = multiProcessCoordinator.fileWithSuffix(multiProcessCoordinator.LOCK_SUFFIX);
        this.this$0.createIfNotExists(fileFileWithSuffix);
        return fileFileWithSuffix;
    }
}
