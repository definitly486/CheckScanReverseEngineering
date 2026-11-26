.class final Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerInAppMessageComponent$InAppMessageComponentImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/display/internal/injection/components/InAppMessageComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerInAppMessageComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InAppMessageComponentImpl"
.end annotation


# instance fields
.field bannerBindingWrapperProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BannerBindingWrapper;",
            ">;"
        }
    .end annotation
.end field

.field cardBindingWrapperProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/CardBindingWrapper;",
            ">;"
        }
    .end annotation
.end field

.field imageBindingWrapperProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/ImageBindingWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final inAppMessageComponentImpl:Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerInAppMessageComponent$InAppMessageComponentImpl;

.field inAppMessageLayoutConfigProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;",
            ">;"
        }
    .end annotation
.end field

.field modalBindingWrapperProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/ModalBindingWrapper;",
            ">;"
        }
    .end annotation
.end field

.field providesBannerMessageProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/model/InAppMessage;",
            ">;"
        }
    .end annotation
.end field

.field providesInflaterserviceProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider<",
            "Landroid/view/LayoutInflater;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerInAppMessageComponent$InAppMessageComponentImpl;->inAppMessageComponentImpl:Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerInAppMessageComponent$InAppMessageComponentImpl;

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerInAppMessageComponent$InAppMessageComponentImpl;->initialize(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterModule;)V

    return-void
.end method

.method private initialize(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterModule;)V
    .locals 2

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterModule_InAppMessageLayoutConfigFactory;->create(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterModule;)Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterModule_InAppMessageLayoutConfigFactory;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/dagger/internal/DoubleCheck;->provider(Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;)Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerInAppMessageComponent$InAppMessageComponentImpl;->inAppMessageLayoutConfigProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterModule_ProvidesInflaterserviceFactory;->create(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterModule;)Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterModule_ProvidesInflaterserviceFactory;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/dagger/internal/DoubleCheck;->provider(Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;)Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerInAppMessageComponent$InAppMessageComponentImpl;->providesInflaterserviceProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterModule_ProvidesBannerMessageFactory;->create(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterModule;)Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterModule_ProvidesBannerMessageFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerInAppMessageComponent$InAppMessageComponentImpl;->providesBannerMessageProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerInAppMessageComponent$InAppMessageComponentImpl;->inAppMessageLayoutConfigProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerInAppMessageComponent$InAppMessageComponentImpl;->providesInflaterserviceProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/ImageBindingWrapper_Factory;->create(Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;)Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/ImageBindingWrapper_Factory;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/display/dagger/internal/DoubleCheck;->provider(Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;)Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerInAppMessageComponent$InAppMessageComponentImpl;->imageBindingWrapperProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerInAppMessageComponent$InAppMessageComponentImpl;->inAppMessageLayoutConfigProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerInAppMessageComponent$InAppMessageComponentImpl;->providesInflaterserviceProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerInAppMessageComponent$InAppMessageComponentImpl;->providesBannerMessageProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    invoke-static {p1, v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/ModalBindingWrapper_Factory;->create(Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;)Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/ModalBindingWrapper_Factory;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/display/dagger/internal/DoubleCheck;->provider(Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;)Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerInAppMessageComponent$InAppMessageComponentImpl;->modalBindingWrapperProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerInAppMessageComponent$InAppMessageComponentImpl;->inAppMessageLayoutConfigProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerInAppMessageComponent$InAppMessageComponentImpl;->providesInflaterserviceProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerInAppMessageComponent$InAppMessageComponentImpl;->providesBannerMessageProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    invoke-static {p1, v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BannerBindingWrapper_Factory;->create(Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;)Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BannerBindingWrapper_Factory;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/display/dagger/internal/DoubleCheck;->provider(Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;)Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerInAppMessageComponent$InAppMessageComponentImpl;->bannerBindingWrapperProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerInAppMessageComponent$InAppMessageComponentImpl;->inAppMessageLayoutConfigProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerInAppMessageComponent$InAppMessageComponentImpl;->providesInflaterserviceProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerInAppMessageComponent$InAppMessageComponentImpl;->providesBannerMessageProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    invoke-static {p1, v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/CardBindingWrapper_Factory;->create(Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;)Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/CardBindingWrapper_Factory;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/display/dagger/internal/DoubleCheck;->provider(Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;)Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerInAppMessageComponent$InAppMessageComponentImpl;->cardBindingWrapperProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    return-void
.end method


# virtual methods
.method public bannerBindingWrapper()Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BannerBindingWrapper;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerInAppMessageComponent$InAppMessageComponentImpl;->bannerBindingWrapperProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    invoke-interface {p0}, Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BannerBindingWrapper;

    return-object p0
.end method

.method public cardBindingWrapper()Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/CardBindingWrapper;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerInAppMessageComponent$InAppMessageComponentImpl;->cardBindingWrapperProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    invoke-interface {p0}, Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/CardBindingWrapper;

    return-object p0
.end method

.method public imageBindingWrapper()Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/ImageBindingWrapper;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerInAppMessageComponent$InAppMessageComponentImpl;->imageBindingWrapperProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    invoke-interface {p0}, Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/ImageBindingWrapper;

    return-object p0
.end method

.method public modalBindingWrapper()Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/ModalBindingWrapper;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerInAppMessageComponent$InAppMessageComponentImpl;->modalBindingWrapperProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    invoke-interface {p0}, Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/ModalBindingWrapper;

    return-object p0
.end method
