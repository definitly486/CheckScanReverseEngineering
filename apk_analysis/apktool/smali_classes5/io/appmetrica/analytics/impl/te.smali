.class public final Lio/appmetrica/analytics/impl/te;
.super Lio/appmetrica/analytics/impl/Q2;
.source "SourceFile"


# static fields
.field public static final b:Lio/appmetrica/analytics/impl/se;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/se;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/se;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/impl/te;->b:Lio/appmetrica/analytics/impl/se;

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/W9;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/impl/te;->b:Lio/appmetrica/analytics/impl/se;

    invoke-static {v0, p1, p2}, Lio/appmetrica/analytics/impl/se;->a(Lio/appmetrica/analytics/impl/se;Lio/appmetrica/analytics/impl/W9;Ljava/lang/Object;)Lio/appmetrica/analytics/impl/N9;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/Q2;-><init>(Lio/appmetrica/analytics/impl/N9;)V

    return-void
.end method
