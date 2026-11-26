.class public final Lio/appmetrica/analytics/impl/Zf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Co;
.implements Lio/appmetrica/analytics/impl/J8;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/U8;)I
    .locals 0

    .line 19
    const/4 p0, 0x2

    return p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/Z8;Lio/appmetrica/analytics/impl/rh;)[B
    .locals 0

    iget-object p0, p1, Lio/appmetrica/analytics/impl/Z8;->b:Ljava/lang/String;

    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_0

    new-array p0, p2, [B

    return-object p0

    :cond_0
    iget-object p0, p1, Lio/appmetrica/analytics/impl/Z8;->b:Ljava/lang/String;

    invoke-static {p0, p2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method
