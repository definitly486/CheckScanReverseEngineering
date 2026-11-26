package androidx.work;

/* JADX INFO: loaded from: classes3.dex */
public final class InputMergerKt {
    private static final String TAG;

    static {
        String strTagWithPrefix = Logger.tagWithPrefix("InputMerger");
        strTagWithPrefix.getClass();
        TAG = strTagWithPrefix;
    }

    public static final InputMerger fromClassName(String str) {
        str.getClass();
        try {
            Object objNewInstance = Class.forName(str).getDeclaredConstructor(null).newInstance(null);
            objNewInstance.getClass();
            return (InputMerger) objNewInstance;
        } catch (Exception e) {
            Logger.get().error(TAG, "Trouble instantiating ".concat(str), e);
            return null;
        }
    }
}
