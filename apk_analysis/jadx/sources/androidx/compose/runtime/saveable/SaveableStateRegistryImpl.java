package androidx.compose.runtime.saveable;

import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import defpackage.fg;
import defpackage.j2;
import defpackage.ll3;
import defpackage.mx2;
import defpackage.nl3;
import defpackage.u96;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class SaveableStateRegistryImpl implements SaveableStateRegistry {
    private final nl3<Object, Boolean> canBeSaved;
    private final MutableScatterMap<String, List<Object>> restored;
    private MutableScatterMap<String, List<ll3<Object>>> valueProviders;

    public SaveableStateRegistryImpl(Map<String, ? extends List<? extends Object>> map, nl3<Object, Boolean> nl3Var) {
        this.canBeSaved = nl3Var;
        this.restored = (map == null || map.isEmpty()) ? null : SaveableStateRegistryKt.toMutableScatterMap(map);
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public boolean canBeSaved(Object obj) {
        return this.canBeSaved.invoke(obj).booleanValue();
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public Object consumeRestored(String str) {
        MutableScatterMap<String, List<Object>> mutableScatterMap;
        MutableScatterMap<String, List<Object>> mutableScatterMap2 = this.restored;
        List<Object> listRemove = mutableScatterMap2 != null ? mutableScatterMap2.remove(str) : null;
        List<Object> list = listRemove;
        if (list == null || list.isEmpty()) {
            return null;
        }
        if (listRemove.size() > 1 && (mutableScatterMap = this.restored) != null) {
            mutableScatterMap.put(str, listRemove.subList(1, listRemove.size()));
        }
        return listRemove.get(0);
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0094  */
    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public Map<String, List<Object>> performSave() {
        char c;
        long j;
        long j2;
        long j3;
        long[] jArr;
        int i;
        long[] jArr2;
        int i2;
        MutableScatterMap<String, List<Object>> mutableScatterMap = this.restored;
        if (mutableScatterMap == null && this.valueProviders == null) {
            return mx2.b;
        }
        int i3 = 0;
        int size = mutableScatterMap != null ? mutableScatterMap.getSize() : 0;
        MutableScatterMap<String, List<ll3<Object>>> mutableScatterMap2 = this.valueProviders;
        HashMap map = new HashMap(size + (mutableScatterMap2 != null ? mutableScatterMap2.getSize() : 0));
        MutableScatterMap<String, List<Object>> mutableScatterMap3 = this.restored;
        char c2 = 7;
        long j4 = -9187201950435737472L;
        int i4 = 8;
        if (mutableScatterMap3 != null) {
            Object[] objArr = mutableScatterMap3.keys;
            Object[] objArr2 = mutableScatterMap3.values;
            long[] jArr3 = mutableScatterMap3.metadata;
            int length = jArr3.length - 2;
            if (length >= 0) {
                int i5 = 0;
                j2 = 128;
                while (true) {
                    long j5 = jArr3[i5];
                    j3 = 255;
                    if ((((~j5) << c2) & j5 & j4) != j4) {
                        int i6 = 8 - ((~(i5 - length)) >>> 31);
                        int i7 = 0;
                        while (i7 < i6) {
                            if ((j5 & 255) < 128) {
                                int i8 = (i5 << 3) + i7;
                                map.put((String) objArr[i8], (List) objArr2[i8]);
                            }
                            j5 >>= 8;
                            i7++;
                            c2 = c2;
                            j4 = j4;
                        }
                        c = c2;
                        j = j4;
                        if (i6 != 8) {
                            break;
                        }
                    } else {
                        c = c2;
                        j = j4;
                    }
                    if (i5 == length) {
                        break;
                    }
                    i5++;
                    c2 = c;
                    j4 = j;
                }
            } else {
                c = 7;
                j = -9187201950435737472L;
                j2 = 128;
                j3 = 255;
            }
        } else {
            c = 7;
            j = -9187201950435737472L;
            j2 = 128;
            j3 = 255;
        }
        MutableScatterMap<String, List<ll3<Object>>> mutableScatterMap4 = this.valueProviders;
        if (mutableScatterMap4 != null) {
            Object[] objArr3 = mutableScatterMap4.keys;
            Object[] objArr4 = mutableScatterMap4.values;
            long[] jArr4 = mutableScatterMap4.metadata;
            int length2 = jArr4.length - 2;
            if (length2 >= 0) {
                int i9 = 0;
                while (true) {
                    long j6 = jArr4[i9];
                    if ((((~j6) << c) & j6 & j) != j) {
                        int i10 = 8 - ((~(i9 - length2)) >>> 31);
                        int i11 = i3;
                        while (i11 < i10) {
                            if ((j6 & j3) < j2) {
                                int i12 = (i9 << 3) + i11;
                                Object obj = objArr3[i12];
                                List list = (List) objArr4[i12];
                                String str = (String) obj;
                                i2 = i4;
                                if (list.size() == 1) {
                                    Object objInvoke = ((ll3) list.get(i3)).invoke();
                                    if (objInvoke != null) {
                                        if (!canBeSaved(objInvoke)) {
                                            j2.d(RememberSaveableKt.generateCannotBeSavedErrorMessage(objInvoke));
                                            return null;
                                        }
                                        map.put(str, u96.a(objInvoke));
                                    }
                                    jArr2 = jArr4;
                                } else {
                                    int size2 = list.size();
                                    ArrayList arrayList = new ArrayList(size2);
                                    while (i3 < size2) {
                                        long[] jArr5 = jArr4;
                                        Object objInvoke2 = ((ll3) list.get(i3)).invoke();
                                        if (objInvoke2 != null && !canBeSaved(objInvoke2)) {
                                            j2.d(RememberSaveableKt.generateCannotBeSavedErrorMessage(objInvoke2));
                                            return null;
                                        }
                                        arrayList.add(objInvoke2);
                                        i3++;
                                        jArr4 = jArr5;
                                    }
                                    jArr2 = jArr4;
                                    map.put(str, arrayList);
                                }
                            } else {
                                jArr2 = jArr4;
                                i2 = i4;
                            }
                            j6 >>= i2;
                            i11++;
                            i4 = i2;
                            jArr4 = jArr2;
                            i3 = 0;
                        }
                        jArr = jArr4;
                        i = i4;
                        if (i10 != i) {
                            break;
                        }
                    } else {
                        jArr = jArr4;
                        i = i4;
                    }
                    if (i9 == length2) {
                        break;
                    }
                    i9++;
                    i4 = i;
                    jArr4 = jArr;
                    i3 = 0;
                }
            }
        }
        return map;
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public SaveableStateRegistry.Entry registerProvider(final String str, final ll3<? extends Object> ll3Var) {
        if (SaveableStateRegistryKt.fastIsBlank(str)) {
            fg.c("Registered key is empty or blank");
            return null;
        }
        final MutableScatterMap<String, List<ll3<Object>>> mutableScatterMapMutableScatterMapOf = this.valueProviders;
        if (mutableScatterMapMutableScatterMapOf == null) {
            mutableScatterMapMutableScatterMapOf = ScatterMapKt.mutableScatterMapOf();
            this.valueProviders = mutableScatterMapMutableScatterMapOf;
        }
        List<ll3<Object>> arrayList = mutableScatterMapMutableScatterMapOf.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            mutableScatterMapMutableScatterMapOf.set(str, arrayList);
        }
        arrayList.add(ll3Var);
        return new SaveableStateRegistry.Entry() { // from class: androidx.compose.runtime.saveable.SaveableStateRegistryImpl.registerProvider.3
            @Override // androidx.compose.runtime.saveable.SaveableStateRegistry.Entry
            public void unregister() {
                List<ll3<Object>> listRemove = mutableScatterMapMutableScatterMapOf.remove(str);
                if (listRemove != null) {
                    listRemove.remove(ll3Var);
                }
                List<ll3<Object>> list = listRemove;
                if (list == null || list.isEmpty()) {
                    return;
                }
                mutableScatterMapMutableScatterMapOf.set(str, listRemove);
            }
        };
    }
}
