.class public final Lio/appmetrica/analytics/impl/za;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/he;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;Ljava/lang/String;)Lio/appmetrica/analytics/impl/p9;
    .locals 0

    new-instance p0, Lio/appmetrica/analytics/impl/p9;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/p9;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lio/appmetrica/analytics/impl/p9;->a:I

    :cond_0
    if-eqz p2, :cond_1

    iput-object p2, p0, Lio/appmetrica/analytics/impl/p9;->b:Ljava/lang/String;

    :cond_1
    return-object p0
.end method
