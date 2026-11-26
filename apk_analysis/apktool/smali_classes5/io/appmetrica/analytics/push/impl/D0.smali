.class public final Lio/appmetrica/analytics/push/impl/D0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/push/impl/C0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lio/appmetrica/analytics/push/impl/G2;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/push/impl/A1;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/push/impl/A1;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/appmetrica/analytics/push/impl/D0;->a:Lio/appmetrica/analytics/push/impl/C0;

    return-void

    :cond_0
    new-instance p1, Lio/appmetrica/analytics/push/impl/F2;

    invoke-direct {p1}, Lio/appmetrica/analytics/push/impl/F2;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/push/impl/D0;->a:Lio/appmetrica/analytics/push/impl/C0;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/push/impl/C0;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/D0;->a:Lio/appmetrica/analytics/push/impl/C0;

    return-object p0
.end method
