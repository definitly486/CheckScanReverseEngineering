.class public final Lio/appmetrica/analytics/impl/Mf;
.super Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalListTrimmer;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/coreutils/internal/limitation/hierarchical/HierarchicalListTrimmer;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/c0;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p1, Lio/appmetrica/analytics/impl/c0;->b:Ljava/lang/String;

    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->getUtf8BytesLength(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, 0xc

    return p0
.end method

.method public final bridge synthetic byteSizeOf(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/c0;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Mf;->a(Lio/appmetrica/analytics/impl/c0;)I

    move-result p0

    return p0
.end method
