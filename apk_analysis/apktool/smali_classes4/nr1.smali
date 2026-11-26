.class public final synthetic Lnr1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lnr1;->b:I

    iput-object p2, p0, Lnr1;->c:Ljava/lang/Object;

    iput-object p3, p0, Lnr1;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lnr1;->b:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lnr1;->c:Ljava/lang/Object;

    check-cast v1, Lcom/my/target/b1;

    iget-object v0, v0, Lnr1;->d:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/my/target/t0;

    sget-object v6, Lrh5;->c:Lkt9;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Lcom/my/target/u;

    iget-object v0, v1, Lcom/my/target/u;->d:Lkia;

    if-eqz v0, :cond_1

    new-instance v2, Lj8a;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/my/target/b1;->d(Lvha;Lj8a;)Lvha;

    move-result-object v0

    check-cast v0, Lkia;

    if-eqz v0, :cond_0

    new-instance v2, Lj8a;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    :cond_0
    invoke-virtual {v1, v0, v2, v5}, Lcom/my/target/b1;->c(Lvha;Lj8a;Lcom/my/target/t0;)V

    goto/16 :goto_2

    :cond_1
    invoke-static {v6}, Lzfa;->a(Lkt9;)V

    invoke-virtual {v6}, Lkt9;->a()Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/my/target/b1;->a:Lz2a;

    iget-object v10, v0, Lz2a;->g:Lz8a;

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x3ea

    invoke-virtual/range {v10 .. v15}, Lz8a;->a(Ljava/lang/String;IIILjava/lang/String;)V

    sget-object v0, Ll6a;->d:Ll6a;

    new-instance v2, Lj8a;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v0, v2, Lj8a;->a:Ll6a;

    invoke-virtual {v1, v9, v2, v5}, Lcom/my/target/b1;->c(Lvha;Lj8a;Lcom/my/target/t0;)V

    goto/16 :goto_2

    :cond_2
    iget-object v0, v6, Lkt9;->a:Landroid/content/Context;

    invoke-static {v0}, Ln6a;->a(Landroid/content/Context;)Ln6a;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "hosts"

    invoke-virtual {v0, v3}, Ln6a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_3
    const-string v3, "ad.mail.ru"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lwm9$a;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v7, v3

    iget-object v3, v1, Lcom/my/target/b1;->a:Lz2a;

    new-instance v8, Lv4a;

    invoke-direct {v8, v1, v5, v2, v0}, Lv4a;-><init>(Lcom/my/target/b1;Lcom/my/target/t0;Ljava/util/ArrayList;Ln6a;)V

    iget-object v0, v3, Lz2a;->g:Lz8a;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lz8a;->b(I)V

    sget v0, Lmu9;->a:I

    or-int/lit16 v0, v0, 0x130

    sput v0, Lmu9;->a:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v3, Lz2a;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb8;

    invoke-interface {v2}, Lb8;->a()Lc8;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "DefaultAdServiceBuilder: no AdNetworkLoaders, direct call result"

    invoke-static {v9, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v7, v8

    invoke-static/range {v2 .. v7}, Lwm9$a;->a(Ljava/lang/String;Lz2a;Ljava/util/Map;Lcom/my/target/t0;Lkt9;Lv4a;)V

    goto :goto_2

    :cond_6
    move-object v2, v4

    const-string v1, "DefaultAdServiceBuilder: loading mediation params"

    invoke-static {v9, v1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lxy9;

    iget-object v10, v3, Lz2a;->f:Ljava/lang/String;

    new-instance v2, Lum9;

    move-object/from16 v16, v5

    move-object v5, v3

    move-object v3, v7

    move-object v7, v6

    move-object/from16 v6, v16

    invoke-direct/range {v2 .. v8}, Lum9;-><init>(Lwm9$a;Ljava/lang/String;Lz2a;Lcom/my/target/t0;Lkt9;Lv4a;)V

    move-object v6, v7

    invoke-direct {v1, v10, v0, v6, v2}, Lxy9;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Lkt9;Lum9;)V

    iget v0, v1, Lxy9;->f:I

    if-nez v0, :cond_7

    const-string v0, "MediationParamsLoader: empty loaders list, direct onResult call"

    invoke-static {v9, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lxy9;->a()V

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "MediationParamsLoader: params loading started, loaders count: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v1, Lxy9;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lxy9;->b:Ld9a;

    invoke-virtual {v0, v1}, Ld9a;->b(Ljava/lang/Runnable;)V

    iget-object v0, v1, Lxy9;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MediationParamsLoader: loading params for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Lc8;->b()V

    invoke-interface {v1}, Lc8;->a()V

    goto :goto_1

    :cond_8
    :goto_2
    return-void

    :pswitch_0
    iget-object v1, v0, Lnr1;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;

    iget-object v0, v0, Lnr1;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->d(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;Ljava/lang/String;)V

    return-void

    :pswitch_1
    iget-object v1, v0, Lnr1;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/activity/ComponentActivity;

    iget-object v0, v0, Lnr1;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/OnBackPressedDispatcher;

    invoke-static {v1, v0}, Landroidx/activity/ComponentActivity;->b(Landroidx/activity/ComponentActivity;Landroidx/activity/OnBackPressedDispatcher;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
