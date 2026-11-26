.class public abstract Lio/appmetrica/analytics/impl/F4;
.super Lio/appmetrica/analytics/impl/Md;
.source "SourceFile"


# instance fields
.field public final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;Lio/appmetrica/analytics/coreutils/internal/validation/Validator;Lio/appmetrica/analytics/impl/X2;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4, p5}, Lio/appmetrica/analytics/impl/Md;-><init>(ILjava/lang/String;Lio/appmetrica/analytics/coreutils/internal/validation/Validator;Lio/appmetrica/analytics/impl/X2;)V

    iput-object p3, p0, Lio/appmetrica/analytics/impl/F4;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/po;)V
    .locals 4

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Md;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Md;->d:Lio/appmetrica/analytics/impl/X2;

    iget v1, p0, Lio/appmetrica/analytics/impl/Md;->b:I

    iget-object v2, p0, Lio/appmetrica/analytics/impl/Md;->a:Ljava/lang/String;

    iget-object v3, p1, Lio/appmetrica/analytics/impl/po;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/impl/ro;

    invoke-virtual {v0, p1, v1, p0}, Lio/appmetrica/analytics/impl/X2;->a(Lio/appmetrica/analytics/impl/po;Lio/appmetrica/analytics/impl/ro;Lio/appmetrica/analytics/impl/x2;)Lio/appmetrica/analytics/impl/ro;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/F4;->a(Lio/appmetrica/analytics/impl/ro;)V

    :cond_0
    return-void
.end method

.method public abstract a(Lio/appmetrica/analytics/impl/ro;)V
.end method

.method public final g()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/F4;->f:Ljava/lang/Object;

    return-object p0
.end method
