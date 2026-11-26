.class public final Lio/appmetrica/analytics/impl/r5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Ko;


# instance fields
.field public final a:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lb36<",
            "Ljava/lang/String;",
            "+",
            "Lio/appmetrica/analytics/impl/Ko;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/r5;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 27
    iget-object p0, p0, Lio/appmetrica/analytics/impl/r5;->a:Ljava/util/List;

    .line 28
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb36;

    .line 29
    iget-object v0, v0, Lb36;->c:Ljava/lang/Object;

    .line 30
    check-cast v0, Lio/appmetrica/analytics/impl/Ko;

    invoke-interface {v0}, Lio/appmetrica/analytics/impl/Ko;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/r5;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb36;

    iget-object v0, v0, Lb36;->c:Ljava/lang/Object;

    check-cast v0, Lio/appmetrica/analytics/impl/Ko;

    invoke-interface {v0, p1}, Lio/appmetrica/analytics/impl/Ko;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lio/appmetrica/analytics/impl/r5;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb36;

    iget-object v0, v0, Lb36;->c:Ljava/lang/Object;

    check-cast v0, Lio/appmetrica/analytics/impl/Ko;

    invoke-interface {v0}, Lio/appmetrica/analytics/impl/Ko;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final flushAsync()V
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/r5;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb36;

    iget-object v0, v0, Lb36;->c:Ljava/lang/Object;

    check-cast v0, Lio/appmetrica/analytics/impl/Ko;

    invoke-interface {v0}, Lio/appmetrica/analytics/impl/Ko;->flushAsync()V

    goto :goto_0

    :cond_0
    return-void
.end method
