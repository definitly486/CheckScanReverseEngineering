package androidx.compose.runtime;

/* JADX INFO: loaded from: classes2.dex */
public final class MovableContentState {
    public static final int $stable = 0;
    private final SlotStorage slotStorage;

    public MovableContentState(SlotStorage slotStorage) {
        this.slotStorage = slotStorage;
    }

    public final void dispose$runtime() {
        this.slotStorage.dispose();
    }

    public final SlotStorage getSlotStorage$runtime() {
        return this.slotStorage;
    }
}
