.class public final Lio/appmetrica/analytics/impl/Z2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Cn;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Dn;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Dn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/Dn;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Z2;->a:Lio/appmetrica/analytics/impl/Dn;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/Bn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/Bn;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Z2;->a:Lio/appmetrica/analytics/impl/Dn;

    invoke-interface {p0}, Lio/appmetrica/analytics/impl/Dn;->a()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/appmetrica/analytics/impl/Bn;->a(Ljava/lang/Object;)V

    return-void
.end method
