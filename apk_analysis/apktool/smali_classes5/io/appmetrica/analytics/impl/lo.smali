.class public final Lio/appmetrica/analytics/impl/lo;
.super Lio/appmetrica/analytics/impl/Ug;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/i5;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/Ug;-><init>(Lio/appmetrica/analytics/impl/i5;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/a6;)Z
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ug;->a:Lio/appmetrica/analytics/impl/i5;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/i5;->c:Lio/appmetrica/analytics/impl/jf;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/jf;->j()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lio/appmetrica/analytics/impl/a6;->h:Ljava/lang/String;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ug;->a:Lio/appmetrica/analytics/impl/i5;

    invoke-virtual {v1, p1}, Lio/appmetrica/analytics/impl/i5;->a(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->equalsNullSafety(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ug;->a:Lio/appmetrica/analytics/impl/i5;

    invoke-static {}, Lio/appmetrica/analytics/impl/a4;->o()Lio/appmetrica/analytics/impl/a6;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/i5;->a(Lio/appmetrica/analytics/impl/a6;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
