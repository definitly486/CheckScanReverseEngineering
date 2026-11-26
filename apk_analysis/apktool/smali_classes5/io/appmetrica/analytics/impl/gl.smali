.class public final Lio/appmetrica/analytics/impl/gl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/ol;

.field public final b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/fl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lio/appmetrica/analytics/impl/fl;->a(Lio/appmetrica/analytics/impl/fl;)Lio/appmetrica/analytics/impl/ol;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/gl;->a:Lio/appmetrica/analytics/impl/ol;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/fl;->b(Lio/appmetrica/analytics/impl/fl;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/gl;->b:Ljava/lang/Integer;

    return-void
.end method

.method public static final a(Lio/appmetrica/analytics/impl/ol;)Lio/appmetrica/analytics/impl/fl;
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/fl;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/impl/fl;-><init>(Lio/appmetrica/analytics/impl/ol;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Integer;
    .locals 0

    .line 6
    iget-object p0, p0, Lio/appmetrica/analytics/impl/gl;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method public final b()Lio/appmetrica/analytics/impl/ol;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/gl;->a:Lio/appmetrica/analytics/impl/ol;

    return-object p0
.end method
