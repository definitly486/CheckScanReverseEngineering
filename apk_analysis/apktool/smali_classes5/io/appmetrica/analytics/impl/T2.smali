.class public abstract Lio/appmetrica/analytics/impl/T2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Tf;

.field public final b:Lio/appmetrica/analytics/impl/Sa;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Tf;Lio/appmetrica/analytics/impl/Sa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/T2;->a:Lio/appmetrica/analytics/impl/Tf;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/Sa;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/Sa;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/impl/Sa;"
        }
    .end annotation

    .line 36
    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->b:Lio/appmetrica/analytics/impl/Sa;

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/S2;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/a6;",
            "Lio/appmetrica/analytics/impl/S2;",
            ")Z"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->a:Lio/appmetrica/analytics/impl/Tf;

    iget v0, p1, Lio/appmetrica/analytics/impl/a6;->d:I

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Tf;->a(I)Lio/appmetrica/analytics/impl/i9;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/h9;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/h9;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lio/appmetrica/analytics/impl/S2;->a(Ljava/lang/Object;Lio/appmetrica/analytics/impl/a6;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final b()Lio/appmetrica/analytics/impl/Tf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/impl/Tf;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/T2;->a:Lio/appmetrica/analytics/impl/Tf;

    return-object p0
.end method
