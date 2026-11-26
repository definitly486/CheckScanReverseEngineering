.class public final Lio/appmetrica/analytics/push/impl/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/push/impl/C0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/push/impl/D0;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/push/impl/D0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lio/appmetrica/analytics/push/impl/D0;->a()Lio/appmetrica/analytics/push/impl/C0;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/push/impl/y;->a:Lio/appmetrica/analytics/push/impl/C0;

    return-void
.end method
