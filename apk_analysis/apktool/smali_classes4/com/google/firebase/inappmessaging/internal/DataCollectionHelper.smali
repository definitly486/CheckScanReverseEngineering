.class public Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final AUTO_INIT_PREFERENCES:Ljava/lang/String; = "auto_init"

.field static final MANIFEST_METADATA_AUTO_INIT_ENABLED:Ljava/lang/String; = "firebase_inapp_messaging_auto_data_collection_enabled"


# instance fields
.field private isGlobalAutomaticDataCollectionEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private sharedPreferencesUtils:Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;Lcom/google/firebase/events/Subscriber;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;->sharedPreferencesUtils:Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->isDataCollectionDefaultEnabled()Z

    move-result p1

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;->isGlobalAutomaticDataCollectionEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Lr82;

    invoke-direct {p1, p0}, Lr82;-><init>(Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;)V

    const-class p0, Lcom/google/firebase/DataCollectionDefaultChange;

    invoke-interface {p3, p0, p1}, Lcom/google/firebase/events/Subscriber;->subscribe(Ljava/lang/Class;Lcom/google/firebase/events/EventHandler;)V

    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;Lcom/google/firebase/events/Event;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;->lambda$new$0(Lcom/google/firebase/events/Event;)V

    return-void
.end method

.method private isProductManifestSet()Z
    .locals 1

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;->sharedPreferencesUtils:Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;

    const-string v0, "firebase_inapp_messaging_auto_data_collection_enabled"

    invoke-virtual {p0, v0}, Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;->isManifestSet(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isProductManuallySet()Z
    .locals 1

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;->sharedPreferencesUtils:Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;

    const-string v0, "auto_init"

    invoke-virtual {p0, v0}, Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;->isPreferenceSet(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0(Lcom/google/firebase/events/Event;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/firebase/events/Event;->getPayload()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/DataCollectionDefaultChange;

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;->isGlobalAutomaticDataCollectionEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-boolean p1, p1, Lcom/google/firebase/DataCollectionDefaultChange;->enabled:Z

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private readAutomaticDataCollectionEnabledFromPreferences()Z
    .locals 2

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;->sharedPreferencesUtils:Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;

    const-string v0, "auto_init"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;->getBooleanPreference(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public isAutomaticDataCollectionEnabled()Z
    .locals 2

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;->isProductManuallySet()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;->sharedPreferencesUtils:Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;

    const-string v0, "auto_init"

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;->getBooleanPreference(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;->isProductManifestSet()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;->sharedPreferencesUtils:Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;

    const-string v0, "firebase_inapp_messaging_auto_data_collection_enabled"

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;->getBooleanManifestValue(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;->isGlobalAutomaticDataCollectionEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public setAutomaticDataCollectionEnabled(Ljava/lang/Boolean;)V
    .locals 2

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;->sharedPreferencesUtils:Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;

    const-string v0, "auto_init"

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;->clearPreference(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;->setBooleanPreference(Ljava/lang/String;Z)V

    return-void
.end method

.method public setAutomaticDataCollectionEnabled(Z)V
    .locals 1

    .line 20
    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;->sharedPreferencesUtils:Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;

    const-string v0, "auto_init"

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;->setBooleanPreference(Ljava/lang/String;Z)V

    return-void
.end method
