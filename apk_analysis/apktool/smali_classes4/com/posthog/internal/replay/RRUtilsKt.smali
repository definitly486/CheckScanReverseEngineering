.class public final Lcom/posthog/internal/replay/RRUtilsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final capture(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/posthog/internal/replay/RREvent;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    new-instance v0, Lb36;

    const-string v1, "$snapshot_data"

    invoke-direct {v0, v1, p0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    new-instance p0, Lb36;

    const-string v1, "$snapshot_source"

    const-string v2, "mobile"

    invoke-direct {p0, v1, v2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    filled-new-array {v0, p0}, [Lb36;

    move-result-object p0

    .line 49
    invoke-static {p0}, Ln05;->f([Lb36;)Ljava/util/LinkedHashMap;

    move-result-object p0

    .line 50
    sget-object v0, Loa6;->I:Loa6$a;

    sget-object v1, Lvb6;->SNAPSHOT:Lvb6;

    invoke-virtual {v1}, Lvb6;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x7a

    invoke-static {v0, v1, v2, p0, v3}, Lbc6$a;->a(Lbc6;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    return-void
.end method

.method public static final capture(Ljava/util/List;Lbc6;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/posthog/internal/replay/RREvent;",
            ">;",
            "Lbc6;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lb36;

    const-string v1, "$snapshot_data"

    invoke-direct {v0, v1, p0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lb36;

    const-string v2, "$snapshot_source"

    const-string v3, "mobile"

    invoke-direct {v1, v2, v3}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v0, v1}, [Lb36;

    move-result-object v0

    invoke-static {v0}, Ln05;->f([Lb36;)Ljava/util/LinkedHashMap;

    move-result-object v0

    if-eqz p1, :cond_0

    sget-object p0, Lvb6;->SNAPSHOT:Lvb6;

    invoke-virtual {p0}, Lvb6;->a()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const/16 v2, 0x7a

    invoke-static {p1, p0, v1, v0, v2}, Lbc6$a;->a(Lbc6;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/posthog/internal/replay/RRUtilsKt;->capture(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic capture$default(Ljava/util/List;Lbc6;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lcom/posthog/internal/replay/RRUtilsKt;->capture(Ljava/util/List;Lbc6;)V

    return-void
.end method
