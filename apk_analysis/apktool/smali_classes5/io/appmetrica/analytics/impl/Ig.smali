.class public final Lio/appmetrica/analytics/impl/Ig;
.super Lio/appmetrica/analytics/impl/g5;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Qm;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/g5;-><init>(Lio/appmetrica/analytics/impl/Qm;)V

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/am;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lio/appmetrica/analytics/impl/Sa;",
            ">()",
            "Lio/appmetrica/analytics/impl/am;"
        }
    .end annotation

    new-instance v0, Lio/appmetrica/analytics/impl/Lg;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/g5;->a:Lio/appmetrica/analytics/impl/Qm;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/impl/Lg;-><init>(Lio/appmetrica/analytics/impl/Qm;)V

    return-object v0
.end method
