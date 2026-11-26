.class public final Lio/appmetrica/analytics/impl/P4;
.super Lio/appmetrica/analytics/impl/T2;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Tf;Lio/appmetrica/analytics/impl/I4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/Tf;",
            "Lio/appmetrica/analytics/impl/I4;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lio/appmetrica/analytics/impl/T2;-><init>(Lio/appmetrica/analytics/impl/Tf;Lio/appmetrica/analytics/impl/Sa;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/G4;)Z
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/O4;

    invoke-direct {v0, p2}, Lio/appmetrica/analytics/impl/O4;-><init>(Lio/appmetrica/analytics/impl/G4;)V

    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/impl/T2;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/S2;)Z

    move-result p0

    return p0
.end method
