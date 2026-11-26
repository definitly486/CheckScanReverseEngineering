.class public final Lio/appmetrica/analytics/impl/Ol;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/y2;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/po;Lio/appmetrica/analytics/impl/ro;)Lio/appmetrica/analytics/impl/ro;
    .locals 1

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
.end method
