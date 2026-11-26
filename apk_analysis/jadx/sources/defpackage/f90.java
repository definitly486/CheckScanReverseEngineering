package defpackage;

import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.inappmessaging.internal.DisplayCallbacksImpl;
import com.warefly.checkscan.presentation.bankCardOptions.presenter.BankCardOptionsPresenter;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import yads.bw4;
import yads.iw4;
import yads.tt3;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class f90 implements ze6, xl3, mq5, tt3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ f90(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 1:
                return (la4) ((nl3) obj2).invoke(obj);
            case 2:
            default:
                return ((lz5) obj2).invoke(obj);
            case 3:
                return DisplayCallbacksImpl.lambda$maybeToTask$10((TaskCompletionSource) obj2, (Throwable) obj);
            case 4:
                return (c18) ((c54) obj2).invoke(obj);
        }
    }

    @Override // defpackage.mq5
    public Object c() {
        Constructor constructor = (Constructor) this.c;
        try {
            return constructor.newInstance(null);
        } catch (IllegalAccessException e) {
            b17.a aVar = b17.a;
            mg.e("Unexpected IllegalAccessException occurred (Gson 2.14.0). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers.", e);
            return null;
        } catch (InstantiationException e2) {
            throw new RuntimeException("Failed to invoke constructor '" + b17.b(constructor) + "' with no args", e2);
        } catch (InvocationTargetException e3) {
            mg.e("Failed to invoke constructor '" + b17.b(constructor) + "' with no args", e3.getCause());
            return null;
        }
    }

    @Override // yads.tt3
    public void invoke(Object obj) {
        ((iw4) obj).a(((bw4) this.c).f);
    }

    @Override // defpackage.ze6
    public boolean test(Object obj) {
        return BankCardOptionsPresenter.showBankCardOptionsInfo$lambda$2((BankCardOptionsPresenter.c) this.c, obj);
    }
}
