.class public final Lio/appmetrica/analytics/impl/Ih;
.super Lio/appmetrica/analytics/impl/u6;
.source "SourceFile"


# instance fields
.field public final d:Lio/appmetrica/analytics/impl/io;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/io;Lio/appmetrica/analytics/impl/t6;Lio/appmetrica/analytics/ICrashTransformer;)V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/Z9;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/Z9;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2, p3, p4, v0}, Lio/appmetrica/analytics/impl/Ih;-><init>(Lio/appmetrica/analytics/impl/io;Lio/appmetrica/analytics/impl/t6;Lio/appmetrica/analytics/ICrashTransformer;Lio/appmetrica/analytics/impl/Z9;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/io;Lio/appmetrica/analytics/impl/t6;Lio/appmetrica/analytics/ICrashTransformer;Lio/appmetrica/analytics/impl/Z9;)V
    .locals 0

    .line 9
    invoke-direct {p0, p2, p3, p4}, Lio/appmetrica/analytics/impl/u6;-><init>(Lio/appmetrica/analytics/impl/t6;Lio/appmetrica/analytics/ICrashTransformer;Lio/appmetrica/analytics/impl/Z9;)V

    .line 10
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ih;->d:Lio/appmetrica/analytics/impl/io;

    return-void
.end method
