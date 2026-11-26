.class public final Lio/appmetrica/analytics/impl/N4;
.super Lio/appmetrica/analytics/impl/Tf;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/M4;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/I4;)V
    .locals 1

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Tf;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/M4;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/M4;-><init>(Lio/appmetrica/analytics/impl/I4;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/N4;->a:Lio/appmetrica/analytics/impl/M4;

    return-void
.end method


# virtual methods
.method public final a(I)Lio/appmetrica/analytics/impl/i9;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/appmetrica/analytics/impl/i9;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lio/appmetrica/analytics/impl/pb;->a(I)Lio/appmetrica/analytics/impl/pb;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/16 v1, 0xc

    if-eq p1, v1, :cond_2

    const/16 v1, 0xe

    if-eq p1, v1, :cond_1

    const/16 v1, 0x22

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/N4;->a:Lio/appmetrica/analytics/impl/M4;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/M4;->c:Lio/appmetrica/analytics/impl/ko;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/N4;->a:Lio/appmetrica/analytics/impl/M4;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/M4;->b:Lio/appmetrica/analytics/impl/Hi;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/N4;->a:Lio/appmetrica/analytics/impl/M4;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/M4;->a:Lio/appmetrica/analytics/impl/va;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    new-instance p0, Lio/appmetrica/analytics/impl/h9;

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/h9;-><init>(Ljava/util/List;)V

    return-object p0
.end method
