.class public final Lio/appmetrica/analytics/impl/J4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/a8;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/B4;)Lio/appmetrica/analytics/impl/Ua;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lio/appmetrica/analytics/impl/J4;->b(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/B4;)Lio/appmetrica/analytics/impl/I4;

    move-result-object p0

    return-object p0
.end method

.method public final b(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/B4;)Lio/appmetrica/analytics/impl/I4;
    .locals 1

    new-instance p0, Lio/appmetrica/analytics/impl/I4;

    sget-object v0, Lio/appmetrica/analytics/impl/Wl;->a:Lio/appmetrica/analytics/impl/Xl;

    invoke-direct {p0, p1, v0, p2, p3}, Lio/appmetrica/analytics/impl/I4;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Xl;Lio/appmetrica/analytics/impl/b5;Lio/appmetrica/analytics/impl/B4;)V

    return-object p0
.end method
