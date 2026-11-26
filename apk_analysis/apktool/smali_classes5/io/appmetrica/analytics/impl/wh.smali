.class public final Lio/appmetrica/analytics/impl/wh;
.super Lio/appmetrica/analytics/impl/Ug;
.source "SourceFile"


# instance fields
.field public final b:Lio/appmetrica/analytics/impl/Bi;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/i5;)V
    .locals 2

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/Ug;-><init>(Lio/appmetrica/analytics/impl/i5;)V

    new-instance v0, Lio/appmetrica/analytics/impl/Bi;

    new-instance v1, Lio/appmetrica/analytics/impl/x9;

    invoke-direct {v1, p1}, Lio/appmetrica/analytics/impl/x9;-><init>(Lio/appmetrica/analytics/impl/i5;)V

    invoke-direct {v0, v1, p1}, Lio/appmetrica/analytics/impl/Bi;-><init>(Lio/appmetrica/analytics/impl/Tf;Lio/appmetrica/analytics/impl/i5;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/wh;->b:Lio/appmetrica/analytics/impl/Bi;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/a6;)Z
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/wh;->b:Lio/appmetrica/analytics/impl/Bi;

    new-instance v0, Lio/appmetrica/analytics/impl/Ai;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Ai;-><init>()V

    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/impl/T2;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/S2;)Z

    move-result p0

    return p0
.end method
