.class public final Lio/appmetrica/analytics/impl/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/Savable;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/O;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/O;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/N;->a:Lio/appmetrica/analytics/impl/O;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/N;->a:Lio/appmetrica/analytics/impl/O;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/O;->a:Lio/appmetrica/analytics/impl/mf;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/mf;->a(Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final a(Z)V
    .locals 0

    .line 14
    iget-object p0, p0, Lio/appmetrica/analytics/impl/N;->a:Lio/appmetrica/analytics/impl/O;

    .line 15
    iget-object p0, p0, Lio/appmetrica/analytics/impl/O;->a:Lio/appmetrica/analytics/impl/mf;

    .line 16
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/mf;->e(Z)V

    return-void
.end method

.method public final bridge synthetic getValue()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/N;->a()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/N;->a(Z)V

    return-void
.end method
