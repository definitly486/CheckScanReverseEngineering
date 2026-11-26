.class public final Lio/appmetrica/analytics/impl/pe;
.super Lio/appmetrica/analytics/impl/Q2;
.source "SourceFile"


# static fields
.field public static final b:Lio/appmetrica/analytics/impl/oe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/oe;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/oe;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/impl/pe;->b:Lio/appmetrica/analytics/impl/oe;

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/W9;)V
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/impl/pe;->b:Lio/appmetrica/analytics/impl/oe;

    invoke-static {v0, p1}, Lio/appmetrica/analytics/impl/oe;->a(Lio/appmetrica/analytics/impl/oe;Lio/appmetrica/analytics/impl/W9;)Lio/appmetrica/analytics/impl/N9;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/Q2;-><init>(Lio/appmetrica/analytics/impl/N9;)V

    return-void
.end method
