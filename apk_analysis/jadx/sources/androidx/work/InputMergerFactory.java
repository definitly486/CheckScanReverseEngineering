package androidx.work;

/* JADX INFO: loaded from: classes3.dex */
public abstract class InputMergerFactory {
    public abstract InputMerger createInputMerger(String str);

    public final InputMerger createInputMergerWithDefaultFallback(String str) {
        str.getClass();
        InputMerger inputMergerCreateInputMerger = createInputMerger(str);
        return inputMergerCreateInputMerger == null ? InputMergerKt.fromClassName(str) : inputMergerCreateInputMerger;
    }
}
