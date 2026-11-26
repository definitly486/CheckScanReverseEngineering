.class public final Lio/appmetrica/analytics/push/provider/firebase/impl/l;
.super Lio/appmetrica/analytics/push/provider/firebase/impl/f;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/push/provider/firebase/impl/j;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/push/provider/firebase/impl/j;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lio/appmetrica/analytics/push/provider/firebase/impl/l;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/push/provider/firebase/impl/j;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/push/provider/firebase/impl/j;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lio/appmetrica/analytics/push/provider/firebase/impl/f;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/push/provider/firebase/impl/n;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/firebase/FirebaseOptions;)Lcom/google/firebase/FirebaseApp;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lio/appmetrica/analytics/push/provider/firebase/impl/f;->a:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;Lcom/google/firebase/FirebaseOptions;)Lcom/google/firebase/FirebaseApp;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object p0

    return-object p0
.end method
