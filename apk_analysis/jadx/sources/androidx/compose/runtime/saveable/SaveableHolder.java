package androidx.compose.runtime.saveable;

import androidx.compose.runtime.RememberObserver;
import defpackage.aa4;
import defpackage.fg;
import defpackage.h8;
import defpackage.ll3;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
final class SaveableHolder<T> implements SaverScope, RememberObserver {
    private SaveableStateRegistry.Entry entry;
    private Object[] inputs;
    private String key;
    private SaveableStateRegistry registry;
    private Saver<T, Object> saver;
    private T value;
    private final ll3<Object> valueProvider = new ll3() { // from class: androidx.compose.runtime.saveable.b
        @Override // defpackage.ll3
        public final Object invoke() {
            return SaveableHolder.valueProvider$lambda$0(this.b);
        }
    };

    public SaveableHolder(Saver<T, Object> saver, SaveableStateRegistry saveableStateRegistry, String str, T t, Object[] objArr) {
        this.saver = saver;
        this.registry = saveableStateRegistry;
        this.key = str;
        this.value = t;
        this.inputs = objArr;
    }

    private final void register() {
        SaveableStateRegistry saveableStateRegistry = this.registry;
        if (this.entry != null) {
            h8.f(this.entry, "entry(", ") is not null");
        } else if (saveableStateRegistry != null) {
            RememberSaveableKt.requireCanBeSaved(saveableStateRegistry, this.valueProvider.invoke());
            this.entry = saveableStateRegistry.registerProvider(this.key, this.valueProvider);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object valueProvider$lambda$0(SaveableHolder saveableHolder) {
        Saver<T, Object> saver = saveableHolder.saver;
        T t = saveableHolder.value;
        if (t != null) {
            return saver.save(saveableHolder, t);
        }
        fg.c("Value should be initialized");
        return null;
    }

    @Override // androidx.compose.runtime.saveable.SaverScope
    public boolean canBeSaved(Object obj) {
        SaveableStateRegistry saveableStateRegistry = this.registry;
        return saveableStateRegistry == null || saveableStateRegistry.canBeSaved(obj);
    }

    public final T getValueIfInputsDidntChange(Object[] objArr) {
        if (Arrays.equals(objArr, this.inputs)) {
            return this.value;
        }
        return null;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onAbandoned() {
        SaveableStateRegistry.Entry entry = this.entry;
        if (entry != null) {
            entry.unregister();
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onForgotten() {
        SaveableStateRegistry.Entry entry = this.entry;
        if (entry != null) {
            entry.unregister();
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onRemembered() {
        register();
    }

    public final void update(Saver<T, Object> saver, SaveableStateRegistry saveableStateRegistry, String str, T t, Object[] objArr) {
        boolean z;
        boolean z2 = true;
        if (this.registry != saveableStateRegistry) {
            this.registry = saveableStateRegistry;
            z = true;
        } else {
            z = false;
        }
        if (aa4.e(this.key, str)) {
            z2 = z;
        } else {
            this.key = str;
        }
        this.saver = saver;
        this.value = t;
        this.inputs = objArr;
        SaveableStateRegistry.Entry entry = this.entry;
        if (entry == null || !z2) {
            return;
        }
        if (entry != null) {
            entry.unregister();
        }
        this.entry = null;
        register();
    }
}
