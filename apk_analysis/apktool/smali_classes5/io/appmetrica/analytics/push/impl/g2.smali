.class public abstract Lio/appmetrica/analytics/push/impl/g2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/content/Context;)I
    .locals 3

    invoke-static {p0}, Lio/appmetrica/analytics/push/impl/r;->a(Landroid/content/Context;)Lio/appmetrica/analytics/push/impl/r;

    move-result-object p0

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/r;->f:Lio/appmetrica/analytics/push/impl/v;

    invoke-virtual {p0}, Lio/appmetrica/analytics/push/impl/v;->c()Lio/appmetrica/analytics/push/impl/L1;

    move-result-object p0

    iget-object v0, p0, Lio/appmetrica/analytics/push/impl/L1;->a:Landroid/content/Context;

    iget-object v1, p0, Lio/appmetrica/analytics/push/impl/L1;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pending_intent_id"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const v1, 0x5a240e19

    if-lt v0, v1, :cond_0

    const v2, 0x5a243527

    if-le v0, v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/push/impl/L1;->a(I)V

    return v0
.end method
