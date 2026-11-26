.class public final Lio/appmetrica/analytics/push/impl/D1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/push/settings/PushFilter;


# instance fields
.field public final a:Lio/appmetrica/analytics/push/impl/r;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/push/impl/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/push/impl/D1;->a:Lio/appmetrica/analytics/push/impl/r;

    return-void
.end method


# virtual methods
.method public final filter(Lio/appmetrica/analytics/push/model/PushMessage;)Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;
    .locals 3

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/model/PushMessage;->getFilters()Lio/appmetrica/analytics/push/model/Filters;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lio/appmetrica/analytics/push/model/Filters;->getPassportUid()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;->show()Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/D1;->a:Lio/appmetrica/analytics/push/impl/r;

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/r;->f:Lio/appmetrica/analytics/push/impl/v;

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/v;->o:Lio/appmetrica/analytics/push/settings/PassportUidProvider;

    if-nez p0, :cond_2

    const-string p0, "Not found passport uid provider"

    invoke-static {p0, v0}, Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;->silence(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-interface {p0}, Lio/appmetrica/analytics/push/settings/PassportUidProvider;->getUid()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p0, "No current account"

    invoke-static {p0, v0}, Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;->silence(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "], allowed ["

    const-string v1, "]"

    const-string v2, "Got account uid ["

    invoke-static {v2, p0, v0, p1, v1}, Ln2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Wrong account"

    invoke-static {p1, p0}, Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;->silence(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {}, Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;->show()Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;

    move-result-object p0

    return-object p0
.end method
