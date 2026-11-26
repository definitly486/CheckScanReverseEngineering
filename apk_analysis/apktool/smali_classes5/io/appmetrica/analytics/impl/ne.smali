.class public final Lio/appmetrica/analytics/impl/ne;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/ug;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/ne;->a:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, "<unknown-package-installer>"

    :cond_0
    iput-object p1, p0, Lio/appmetrica/analytics/impl/ne;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lio/appmetrica/analytics/impl/ne;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/qg;)V
    .locals 3

    new-instance v0, Lio/appmetrica/analytics/impl/wg;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Package installer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ne;->a:Ljava/lang/String;

    const-string v2, " is not supported"

    invoke-static {v1, p0, v2}, Lme0;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2, v1}, Lio/appmetrica/analytics/impl/wg;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjh2;)V

    invoke-interface {p1, v0}, Lio/appmetrica/analytics/impl/qg;->a(Lio/appmetrica/analytics/impl/yg;)V

    return-void
.end method
