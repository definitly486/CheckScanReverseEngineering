.class public final Lio/appmetrica/analytics/impl/Vb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/y2;


# instance fields
.field public final a:Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionLimitation;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionLimitation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Vb;->a:Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionLimitation;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/po;Lio/appmetrica/analytics/impl/ro;)Lio/appmetrica/analytics/impl/ro;
    .locals 2

    iget v0, p1, Lio/appmetrica/analytics/impl/po;->b:I

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Vb;->a:Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionLimitation;

    invoke-virtual {v1}, Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionLimitation;->getMaxSize()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget p0, p2, Lio/appmetrica/analytics/impl/ro;->b:I

    new-instance v0, Ljava/lang/String;

    iget-object v1, p2, Lio/appmetrica/analytics/impl/ro;->a:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iget-object v1, p1, Lio/appmetrica/analytics/impl/po;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/ro;

    if-eqz p0, :cond_1

    iget-object p0, p1, Lio/appmetrica/analytics/impl/po;->a:Landroid/util/SparseArray;

    iget p1, p2, Lio/appmetrica/analytics/impl/ro;->b:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    new-instance p1, Ljava/lang/String;

    iget-object v0, p2, Lio/appmetrica/analytics/impl/ro;->a:[B

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :cond_0
    iget v0, p1, Lio/appmetrica/analytics/impl/po;->b:I

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Vb;->a:Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionLimitation;

    invoke-virtual {p0}, Lio/appmetrica/analytics/coreutils/internal/limitation/CollectionLimitation;->getMaxSize()I

    move-result p0

    if-ge v0, p0, :cond_1

    iget-object p0, p1, Lio/appmetrica/analytics/impl/po;->a:Landroid/util/SparseArray;

    iget v0, p2, Lio/appmetrica/analytics/impl/ro;->b:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    new-instance v0, Ljava/lang/String;

    iget-object v1, p2, Lio/appmetrica/analytics/impl/ro;->a:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p0, p1, Lio/appmetrica/analytics/impl/po;->b:I

    add-int/lit8 p0, p0, 0x1

    iput p0, p1, Lio/appmetrica/analytics/impl/po;->b:I

    :cond_1
    return-object p2
.end method
