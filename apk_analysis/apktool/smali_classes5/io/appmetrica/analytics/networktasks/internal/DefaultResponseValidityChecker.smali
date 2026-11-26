.class public final Lio/appmetrica/analytics/networktasks/internal/DefaultResponseValidityChecker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/networktasks/internal/ResponseValidityChecker;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isResponseValid(I)Z
    .locals 0

    const/16 p0, 0x190

    if-eq p1, p0, :cond_0

    const/16 p0, 0x1f4

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
