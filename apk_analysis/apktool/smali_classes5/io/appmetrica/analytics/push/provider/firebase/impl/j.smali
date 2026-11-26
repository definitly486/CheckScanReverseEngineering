.class public final Lio/appmetrica/analytics/push/provider/firebase/impl/j;
.super Lio/appmetrica/analytics/push/provider/firebase/impl/n;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v0, "Expected two identifiers: ymp_firebase_default_app_id and ymp_gcm_default_sender_id in application block of AndroidManifest.xml. See more at https://appmetrica.io/docs/mobile-sdk-dg/push/android-initialize.html"

    sput-object v0, Lio/appmetrica/analytics/push/provider/firebase/impl/j;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/push/provider/firebase/impl/j;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lio/appmetrica/analytics/push/provider/firebase/impl/n;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/push/provider/firebase/impl/n;->a:Landroid/content/Context;

    const-string v0, "ymp_firebase_default_api_key"

    invoke-static {p0, v0}, Lio/appmetrica/analytics/push/coreutils/internal/utils/CoreUtils;->getStringFromMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/push/provider/firebase/impl/n;->a:Landroid/content/Context;

    const-string v0, "ymp_firebase_default_app_id"

    invoke-static {p0, v0}, Lio/appmetrica/analytics/push/coreutils/internal/utils/CoreUtils;->getStringFromMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/push/provider/firebase/impl/n;->a:Landroid/content/Context;

    const-string v0, "ymp_firebase_default_project_id"

    invoke-static {p0, v0}, Lio/appmetrica/analytics/push/coreutils/internal/utils/CoreUtils;->getStringFromMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lio/appmetrica/analytics/push/provider/firebase/impl/n;->a:Landroid/content/Context;

    const-string v0, "ymp_gcm_default_sender_id"

    invoke-static {p0, v0}, Lio/appmetrica/analytics/push/coreutils/internal/utils/CoreUtils;->getStringFromMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v0, p0, v0

    const-string v1, "number"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
