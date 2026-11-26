.class public final Lio/appmetrica/analytics/push/impl/I0;
.super Lio/appmetrica/analytics/push/impl/B2;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lio/appmetrica/analytics/push/impl/B2;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/push/impl/I0;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/push/model/PushMessage;)Lio/appmetrica/analytics/push/impl/C2;
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/I0;->a:Landroid/content/Context;

    invoke-static {p0}, Lio/appmetrica/analytics/push/impl/r;->a(Landroid/content/Context;)Lio/appmetrica/analytics/push/impl/r;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/push/impl/r;->e()Lio/appmetrica/analytics/push/impl/Q1;

    move-result-object p0

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/G0;->a:Lio/appmetrica/analytics/push/impl/P1;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/push/impl/P1;->filter(Lio/appmetrica/analytics/push/model/PushMessage;)Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lio/appmetrica/analytics/push/impl/C2;

    invoke-static {}, Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;->show()Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/appmetrica/analytics/push/impl/C2;-><init>(Lio/appmetrica/analytics/push/model/PushMessage;Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;)V

    return-object p0

    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;->category:Ljava/lang/String;

    iget-object p0, p0, Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;->details:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lio/appmetrica/analytics/push/impl/B2;->a(Lio/appmetrica/analytics/push/model/PushMessage;Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/push/impl/C2;

    move-result-object p0

    return-object p0
.end method
