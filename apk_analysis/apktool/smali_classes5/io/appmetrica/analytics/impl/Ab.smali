.class public final Lio/appmetrica/analytics/impl/Ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/tl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/xb;)Z
    .locals 0

    iget-object p0, p1, Lio/appmetrica/analytics/impl/xb;->f:Ljava/lang/Integer;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p0, p1, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 19
    check-cast p1, Lio/appmetrica/analytics/impl/xb;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Ab;->a(Lio/appmetrica/analytics/impl/xb;)Z

    move-result p0

    return p0
.end method
