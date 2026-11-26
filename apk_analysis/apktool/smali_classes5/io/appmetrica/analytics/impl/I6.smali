.class public final Lio/appmetrica/analytics/impl/I6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Hg;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/Hg;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Hg;-><init>()V

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/I6;-><init>(Lio/appmetrica/analytics/impl/Hg;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Hg;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lio/appmetrica/analytics/impl/I6;->a:Lio/appmetrica/analytics/impl/Hg;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/i6;)Lio/appmetrica/analytics/impl/H6;
    .locals 0

    .line 27
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/H6;)Lio/appmetrica/analytics/impl/i6;
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/I6;->a:Lio/appmetrica/analytics/impl/Hg;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/H6;->a:Lio/appmetrica/analytics/impl/Gg;

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Hg;->a(Lio/appmetrica/analytics/impl/Gg;)Lio/appmetrica/analytics/impl/i6;

    move-result-object p0

    const/4 v0, 0x1

    iput v0, p0, Lio/appmetrica/analytics/impl/i6;->g:I

    new-instance v0, Lio/appmetrica/analytics/impl/h6;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/h6;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/i6;->h:Lio/appmetrica/analytics/impl/h6;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/H6;->b:Ljava/lang/String;

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->correctIllFormedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lio/appmetrica/analytics/impl/h6;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/H6;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/I6;->a(Lio/appmetrica/analytics/impl/H6;)Lio/appmetrica/analytics/impl/i6;

    move-result-object p0

    return-object p0
.end method

.method public final toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/i6;

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
