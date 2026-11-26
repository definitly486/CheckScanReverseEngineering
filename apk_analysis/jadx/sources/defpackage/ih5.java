package defpackage;

import defpackage.jh5;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ih5<View extends jh5> {
    private boolean mFirstLaunch = true;
    private Class<? extends ih5> mPresenterClass;
    private String mTag;
    private kh5<View> mViewState;
    private View mViewStateAsView;
    private Set<View> mViews;

    /* JADX WARN: Multi-variable type inference failed */
    public ih5() {
        pe9 pe9Var = (pe9) se5.a.get(getClass());
        jh5 jh5Var = (jh5) (pe9Var == null ? null : pe9Var.a());
        this.mViewStateAsView = jh5Var;
        this.mViewState = (kh5) jh5Var;
        this.mViews = Collections.newSetFromMap(new WeakHashMap());
    }

    public void attachView(View view) {
        kh5<View> kh5Var = this.mViewState;
        if (kh5Var != null) {
            kh5Var.attachView(view);
        } else {
            this.mViews.add(view);
        }
        if (this.mFirstLaunch) {
            this.mFirstLaunch = false;
            onFirstViewAttach();
        }
    }

    public void destroyView(View view) {
        kh5<View> kh5Var = this.mViewState;
        if (kh5Var != null) {
            kh5Var.destroyView(view);
        }
    }

    public void detachView(View view) {
        kh5<View> kh5Var = this.mViewState;
        if (kh5Var != null) {
            kh5Var.detachView(view);
        } else {
            this.mViews.remove(view);
        }
    }

    public Set<View> getAttachedViews() {
        kh5<View> kh5Var = this.mViewState;
        return kh5Var != null ? kh5Var.getViews() : this.mViews;
    }

    public Class<? extends ih5> getPresenterClass() {
        return this.mPresenterClass;
    }

    public String getTag() {
        return this.mTag;
    }

    public View getViewState() {
        return this.mViewStateAsView;
    }

    public boolean isInRestoreState(View view) {
        kh5<View> kh5Var = this.mViewState;
        if (kh5Var != null) {
            return kh5Var.isInRestoreState(view);
        }
        return false;
    }

    public void onDestroy() {
    }

    public void onFirstViewAttach() {
    }

    public void setPresenterClass(Class<? extends ih5> cls) {
        this.mPresenterClass = cls;
    }

    public void setTag(String str) {
        this.mTag = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setViewState(kh5<View> kh5Var) {
        this.mViewStateAsView = (View) kh5Var;
        this.mViewState = kh5Var;
    }
}
