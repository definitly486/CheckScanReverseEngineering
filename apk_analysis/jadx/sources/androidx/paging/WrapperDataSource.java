package androidx.paging;

import androidx.arch.core.util.Function;
import defpackage.a32;
import defpackage.ah;
import defpackage.e02;
import defpackage.j59;
import defpackage.r57;
import java.util.IdentityHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class WrapperDataSource<Key, ValueFrom, ValueTo> extends DataSource<Key, ValueTo> {
    private final IdentityHashMap<ValueTo, Key> keyMap;
    private final Function<List<ValueFrom>, List<ValueTo>> listFunction;
    private final DataSource<Key, ValueFrom> source;

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DataSource.KeyType.values().length];
            try {
                iArr[DataSource.KeyType.ITEM_KEYED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WrapperDataSource(DataSource<Key, ValueFrom> dataSource, Function<List<ValueFrom>, List<ValueTo>> function) {
        super(dataSource.getType$paging_common());
        dataSource.getClass();
        function.getClass();
        this.source = dataSource;
        this.listFunction = function;
        this.keyMap = WhenMappings.$EnumSwitchMapping$0[dataSource.getType$paging_common().ordinal()] == 1 ? new IdentityHashMap<>() : null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    public static <Key, ValueFrom, ValueTo> Object load$suspendImpl(WrapperDataSource<Key, ValueFrom, ValueTo> wrapperDataSource, DataSource.Params<Key> params, e02<? super DataSource.BaseResult<ValueTo>> e02Var) {
        WrapperDataSource$load$1 wrapperDataSource$load$1;
        WrapperDataSource wrapperDataSource2;
        if (e02Var instanceof WrapperDataSource$load$1) {
            wrapperDataSource$load$1 = (WrapperDataSource$load$1) e02Var;
            int i = wrapperDataSource$load$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                wrapperDataSource$load$1.label = i - Integer.MIN_VALUE;
            } else {
                wrapperDataSource$load$1 = new WrapperDataSource$load$1(wrapperDataSource, e02Var);
            }
        } else {
            wrapperDataSource$load$1 = new WrapperDataSource$load$1(wrapperDataSource, e02Var);
        }
        Object objLoad$paging_common = wrapperDataSource$load$1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = wrapperDataSource$load$1.label;
        if (i2 == 0) {
            r57.b(objLoad$paging_common);
            DataSource<Key, ValueFrom> dataSource = ((WrapperDataSource) wrapperDataSource).source;
            wrapperDataSource$load$1.L$0 = wrapperDataSource;
            wrapperDataSource$load$1.label = 1;
            objLoad$paging_common = dataSource.load$paging_common(params, wrapperDataSource$load$1);
            if (objLoad$paging_common == a32Var) {
                wrapperDataSource2 = wrapperDataSource;
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            boolean z = (WrapperDataSource<Key, ValueFrom, ValueTo>) ((WrapperDataSource) wrapperDataSource$load$1.L$0);
            r57.b(objLoad$paging_common);
            wrapperDataSource2 = z;
        }
        wrapperDataSource2 = wrapperDataSource;
        DataSource.BaseResult baseResult = (DataSource.BaseResult) objLoad$paging_common;
        DataSource.BaseResult baseResultConvert$paging_common = DataSource.BaseResult.Companion.convert$paging_common(baseResult, wrapperDataSource2.listFunction);
        wrapperDataSource2.stashKeysIfNeeded(baseResult.data, baseResultConvert$paging_common.data);
        return baseResultConvert$paging_common;
    }

    @Override // androidx.paging.DataSource
    public void addInvalidatedCallback(DataSource.InvalidatedCallback invalidatedCallback) {
        invalidatedCallback.getClass();
        this.source.addInvalidatedCallback(invalidatedCallback);
    }

    @Override // androidx.paging.DataSource
    public Key getKeyInternal$paging_common(ValueTo valueto) {
        Key key;
        valueto.getClass();
        IdentityHashMap<ValueTo, Key> identityHashMap = this.keyMap;
        if (identityHashMap == null) {
            ah.f("Cannot get key by item in non-item keyed DataSource");
            return null;
        }
        synchronized (identityHashMap) {
            key = this.keyMap.get(valueto);
            key.getClass();
        }
        return key;
    }

    @Override // androidx.paging.DataSource
    public void invalidate() {
        this.source.invalidate();
    }

    @Override // androidx.paging.DataSource
    public boolean isInvalid() {
        return this.source.isInvalid();
    }

    @Override // androidx.paging.DataSource
    public Object load$paging_common(DataSource.Params<Key> params, e02<? super DataSource.BaseResult<ValueTo>> e02Var) {
        return load$suspendImpl(this, params, e02Var);
    }

    @Override // androidx.paging.DataSource
    public void removeInvalidatedCallback(DataSource.InvalidatedCallback invalidatedCallback) {
        invalidatedCallback.getClass();
        this.source.removeInvalidatedCallback(invalidatedCallback);
    }

    public final void stashKeysIfNeeded(List<? extends ValueFrom> list, List<? extends ValueTo> list2) {
        list.getClass();
        list2.getClass();
        IdentityHashMap<ValueTo, Key> identityHashMap = this.keyMap;
        if (identityHashMap != null) {
            synchronized (identityHashMap) {
                try {
                    int size = list2.size();
                    for (int i = 0; i < size; i++) {
                        IdentityHashMap<ValueTo, Key> identityHashMap2 = this.keyMap;
                        ValueTo valueto = list2.get(i);
                        DataSource<Key, ValueFrom> dataSource = this.source;
                        dataSource.getClass();
                        identityHashMap2.put(valueto, (Key) ((ItemKeyedDataSource) dataSource).getKey(list.get(i)));
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
