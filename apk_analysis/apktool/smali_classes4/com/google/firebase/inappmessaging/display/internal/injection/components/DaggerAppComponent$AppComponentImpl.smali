.class final Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerAppComponent$AppComponentImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/display/internal/injection/components/AppComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppComponentImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerAppComponent$AppComponentImpl$MyKeyStringMapProvider;,
        Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerAppComponent$AppComponentImpl$ProvidesApplicationProvider;,
        Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerAppComponent$AppComponentImpl$FiamWindowManagerProvider;,
        Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerAppComponent$AppComponentImpl$InflaterClientProvider;
    }
.end annotation


# instance fields
.field private final appComponentImpl:Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerAppComponent$AppComponentImpl;

.field fiamAnimatorProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator;",
            ">;"
        }
    .end annotation
.end field

.field fiamImageLoaderProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;",
            ">;"
        }
    .end annotation
.end field

.field fiamWindowManagerProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;",
            ">;"
        }
    .end annotation
.end field

.field firebaseInAppMessagingDisplayProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;",
            ">;"
        }
    .end annotation
.end field

.field inflaterClientProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/display/internal/BindingWrapperFactory;",
            ">;"
        }
    .end annotation
.end field

.field myKeyStringMapProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

.field providesApplicationProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field providesGlideRequestManagerProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider<",
            "Lp37;",
            ">;"
        }
    .end annotation
.end field

.field providesHeadlesssSingletonProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/HeadlessInAppMessagingModule;Lcom/google/firebase/inappmessaging/display/internal/injection/modules/GlideModule;Lcom/google/firebase/inappmessaging/display/internal/injection/components/UniversalComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerAppComponent$AppComponentImpl;->appComponentImpl:Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerAppComponent$AppComponentImpl;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerAppComponent$AppComponentImpl;->initialize(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/HeadlessInAppMessagingModule;Lcom/google/firebase/inappmessaging/display/internal/injection/modules/GlideModule;Lcom/google/firebase/inappmessaging/display/internal/injection/components/UniversalComponent;)V

    return-void
.end method

.method private initialize(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/HeadlessInAppMessagingModule;Lcom/google/firebase/inappmessaging/display/internal/injection/modules/GlideModule;Lcom/google/firebase/inappmessaging/display/internal/injection/components/UniversalComponent;)V
    .locals 9

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/HeadlessInAppMessagingModule_ProvidesHeadlesssSingletonFactory;->create(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/HeadlessInAppMessagingModule;)Lcom/google/firebase/inappmessaging/display/internal/injection/modules/HeadlessInAppMessagingModule_ProvidesHeadlesssSingletonFactory;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/display/dagger/internal/DoubleCheck;->provider(Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;)Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerAppComponent$AppComponentImpl;->providesHeadlesssSingletonProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    new-instance p1, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerAppComponent$AppComponentImpl$MyKeyStringMapProvider;

    invoke-direct {p1, p3}, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerAppComponent$AppComponentImpl$MyKeyStringMapProvider;-><init>(Lcom/google/firebase/inappmessaging/display/internal/injection/components/UniversalComponent;)V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerAppComponent$AppComponentImpl;->myKeyStringMapProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    new-instance p1, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerAppComponent$AppComponentImpl$ProvidesApplicationProvider;

    invoke-direct {p1, p3}, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerAppComponent$AppComponentImpl$ProvidesApplicationProvider;-><init>(Lcom/google/firebase/inappmessaging/display/internal/injection/components/UniversalComponent;)V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerAppComponent$AppComponentImpl;->providesApplicationProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    invoke-static {p2, p1}, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/GlideModule_ProvidesGlideRequestManagerFactory;->create(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/GlideModule;Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;)Lcom/google/firebase/inappmessaging/display/internal/injection/modules/GlideModule_ProvidesGlideRequestManagerFactory;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/display/dagger/internal/DoubleCheck;->provider(Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;)Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerAppComponent$AppComponentImpl;->providesGlideRequestManagerProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader_Factory;->create(Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;)Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader_Factory;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/display/dagger/internal/DoubleCheck;->provider(Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;)Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerAppComponent$AppComponentImpl;->fiamImageLoaderProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    new-instance p1, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerAppComponent$AppComponentImpl$FiamWindowManagerProvider;

    invoke-direct {p1, p3}, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerAppComponent$AppComponentImpl$FiamWindowManagerProvider;-><init>(Lcom/google/firebase/inappmessaging/display/internal/injection/components/UniversalComponent;)V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerAppComponent$AppComponentImpl;->fiamWindowManagerProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    new-instance p1, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerAppComponent$AppComponentImpl$InflaterClientProvider;

    invoke-direct {p1, p3}, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerAppComponent$AppComponentImpl$InflaterClientProvider;-><init>(Lcom/google/firebase/inappmessaging/display/internal/injection/components/UniversalComponent;)V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerAppComponent$AppComponentImpl;->inflaterClientProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    invoke-static {}, Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator_Factory;->create()Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator_Factory;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/display/dagger/internal/DoubleCheck;->provider(Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;)Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerAppComponent$AppComponentImpl;->fiamAnimatorProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerAppComponent$AppComponentImpl;->providesHeadlesssSingletonProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerAppComponent$AppComponentImpl;->myKeyStringMapProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerAppComponent$AppComponentImpl;->fiamImageLoaderProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    invoke-static {}, Lcom/google/firebase/inappmessaging/display/internal/RenewableTimer_Factory;->create()Lcom/google/firebase/inappmessaging/display/internal/RenewableTimer_Factory;

    move-result-object v3

    invoke-static {}, Lcom/google/firebase/inappmessaging/display/internal/RenewableTimer_Factory;->create()Lcom/google/firebase/inappmessaging/display/internal/RenewableTimer_Factory;

    move-result-object v4

    iget-object v5, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerAppComponent$AppComponentImpl;->fiamWindowManagerProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    iget-object v6, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerAppComponent$AppComponentImpl;->providesApplicationProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    iget-object v7, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerAppComponent$AppComponentImpl;->inflaterClientProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    iget-object v8, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerAppComponent$AppComponentImpl;->fiamAnimatorProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    invoke-static/range {v0 .. v8}, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay_Factory;->create(Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;)Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay_Factory;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/display/dagger/internal/DoubleCheck;->provider(Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;)Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerAppComponent$AppComponentImpl;->firebaseInAppMessagingDisplayProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    return-void
.end method


# virtual methods
.method public fiamImageLoader()Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerAppComponent$AppComponentImpl;->fiamImageLoaderProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    invoke-interface {p0}, Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;

    return-object p0
.end method

.method public providesFirebaseInAppMessagingUI()Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerAppComponent$AppComponentImpl;->firebaseInAppMessagingDisplayProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    invoke-interface {p0}, Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;

    return-object p0
.end method
