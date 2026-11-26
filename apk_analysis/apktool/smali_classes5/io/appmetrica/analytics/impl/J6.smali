.class public final Lio/appmetrica/analytics/impl/J6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Co;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Co;

.field public final b:Lio/appmetrica/analytics/impl/Co;

.field public final c:Lio/appmetrica/analytics/impl/T8;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Co;Lio/appmetrica/analytics/impl/Co;Lio/appmetrica/analytics/impl/T8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/J6;->a:Lio/appmetrica/analytics/impl/Co;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/J6;->b:Lio/appmetrica/analytics/impl/Co;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/J6;->c:Lio/appmetrica/analytics/impl/T8;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/T8;
    .locals 0

    .line 26
    iget-object p0, p0, Lio/appmetrica/analytics/impl/J6;->c:Lio/appmetrica/analytics/impl/T8;

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/Z8;Lio/appmetrica/analytics/impl/rh;)[B
    .locals 2

    iget-object v0, p1, Lio/appmetrica/analytics/impl/Z8;->w:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/J6;->a:Lio/appmetrica/analytics/impl/Co;

    invoke-interface {p0, p1, p2}, Lio/appmetrica/analytics/impl/Co;->a(Lio/appmetrica/analytics/impl/Z8;Lio/appmetrica/analytics/impl/rh;)[B

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/J6;->b:Lio/appmetrica/analytics/impl/Co;

    invoke-interface {p0, p1, p2}, Lio/appmetrica/analytics/impl/Co;->a(Lio/appmetrica/analytics/impl/Z8;Lio/appmetrica/analytics/impl/rh;)[B

    move-result-object p0

    return-object p0
.end method

.method public final b()Lio/appmetrica/analytics/impl/Co;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/J6;->b:Lio/appmetrica/analytics/impl/Co;

    return-object p0
.end method

.method public final c()Lio/appmetrica/analytics/impl/Co;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/J6;->a:Lio/appmetrica/analytics/impl/Co;

    return-object p0
.end method
