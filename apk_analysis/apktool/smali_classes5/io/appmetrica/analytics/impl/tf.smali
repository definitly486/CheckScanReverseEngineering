.class public final Lio/appmetrica/analytics/impl/tf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/J5;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/ContentValues;)Lio/appmetrica/analytics/impl/Df;
    .locals 8

    const-string p0, "tracking_id"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz p0, :cond_0

    new-array p0, v7, [Ljava/lang/Object;

    const-string p1, "Tracking id is empty"

    invoke-static {p1, p0}, Lio/appmetrica/analytics/impl/tj;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v6

    :cond_0
    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/parsing/ParseUtils;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    if-nez p0, :cond_1

    new-array p0, v7, [Ljava/lang/Object;

    const-string p1, "Tracking id from preload info content provider is not a number"

    invoke-static {p1, p0}, Lio/appmetrica/analytics/impl/tj;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v6

    :cond_1
    :try_start_0
    const-string p0, "additional_params"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p0, "No additional params"

    new-array p1, v7, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lio/appmetrica/analytics/impl/tj;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v6

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "Additional params are empty"

    new-array p1, v7, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lio/appmetrica/analytics/impl/tj;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v6

    :cond_3
    const-string p0, "Successfully parsed preload info. Tracking id = %s, additionalParams = %s"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lio/appmetrica/analytics/impl/tj;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lio/appmetrica/analytics/impl/Df;

    sget-object v5, Lio/appmetrica/analytics/impl/f8;->f:Lio/appmetrica/analytics/impl/f8;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/impl/Df;-><init>(Ljava/lang/String;Lorg/json/JSONObject;ZZLio/appmetrica/analytics/impl/f8;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :goto_0
    sget-object p1, Lio/appmetrica/analytics/logger/appmetrica/internal/ImportantLogger;->INSTANCE:Lio/appmetrica/analytics/logger/appmetrica/internal/ImportantLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not parse additional parameters\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v7, [Ljava/lang/Object;

    const-string v1, "AppMetrica-Attribution"

    invoke-virtual {p1, v1, p0, v0}, Lio/appmetrica/analytics/logger/common/BaseImportantLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v6
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/content/ContentValues;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/tf;->a(Landroid/content/ContentValues;)Lio/appmetrica/analytics/impl/Df;

    move-result-object p0

    return-object p0
.end method
