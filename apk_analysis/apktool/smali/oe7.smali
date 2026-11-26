.class public final Loe7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lws6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lws6;"
    }
.end annotation


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 17

    new-instance v0, Lvp2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lig6;->DEFAULT:Lig6;

    sget-object v8, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    const/4 v9, 0x0

    const-string v10, "Null flags"

    if-eqz v8, :cond_4

    new-instance v3, Lfz;

    const-wide/16 v4, 0x7530

    const-wide/32 v6, 0x5265c00

    invoke-direct/range {v3 .. v8}, Lfz;-><init>(JJLjava/util/Set;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lig6;->HIGHEST:Lig6;

    if-eqz v8, :cond_3

    new-instance v3, Lfz;

    const-wide/16 v4, 0x3e8

    const-wide/32 v6, 0x5265c00

    invoke-direct/range {v3 .. v8}, Lfz;-><init>(JJLjava/util/Set;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lig6;->VERY_LOW:Lig6;

    if-eqz v8, :cond_2

    sget-object v3, Lje7$b;->DEVICE_IDLE:Lje7$b;

    filled-new-array {v3}, [Lje7$b;

    move-result-object v3

    new-instance v4, Ljava/util/HashSet;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v16

    if-eqz v16, :cond_1

    new-instance v11, Lfz;

    const-wide/32 v12, 0x5265c00

    const-wide/32 v14, 0x5265c00

    invoke-direct/range {v11 .. v16}, Lfz;-><init>(JJLjava/util/Set;)V

    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {}, Lig6;->values()[Lig6;

    move-result-object v3

    array-length v3, v3

    if-lt v2, v3, :cond_0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lez;

    invoke-direct {v2, v0, v1}, Lez;-><init>(Lhm1;Ljava/util/HashMap;)V

    return-object v2

    :cond_0
    const-string v0, "Not all priorities have been configured"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v9

    :cond_1
    invoke-static {v10}, Lo2;->d(Ljava/lang/String;)V

    return-object v9

    :cond_2
    invoke-static {v10}, Lo2;->d(Ljava/lang/String;)V

    return-object v9

    :cond_3
    invoke-static {v10}, Lo2;->d(Ljava/lang/String;)V

    return-object v9

    :cond_4
    invoke-static {v10}, Lo2;->d(Ljava/lang/String;)V

    return-object v9
.end method
