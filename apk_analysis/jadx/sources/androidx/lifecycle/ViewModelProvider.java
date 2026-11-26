package androidx.lifecycle;

import android.app.Application;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.ViewModelInitializer;
import androidx.lifecycle.viewmodel.internal.DefaultViewModelProviderFactory;
import androidx.lifecycle.viewmodel.internal.JvmViewModelProviders;
import androidx.lifecycle.viewmodel.internal.ViewModelProviderImpl;
import androidx.lifecycle.viewmodel.internal.ViewModelProviders;
import defpackage.d31;
import defpackage.fg;
import defpackage.jh2;
import defpackage.ln;
import defpackage.mg;
import defpackage.n1;
import defpackage.ne4;
import defpackage.x07;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public class ViewModelProvider {
    public static final Companion Companion = new Companion(null);
    public static final CreationExtras.Key<String> VIEW_MODEL_KEY;
    private final ViewModelProviderImpl impl;

    public static class OnRequeryFactory {
        public void onRequery(ViewModel viewModel) {
            viewModel.getClass();
        }
    }

    static {
        CreationExtras.Companion companion = CreationExtras.Companion;
        VIEW_MODEL_KEY = new CreationExtras.Key<String>() { // from class: androidx.lifecycle.ViewModelProvider$special$$inlined$Key$1
        };
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ViewModelProvider(ViewModelStoreOwner viewModelStoreOwner) {
        viewModelStoreOwner.getClass();
        ViewModelStore viewModelStore = viewModelStoreOwner.getViewModelStore();
        ViewModelProviders viewModelProviders = ViewModelProviders.INSTANCE;
        this(viewModelStore, viewModelProviders.getDefaultFactory$lifecycle_viewmodel(viewModelStoreOwner), viewModelProviders.getDefaultCreationExtras$lifecycle_viewmodel(viewModelStoreOwner));
    }

    public static final ViewModelProvider create(ViewModelStore viewModelStore, Factory factory, CreationExtras creationExtras) {
        return Companion.create(viewModelStore, factory, creationExtras);
    }

    public <T extends ViewModel> T get(String str, Class<T> cls) {
        str.getClass();
        cls.getClass();
        return (T) this.impl.getViewModel$lifecycle_viewmodel(x07.a(cls), str);
    }

    public static class AndroidViewModelFactory extends NewInstanceFactory {
        public static final CreationExtras.Key<Application> APPLICATION_KEY;
        public static final Companion Companion = new Companion(null);
        private static AndroidViewModelFactory _instance;
        private final Application application;

        static {
            CreationExtras.Companion companion = CreationExtras.Companion;
            APPLICATION_KEY = new CreationExtras.Key<Application>() { // from class: androidx.lifecycle.ViewModelProvider$AndroidViewModelFactory$special$$inlined$Key$1
            };
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public AndroidViewModelFactory(Application application) {
            this(application, 0);
            application.getClass();
        }

        private final <T extends ViewModel> T create(Class<T> cls, Application application) {
            if (!AndroidViewModel.class.isAssignableFrom(cls)) {
                return (T) super.create(cls);
            }
            try {
                T tNewInstance = cls.getConstructor(Application.class).newInstance(application);
                tNewInstance.getClass();
                return tNewInstance;
            } catch (IllegalAccessException e) {
                mg.e(ln.d(cls, "Cannot create an instance of "), e);
                return null;
            } catch (InstantiationException e2) {
                mg.e(ln.d(cls, "Cannot create an instance of "), e2);
                return null;
            } catch (NoSuchMethodException e3) {
                mg.e(ln.d(cls, "Cannot create an instance of "), e3);
                return null;
            } catch (InvocationTargetException e4) {
                mg.e(ln.d(cls, "Cannot create an instance of "), e4);
                return null;
            }
        }

        public static final AndroidViewModelFactory getInstance(Application application) {
            return Companion.getInstance(application);
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            public final AndroidViewModelFactory getInstance(Application application) {
                application.getClass();
                if (AndroidViewModelFactory._instance == null) {
                    AndroidViewModelFactory._instance = new AndroidViewModelFactory(application);
                }
                AndroidViewModelFactory androidViewModelFactory = AndroidViewModelFactory._instance;
                androidViewModelFactory.getClass();
                return androidViewModelFactory;
            }

            private Companion() {
            }
        }

        public AndroidViewModelFactory() {
            this(null, 0);
        }

        private AndroidViewModelFactory(Application application, int i) {
            this.application = application;
        }

        @Override // androidx.lifecycle.ViewModelProvider.NewInstanceFactory, androidx.lifecycle.ViewModelProvider.Factory
        public <T extends ViewModel> T create(Class<T> cls) {
            cls.getClass();
            Application application = this.application;
            if (application != null) {
                return (T) create(cls, application);
            }
            n1.e("AndroidViewModelFactory constructed with empty constructor works only with create(modelClass: Class<T>, extras: CreationExtras).");
            return null;
        }

        @Override // androidx.lifecycle.ViewModelProvider.NewInstanceFactory, androidx.lifecycle.ViewModelProvider.Factory
        public <T extends ViewModel> T create(Class<T> cls, CreationExtras creationExtras) {
            cls.getClass();
            creationExtras.getClass();
            if (this.application != null) {
                return (T) create(cls);
            }
            Application application = (Application) creationExtras.get(APPLICATION_KEY);
            if (application != null) {
                return (T) create(cls, application);
            }
            if (!AndroidViewModel.class.isAssignableFrom(cls)) {
                return (T) super.create(cls);
            }
            fg.c("CreationExtras must have an application by `APPLICATION_KEY`");
            return null;
        }
    }

    public static class NewInstanceFactory implements Factory {
        public static final Companion Companion = new Companion(null);
        public static final CreationExtras.Key<String> VIEW_MODEL_KEY = ViewModelProvider.VIEW_MODEL_KEY;
        private static NewInstanceFactory _instance;

        public static final NewInstanceFactory getInstance() {
            return Companion.getInstance();
        }

        @Override // androidx.lifecycle.ViewModelProvider.Factory
        public <T extends ViewModel> T create(ne4<T> ne4Var, CreationExtras creationExtras) {
            ne4Var.getClass();
            creationExtras.getClass();
            return (T) create(d31.n(ne4Var), creationExtras);
        }

        public static final class Companion {
            public /* synthetic */ Companion(jh2 jh2Var) {
                this();
            }

            public static /* synthetic */ void getInstance$annotations() {
            }

            public final NewInstanceFactory getInstance() {
                if (NewInstanceFactory._instance == null) {
                    NewInstanceFactory._instance = new NewInstanceFactory();
                }
                NewInstanceFactory newInstanceFactory = NewInstanceFactory._instance;
                newInstanceFactory.getClass();
                return newInstanceFactory;
            }

            private Companion() {
            }
        }

        @Override // androidx.lifecycle.ViewModelProvider.Factory
        public <T extends ViewModel> T create(Class<T> cls, CreationExtras creationExtras) {
            cls.getClass();
            creationExtras.getClass();
            return (T) create(cls);
        }

        @Override // androidx.lifecycle.ViewModelProvider.Factory
        public <T extends ViewModel> T create(Class<T> cls) {
            cls.getClass();
            return (T) JvmViewModelProviders.INSTANCE.createViewModel(cls);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public static /* synthetic */ ViewModelProvider create$default(Companion companion, ViewModelStoreOwner viewModelStoreOwner, Factory factory, CreationExtras creationExtras, int i, Object obj) {
            if ((i & 2) != 0) {
                factory = ViewModelProviders.INSTANCE.getDefaultFactory$lifecycle_viewmodel(viewModelStoreOwner);
            }
            if ((i & 4) != 0) {
                creationExtras = ViewModelProviders.INSTANCE.getDefaultCreationExtras$lifecycle_viewmodel(viewModelStoreOwner);
            }
            return companion.create(viewModelStoreOwner, factory, creationExtras);
        }

        public final ViewModelProvider create(ViewModelStoreOwner viewModelStoreOwner, Factory factory, CreationExtras creationExtras) {
            viewModelStoreOwner.getClass();
            factory.getClass();
            creationExtras.getClass();
            return new ViewModelProvider(viewModelStoreOwner.getViewModelStore(), factory, creationExtras);
        }

        private Companion() {
        }

        public final ViewModelProvider create(ViewModelStore viewModelStore, Factory factory, CreationExtras creationExtras) {
            viewModelStore.getClass();
            factory.getClass();
            creationExtras.getClass();
            return new ViewModelProvider(viewModelStore, factory, creationExtras);
        }

        public static /* synthetic */ ViewModelProvider create$default(Companion companion, ViewModelStore viewModelStore, Factory factory, CreationExtras creationExtras, int i, Object obj) {
            if ((i & 2) != 0) {
                factory = DefaultViewModelProviderFactory.INSTANCE;
            }
            if ((i & 4) != 0) {
                creationExtras = CreationExtras.Empty.INSTANCE;
            }
            return companion.create(viewModelStore, factory, creationExtras);
        }
    }

    public static final ViewModelProvider create(ViewModelStoreOwner viewModelStoreOwner, Factory factory, CreationExtras creationExtras) {
        return Companion.create(viewModelStoreOwner, factory, creationExtras);
    }

    public interface Factory {
        public static final Companion Companion = Companion.$$INSTANCE;

        public static final class Companion {
            static final /* synthetic */ Companion $$INSTANCE = new Companion();

            private Companion() {
            }

            public final Factory from(ViewModelInitializer<?>... viewModelInitializerArr) {
                viewModelInitializerArr.getClass();
                return ViewModelProviders.INSTANCE.createInitializerFactory$lifecycle_viewmodel((ViewModelInitializer<?>[]) Arrays.copyOf(viewModelInitializerArr, viewModelInitializerArr.length));
            }
        }

        static Factory from(ViewModelInitializer<?>... viewModelInitializerArr) {
            return Companion.from(viewModelInitializerArr);
        }

        default <T extends ViewModel> T create(ne4<T> ne4Var, CreationExtras creationExtras) {
            ne4Var.getClass();
            creationExtras.getClass();
            return (T) create(d31.n(ne4Var), creationExtras);
        }

        default <T extends ViewModel> T create(Class<T> cls, CreationExtras creationExtras) {
            cls.getClass();
            creationExtras.getClass();
            return (T) create(cls);
        }

        default <T extends ViewModel> T create(Class<T> cls) {
            cls.getClass();
            return (T) ViewModelProviders.INSTANCE.unsupportedCreateViewModel$lifecycle_viewmodel();
        }
    }

    public final <T extends ViewModel> T get(ne4<T> ne4Var) {
        ne4Var.getClass();
        return (T) ViewModelProviderImpl.getViewModel$lifecycle_viewmodel$default(this.impl, ne4Var, null, 2, null);
    }

    public final <T extends ViewModel> T get(String str, ne4<T> ne4Var) {
        str.getClass();
        ne4Var.getClass();
        return (T) this.impl.getViewModel$lifecycle_viewmodel(ne4Var, str);
    }

    public <T extends ViewModel> T get(Class<T> cls) {
        cls.getClass();
        return (T) get(x07.a(cls));
    }

    private ViewModelProvider(ViewModelProviderImpl viewModelProviderImpl) {
        this.impl = viewModelProviderImpl;
    }

    public /* synthetic */ ViewModelProvider(ViewModelStore viewModelStore, Factory factory, CreationExtras creationExtras, int i, jh2 jh2Var) {
        this(viewModelStore, factory, (i & 4) != 0 ? CreationExtras.Empty.INSTANCE : creationExtras);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ViewModelProvider(ViewModelStore viewModelStore, Factory factory, CreationExtras creationExtras) {
        this(new ViewModelProviderImpl(viewModelStore, factory, creationExtras));
        viewModelStore.getClass();
        factory.getClass();
        creationExtras.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ViewModelProvider(ViewModelStore viewModelStore, Factory factory) {
        this(viewModelStore, factory, null, 4, null);
        viewModelStore.getClass();
        factory.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ViewModelProvider(ViewModelStoreOwner viewModelStoreOwner, Factory factory) {
        this(viewModelStoreOwner.getViewModelStore(), factory, ViewModelProviders.INSTANCE.getDefaultCreationExtras$lifecycle_viewmodel(viewModelStoreOwner));
        viewModelStoreOwner.getClass();
        factory.getClass();
    }
}
