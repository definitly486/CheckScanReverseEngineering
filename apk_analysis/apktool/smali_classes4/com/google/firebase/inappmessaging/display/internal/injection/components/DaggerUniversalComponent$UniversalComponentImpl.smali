.class final Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$UniversalComponentImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/display/internal/injection/components/UniversalComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UniversalComponentImpl"
.end annotation


# instance fields
.field bindingWrapperFactoryProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/display/internal/BindingWrapperFactory;",
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

.field private final inflaterConfigModule:Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule;

.field providesApplicationProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field providesBannerLandscapeLayoutConfigProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;",
            ">;"
        }
    .end annotation
.end field

.field providesBannerPortraitLayoutConfigProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;",
            ">;"
        }
    .end annotation
.end field

.field providesCardLandscapeConfigProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;",
            ">;"
        }
    .end annotation
.end field

.field providesCardPortraitConfigProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;",
            ">;"
        }
    .end annotation
.end field

.field providesDisplayMetricsProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider<",
            "Landroid/util/DisplayMetrics;",
            ">;"
        }
    .end annotation
.end field

.field providesLandscapeImageLayoutConfigProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;",
            ">;"
        }
    .end annotation
.end field

.field providesModalLandscapeConfigProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;",
            ">;"
        }
    .end annotation
.end field

.field providesModalPortraitConfigProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;",
            ">;"
        }
    .end annotation
.end field

.field providesPortraitImageLayoutConfigProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider<",
            "Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final universalComponentImpl:Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$UniversalComponentImpl;


# direct methods
.method public constructor <init>(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/ApplicationModule;Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$UniversalComponentImpl;->universalComponentImpl:Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$UniversalComponentImpl;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$UniversalComponentImpl;->inflaterConfigModule:Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule;

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$UniversalComponentImpl;->initialize(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/ApplicationModule;Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule;)V

    return-void
.end method

.method private initialize(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/ApplicationModule;Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule;)V
    .locals 0

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/ApplicationModule_ProvidesApplicationFactory;->create(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/ApplicationModule;)Lcom/google/firebase/inappmessaging/display/internal/injection/modules/ApplicationModule_ProvidesApplicationFactory;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/display/dagger/internal/DoubleCheck;->provider(Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;)Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$UniversalComponentImpl;->providesApplicationProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    invoke-static {}, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager_Factory;->create()Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager_Factory;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/display/dagger/internal/DoubleCheck;->provider(Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;)Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$UniversalComponentImpl;->fiamWindowManagerProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$UniversalComponentImpl;->providesApplicationProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/display/internal/BindingWrapperFactory_Factory;->create(Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;)Lcom/google/firebase/inappmessaging/display/internal/BindingWrapperFactory_Factory;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/display/dagger/internal/DoubleCheck;->provider(Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;)Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$UniversalComponentImpl;->bindingWrapperFactoryProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$UniversalComponentImpl;->providesApplicationProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    invoke-static {p2, p1}, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule_ProvidesDisplayMetricsFactory;->create(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule;Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;)Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule_ProvidesDisplayMetricsFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$UniversalComponentImpl;->providesDisplayMetricsProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    invoke-static {p2, p1}, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule_ProvidesPortraitImageLayoutConfigFactory;->create(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule;Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;)Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule_ProvidesPortraitImageLayoutConfigFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$UniversalComponentImpl;->providesPortraitImageLayoutConfigProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$UniversalComponentImpl;->providesDisplayMetricsProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    invoke-static {p2, p1}, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule_ProvidesLandscapeImageLayoutConfigFactory;->create(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule;Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;)Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule_ProvidesLandscapeImageLayoutConfigFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$UniversalComponentImpl;->providesLandscapeImageLayoutConfigProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$UniversalComponentImpl;->providesDisplayMetricsProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    invoke-static {p2, p1}, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule_ProvidesModalLandscapeConfigFactory;->create(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule;Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;)Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule_ProvidesModalLandscapeConfigFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$UniversalComponentImpl;->providesModalLandscapeConfigProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$UniversalComponentImpl;->providesDisplayMetricsProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    invoke-static {p2, p1}, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule_ProvidesModalPortraitConfigFactory;->create(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule;Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;)Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule_ProvidesModalPortraitConfigFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$UniversalComponentImpl;->providesModalPortraitConfigProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$UniversalComponentImpl;->providesDisplayMetricsProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    invoke-static {p2, p1}, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule_ProvidesCardLandscapeConfigFactory;->create(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule;Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;)Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule_ProvidesCardLandscapeConfigFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$UniversalComponentImpl;->providesCardLandscapeConfigProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$UniversalComponentImpl;->providesDisplayMetricsProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    invoke-static {p2, p1}, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule_ProvidesCardPortraitConfigFactory;->create(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule;Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;)Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule_ProvidesCardPortraitConfigFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$UniversalComponentImpl;->providesCardPortraitConfigProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$UniversalComponentImpl;->providesDisplayMetricsProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    invoke-static {p2, p1}, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule_ProvidesBannerPortraitLayoutConfigFactory;->create(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule;Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;)Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule_ProvidesBannerPortraitLayoutConfigFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$UniversalComponentImpl;->providesBannerPortraitLayoutConfigProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$UniversalComponentImpl;->providesDisplayMetricsProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    invoke-static {p2, p1}, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule_ProvidesBannerLandscapeLayoutConfigFactory;->create(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule;Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;)Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule_ProvidesBannerLandscapeLayoutConfigFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$UniversalComponentImpl;->providesBannerLandscapeLayoutConfigProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    return-void
.end method


# virtual methods
.method public displayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$UniversalComponentImpl;->inflaterConfigModule:Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule;

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$UniversalComponentImpl;->providesApplicationProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    invoke-interface {p0}, Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    invoke-static {v0, p0}, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule_ProvidesDisplayMetricsFactory;->providesDisplayMetrics(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule;Landroid/app/Application;)Landroid/util/DisplayMetrics;

    move-result-object p0

    return-object p0
.end method

.method public fiamWindowManager()Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$UniversalComponentImpl;->fiamWindowManagerProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    invoke-interface {p0}, Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;

    return-object p0
.end method

.method public inflaterClient()Lcom/google/firebase/inappmessaging/display/internal/BindingWrapperFactory;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$UniversalComponentImpl;->bindingWrapperFactoryProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    invoke-interface {p0}, Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/display/internal/BindingWrapperFactory;

    return-object p0
.end method

.method public myKeyStringMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lws6<",
            "Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;",
            ">;>;"
        }
    .end annotation

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/dagger/internal/MapBuilder;->newMapBuilder(I)Lcom/google/firebase/inappmessaging/display/dagger/internal/MapBuilder;

    move-result-object v0

    const-string v1, "IMAGE_ONLY_PORTRAIT"

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$UniversalComponentImpl;->providesPortraitImageLayoutConfigProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/inappmessaging/display/dagger/internal/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/inappmessaging/display/dagger/internal/MapBuilder;

    move-result-object v0

    const-string v1, "IMAGE_ONLY_LANDSCAPE"

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$UniversalComponentImpl;->providesLandscapeImageLayoutConfigProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/inappmessaging/display/dagger/internal/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/inappmessaging/display/dagger/internal/MapBuilder;

    move-result-object v0

    const-string v1, "MODAL_LANDSCAPE"

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$UniversalComponentImpl;->providesModalLandscapeConfigProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/inappmessaging/display/dagger/internal/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/inappmessaging/display/dagger/internal/MapBuilder;

    move-result-object v0

    const-string v1, "MODAL_PORTRAIT"

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$UniversalComponentImpl;->providesModalPortraitConfigProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/inappmessaging/display/dagger/internal/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/inappmessaging/display/dagger/internal/MapBuilder;

    move-result-object v0

    const-string v1, "CARD_LANDSCAPE"

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$UniversalComponentImpl;->providesCardLandscapeConfigProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/inappmessaging/display/dagger/internal/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/inappmessaging/display/dagger/internal/MapBuilder;

    move-result-object v0

    const-string v1, "CARD_PORTRAIT"

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$UniversalComponentImpl;->providesCardPortraitConfigProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/inappmessaging/display/dagger/internal/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/inappmessaging/display/dagger/internal/MapBuilder;

    move-result-object v0

    const-string v1, "BANNER_PORTRAIT"

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$UniversalComponentImpl;->providesBannerPortraitLayoutConfigProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/inappmessaging/display/dagger/internal/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/inappmessaging/display/dagger/internal/MapBuilder;

    move-result-object v0

    const-string v1, "BANNER_LANDSCAPE"

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$UniversalComponentImpl;->providesBannerLandscapeLayoutConfigProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    invoke-virtual {v0, v1, p0}, Lcom/google/firebase/inappmessaging/display/dagger/internal/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/inappmessaging/display/dagger/internal/MapBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/dagger/internal/MapBuilder;->build()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public providesApplication()Landroid/app/Application;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$UniversalComponentImpl;->providesApplicationProvider:Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;

    invoke-interface {p0}, Lcom/google/firebase/inappmessaging/display/dagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    return-object p0
.end method
