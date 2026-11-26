.class public final Lio/appmetrica/analytics/push/impl/S1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/push/lazypush/LazyPushTransformRule;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/push/impl/S1;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getNewValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object p1, p0, Lio/appmetrica/analytics/push/impl/S1;->a:Ljava/lang/String;

    invoke-static {p1}, Lio/appmetrica/analytics/push/coreutils/internal/utils/CoreUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/S1;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_0
    new-instance p0, Lio/appmetrica/analytics/push/impl/A2;

    const-string p1, "PushId is empty"

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/appmetrica/analytics/push/impl/A2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public final getPatternList()Ljava/util/List;
    .locals 0

    const-string p0, "pushId"

    invoke-static {p0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
