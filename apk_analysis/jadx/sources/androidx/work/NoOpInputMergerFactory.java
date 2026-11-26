package androidx.work;

/* JADX INFO: loaded from: classes3.dex */
public final class NoOpInputMergerFactory extends InputMergerFactory {
    public static final NoOpInputMergerFactory INSTANCE = new NoOpInputMergerFactory();

    private NoOpInputMergerFactory() {
    }

    @Override // androidx.work.InputMergerFactory
    public /* bridge */ /* synthetic */ InputMerger createInputMerger(String str) {
        return (InputMerger) m9499createInputMerger(str);
    }

    /* JADX INFO: renamed from: createInputMerger, reason: collision with other method in class */
    public Void m9499createInputMerger(String str) {
        str.getClass();
        return null;
    }
}
