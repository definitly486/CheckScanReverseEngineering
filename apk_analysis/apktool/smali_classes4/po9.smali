.class public final synthetic Lpo9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lpo9;->b:I

    iput-object p1, p0, Lpo9;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lpo9;->b:I

    iget-object p0, p0, Lpo9;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    move-object v0, p0

    check-cast v0, Ll5a;

    monitor-enter v0

    :try_start_0
    iget-object p0, v0, Ll5a;->h:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Ll5a;->h:Ljava/util/HashMap;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v1, v0, Ll5a;->d:Lm6a;

    iget-object v0, v0, Ll5a;->e:Lzs9;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz8a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll5a$a;

    iget-object v3, v1, Ll5a$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    new-instance v3, Lm6a$a;

    iget-object v5, v1, Ll5a$a;->a:Ljava/util/ArrayList;

    invoke-direct {v3, v0, v2, v5}, Lm6a$a;-><init>(Lzs9;Lz8a;Ljava/util/List;)V

    :try_start_1
    invoke-static {v3}, Lm6a;->a(Lm6a$a;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lh8a;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    const-string v6, "https://sdk.mail.ru/sdk/log/v2"

    invoke-virtual {v5, v6, v3, v4}, Lh8a;->U(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lvda;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_1
    iget-object v1, v1, Ll5a$a;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catchall_1
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpp9;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll5a$b;

    iget-object v6, v3, Ll5a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Lm6a$a;

    iget-object v3, v3, Ll5a$b;->a:Ljava/util/ArrayList;

    invoke-direct {v6, v0, v2, v5, v3}, Lm6a$a;-><init>(Lzs9;Lz8a;Lpp9;Ljava/util/List;)V

    :try_start_2
    invoke-static {v6}, Lm6a;->a(Lm6a$a;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lh8a;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    const-string v6, "https://sdk.mail.ru/sdk/log/v2"

    invoke-virtual {v5, v6, v3, v4}, Lh8a;->U(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lvda;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :cond_3
    return-void

    :catchall_2
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :pswitch_0
    check-cast p0, Lyads/bj2;

    invoke-static {p0}, Lyads/bj2;->b(Lyads/bj2;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
