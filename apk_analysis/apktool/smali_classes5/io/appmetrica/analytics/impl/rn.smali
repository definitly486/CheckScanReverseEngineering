.class public final Lio/appmetrica/analytics/impl/rn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/u;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/v;

.field public final b:Lio/appmetrica/analytics/impl/w;

.field public final c:Lcl4;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/v;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/v;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/rn;->a:Lio/appmetrica/analytics/impl/v;

    new-instance v0, Lio/appmetrica/analytics/impl/w;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/w;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/rn;->b:Lio/appmetrica/analytics/impl/w;

    new-instance p1, Lio/appmetrica/analytics/impl/qn;

    invoke-direct {p1, p0}, Lio/appmetrica/analytics/impl/qn;-><init>(Lio/appmetrica/analytics/impl/rn;)V

    new-instance v0, Lfh8;

    invoke-direct {v0, p1}, Lfh8;-><init>(Lll3;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/rn;->c:Lcl4;

    return-void
.end method

.method public static final synthetic a(Lio/appmetrica/analytics/impl/rn;)Lio/appmetrica/analytics/impl/x;
    .locals 0

    .line 12
    iget-object p0, p0, Lio/appmetrica/analytics/impl/rn;->a:Lio/appmetrica/analytics/impl/v;

    return-object p0
.end method

.method public static final synthetic b(Lio/appmetrica/analytics/impl/rn;)Lio/appmetrica/analytics/impl/x;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/rn;->b:Lio/appmetrica/analytics/impl/w;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/rn;->c:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p1
.end method
