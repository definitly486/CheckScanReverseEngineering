.class public final Lio/appmetrica/analytics/impl/Pl;
.super Lio/appmetrica/analytics/impl/Ja;
.source "SourceFile"


# instance fields
.field public final b:Lio/appmetrica/analytics/impl/Ug;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/zi;Lio/appmetrica/analytics/impl/Ug;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/Ja;-><init>(Lio/appmetrica/analytics/impl/zi;)V

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Pl;->b:Lio/appmetrica/analytics/impl/Ug;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/impl/Ug;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Pl;->b:Lio/appmetrica/analytics/impl/Ug;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
