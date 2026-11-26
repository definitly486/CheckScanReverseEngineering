package defpackage;

import defpackage.jh5;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes3.dex */
public abstract class kh5<View extends jh5> {
    protected Set<View> mInRestoreState;
    protected xd9<View> mViewCommands;
    protected Map<View, Set<wd9<View>>> mViewStates;
    protected Set<View> mViews;

    public kh5() {
        xd9<View> xd9Var = new xd9<>();
        xd9Var.a = new ArrayList();
        xd9Var.b = new HashMap();
        this.mViewCommands = xd9Var;
        this.mViews = Collections.newSetFromMap(new WeakHashMap());
        this.mInRestoreState = Collections.newSetFromMap(new WeakHashMap());
        this.mViewStates = new WeakHashMap();
    }

    public void attachView(View view) {
        if (view == null) {
            fg.c("Mvp view must be not null");
            return;
        }
        if (this.mViews.add(view)) {
            this.mInRestoreState.add(view);
            Set<wd9<View>> set = this.mViewStates.get(view);
            if (set == null) {
                set = Collections.EMPTY_SET;
            }
            restoreState(view, set);
            this.mViewStates.remove(view);
            this.mInRestoreState.remove(view);
        }
    }

    public void destroyView(View view) {
        this.mViewStates.remove(view);
    }

    public void detachView(View view) {
        this.mViews.remove(view);
        this.mInRestoreState.remove(view);
        Set<wd9<View>> setNewSetFromMap = Collections.newSetFromMap(new WeakHashMap());
        setNewSetFromMap.addAll(this.mViewCommands.a);
        this.mViewStates.put(view, setNewSetFromMap);
    }

    public Set<View> getViews() {
        return this.mViews;
    }

    public Boolean hasNotView() {
        Set<View> set = this.mViews;
        return Boolean.valueOf(set == null || set.isEmpty());
    }

    public boolean isInRestoreState(View view) {
        return this.mInRestoreState.contains(view);
    }

    public void restoreState(View view, Set<wd9<View>> set) {
        if (this.mViewCommands.a.isEmpty()) {
            return;
        }
        xd9<View> xd9Var = this.mViewCommands;
        xd9Var.getClass();
        ArrayList arrayList = xd9Var.a;
        for (wd9<View> wd9Var : new ArrayList(arrayList)) {
            if (!set.contains(wd9Var)) {
                wd9Var.apply(view);
                xd9Var.a(wd9Var).a(arrayList, wd9Var);
            }
        }
    }
}
