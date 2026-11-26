.class public final Lio/appmetrica/analytics/adrevenue/other/impl/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/Converter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/adrevenue/other/impl/j;)Lio/appmetrica/analytics/adrevenue/other/impl/c;
    .locals 1

    new-instance p0, Lio/appmetrica/analytics/adrevenue/other/impl/c;

    invoke-direct {p0}, Lio/appmetrica/analytics/adrevenue/other/impl/c;-><init>()V

    iget-boolean v0, p1, Lio/appmetrica/analytics/adrevenue/other/impl/j;->a:Z

    iput-boolean v0, p0, Lio/appmetrica/analytics/adrevenue/other/impl/c;->a:Z

    iget-boolean p1, p1, Lio/appmetrica/analytics/adrevenue/other/impl/j;->b:Z

    iput-boolean p1, p0, Lio/appmetrica/analytics/adrevenue/other/impl/c;->b:Z

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/adrevenue/other/impl/c;)Lio/appmetrica/analytics/adrevenue/other/impl/j;
    .locals 1

    .line 14
    new-instance p0, Lio/appmetrica/analytics/adrevenue/other/impl/j;

    .line 15
    iget-boolean v0, p1, Lio/appmetrica/analytics/adrevenue/other/impl/c;->a:Z

    .line 16
    iget-boolean p1, p1, Lio/appmetrica/analytics/adrevenue/other/impl/c;->b:Z

    .line 17
    invoke-direct {p0, v0, p1}, Lio/appmetrica/analytics/adrevenue/other/impl/j;-><init>(ZZ)V

    return-object p0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/adrevenue/other/impl/j;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/adrevenue/other/impl/b;->a(Lio/appmetrica/analytics/adrevenue/other/impl/j;)Lio/appmetrica/analytics/adrevenue/other/impl/c;

    move-result-object p0

    return-object p0
.end method

.method public final toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lio/appmetrica/analytics/adrevenue/other/impl/c;

    new-instance p0, Lio/appmetrica/analytics/adrevenue/other/impl/j;

    iget-boolean v0, p1, Lio/appmetrica/analytics/adrevenue/other/impl/c;->a:Z

    iget-boolean p1, p1, Lio/appmetrica/analytics/adrevenue/other/impl/c;->b:Z

    invoke-direct {p0, v0, p1}, Lio/appmetrica/analytics/adrevenue/other/impl/j;-><init>(ZZ)V

    return-object p0
.end method
