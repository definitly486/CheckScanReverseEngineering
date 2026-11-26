.class public final Lio/appmetrica/analytics/impl/fl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/ol;

.field public b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/ol;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/fl;->a:Lio/appmetrica/analytics/impl/ol;

    return-void
.end method

.method public static synthetic a(Lio/appmetrica/analytics/impl/fl;)Lio/appmetrica/analytics/impl/ol;
    .locals 0

    .line 6
    iget-object p0, p0, Lio/appmetrica/analytics/impl/fl;->a:Lio/appmetrica/analytics/impl/ol;

    return-object p0
.end method

.method public static synthetic b(Lio/appmetrica/analytics/impl/fl;)Ljava/lang/Integer;
    .locals 0

    .line 9
    iget-object p0, p0, Lio/appmetrica/analytics/impl/fl;->b:Ljava/lang/Integer;

    return-object p0
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/gl;
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/gl;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/impl/gl;-><init>(Lio/appmetrica/analytics/impl/fl;)V

    return-object v0
.end method

.method public final b()Lio/appmetrica/analytics/impl/fl;
    .locals 1

    const/16 v0, 0xe10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/fl;->b:Ljava/lang/Integer;

    return-object p0
.end method
