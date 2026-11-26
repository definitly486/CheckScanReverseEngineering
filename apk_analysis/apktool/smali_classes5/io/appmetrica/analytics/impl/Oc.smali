.class public final Lio/appmetrica/analytics/impl/Oc;
.super Lio/appmetrica/analytics/impl/Q2;
.source "SourceFile"


# static fields
.field public static final b:Lio/appmetrica/analytics/impl/Nc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/Nc;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Nc;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/impl/Oc;->b:Lio/appmetrica/analytics/impl/Nc;

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/W9;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/W9;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lio/appmetrica/analytics/impl/Oc;->b:Lio/appmetrica/analytics/impl/Nc;

    invoke-static {v0, p1, p2}, Lio/appmetrica/analytics/impl/Nc;->a(Lio/appmetrica/analytics/impl/Nc;Lio/appmetrica/analytics/impl/W9;Ljava/util/Map;)Lio/appmetrica/analytics/impl/N9;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/Q2;-><init>(Lio/appmetrica/analytics/impl/N9;)V

    return-void
.end method
