.class public final Lio/appmetrica/analytics/impl/x9;
.super Lio/appmetrica/analytics/impl/Tf;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/th;

.field public final b:Lio/appmetrica/analytics/impl/vh;

.field public final c:Lio/appmetrica/analytics/impl/hh;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/i5;)V
    .locals 1

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Tf;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/th;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/th;-><init>(Lio/appmetrica/analytics/impl/i5;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/x9;->a:Lio/appmetrica/analytics/impl/th;

    new-instance v0, Lio/appmetrica/analytics/impl/vh;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/vh;-><init>(Lio/appmetrica/analytics/impl/i5;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/x9;->b:Lio/appmetrica/analytics/impl/vh;

    new-instance v0, Lio/appmetrica/analytics/impl/hh;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/hh;-><init>(Lio/appmetrica/analytics/impl/i5;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/x9;->c:Lio/appmetrica/analytics/impl/hh;

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

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {p1}, Lio/appmetrica/analytics/impl/pb;->a(I)Lio/appmetrica/analytics/impl/pb;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/16 v1, 0x1b

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lio/appmetrica/analytics/impl/x9;->b:Lio/appmetrica/analytics/impl/vh;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lio/appmetrica/analytics/impl/x9;->a:Lio/appmetrica/analytics/impl/th;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/x9;->c:Lio/appmetrica/analytics/impl/hh;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/x9;->a:Lio/appmetrica/analytics/impl/th;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_0
    new-instance p0, Lio/appmetrica/analytics/impl/h9;

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/h9;-><init>(Ljava/util/List;)V

    return-object p0
.end method
