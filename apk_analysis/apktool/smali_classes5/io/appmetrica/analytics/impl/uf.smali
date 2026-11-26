.class public final Lio/appmetrica/analytics/impl/uf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/K5;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/Df;)Ljava/lang/Boolean;
    .locals 0

    sget-object p0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Fa;->E()V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Fa;->j:Lio/appmetrica/analytics/impl/Gf;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/b8;->b(Lio/appmetrica/analytics/impl/g8;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/Df;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/uf;->a(Lio/appmetrica/analytics/impl/Df;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
