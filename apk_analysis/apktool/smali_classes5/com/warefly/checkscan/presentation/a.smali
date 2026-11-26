.class public final Lcom/warefly/checkscan/presentation/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lkv;

.field public final b:Ljf6;

.field public final c:Lqe;

.field public final d:Lo87;

.field public final e:Lmu6;

.field public final f:Lgr7;

.field public final g:Lje6;

.field public final h:Lmy5;

.field public final i:Ly22;

.field public final j:Lct6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lct6<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lhi0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhi0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Lhi0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhi0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkv;Ljf6;Lqe;Lo87;Lmu6;Lgr7;Lje6;Lmy5;Ly22;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/a;->a:Lkv;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/a;->b:Ljf6;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/a;->c:Lqe;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/a;->d:Lo87;

    iput-object p5, p0, Lcom/warefly/checkscan/presentation/a;->e:Lmu6;

    iput-object p6, p0, Lcom/warefly/checkscan/presentation/a;->f:Lgr7;

    iput-object p7, p0, Lcom/warefly/checkscan/presentation/a;->g:Lje6;

    iput-object p8, p0, Lcom/warefly/checkscan/presentation/a;->h:Lmy5;

    iput-object p9, p0, Lcom/warefly/checkscan/presentation/a;->i:Ly22;

    new-instance p1, Lct6;

    invoke-direct {p1}, Lct6;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/a;->j:Lct6;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lhi0;->i(Ljava/lang/Object;)Lhi0;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/a;->k:Lhi0;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Lhi0;->i(Ljava/lang/Object;)Lhi0;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/a;->l:Lhi0;

    sget-object p1, Lqo2;->a:Loi2;

    sget-object p1, Luy4;->a:Lhu3;

    new-instance p2, Lcom/warefly/checkscan/presentation/a$a;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/warefly/checkscan/presentation/a$a;-><init>(Lcom/warefly/checkscan/presentation/a;Le02;)V

    const/4 p0, 0x2

    invoke-static {p9, p1, p3, p2, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void
.end method


# virtual methods
.method public final a()Lrx1;
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/a;->b:Ljf6;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljf6;->b1(Z)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/a;->k:Lhi0;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lhi0;->onNext(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/a;->a:Lkv;

    invoke-virtual {v0}, Lkv;->a()Lg18;

    move-result-object v0

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v1, Lmp;

    invoke-direct {v1, p0}, Lmp;-><init>(Lcom/warefly/checkscan/presentation/a;)V

    new-instance v2, Luz7;

    invoke-direct {v2, v0, v1}, Luz7;-><init>(Lmz7;Lh6;)V

    new-instance v0, Lrp;

    invoke-direct {v0, p0}, Lrp;-><init>(Lcom/warefly/checkscan/presentation/a;)V

    new-instance v1, Lsp;

    invoke-direct {v1, p0}, Lsp;-><init>(Lcom/warefly/checkscan/presentation/a;)V

    invoke-static {v2, v0, v1}, Lyb8;->d(Lmz7;Lnl3;Lnl3;)Lrx1;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lcom/warefly/checkscan/presentation/Deeplink$n;Luj1;)V
    .locals 11

    iget-object v0, p1, Lcom/warefly/checkscan/presentation/Deeplink$n;->c:Ljava/lang/String;

    invoke-static {}, Lu96;->e()Lar4;

    move-result-object v1

    iget-boolean v2, p1, Lcom/warefly/checkscan/presentation/Deeplink$n;->d:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    sget-object v2, Lmy5;->b:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/warefly/checkscan/presentation/a;->h:Lmy5;

    iget-object v7, v7, Lmy5;->a:Ljq4;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v7, v7, Ljq4;->a:Landroid/content/pm/PackageManager;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v8, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v8, 0x10000

    invoke-virtual {v7, v6, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    xor-int/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    new-instance v7, Lk57$a;

    invoke-direct {v7, v6}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object v6, v7

    :goto_0
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v8, v6, Lk57$a;

    if-eqz v8, :cond_1

    move-object v6, v7

    :cond_1
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_2
    move-object v5, v4

    :goto_1
    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_3

    new-instance v2, Lly5$a$c;

    invoke-direct {v2, v5}, Lly5$a$c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lar4;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-boolean v2, p1, Lcom/warefly/checkscan/presentation/Deeplink$n;->e:Z

    sget-object v5, Lly5$b;->a:Lly5$b;

    if-eqz v2, :cond_4

    invoke-virtual {v1, v5}, Lar4;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-boolean p1, p1, Lcom/warefly/checkscan/presentation/Deeplink$n;->f:Z

    sget-object v2, Lly5$a$a;->a:Lly5$a$a;

    if-eqz p1, :cond_5

    invoke-virtual {v1, v2}, Lar4;->add(Ljava/lang/Object;)Z

    :cond_5
    sget-object p1, Lly5$a$b;->a:Lly5$a$b;

    invoke-virtual {v1, p1}, Lar4;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lu96;->d(Lar4;)Lar4;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lar4;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    :cond_6
    move-object v6, v1

    check-cast v6, Lar4$b;

    invoke-virtual {v6}, Lar4$b;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v6}, Lar4$b;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lly5;

    invoke-static {v6, v5}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "Bank Clicks"

    if-eqz v7, :cond_7

    new-instance p1, Lw69;

    new-instance p2, Lcom/warefly/checkscan/shared/universalWebView/presentation/UniversalWebViewArgs;

    invoke-direct {p2, v0, v4, v3, v3}, Lcom/warefly/checkscan/shared/universalWebView/presentation/UniversalWebViewArgs;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-direct {p1, p2}, Lw69;-><init>(Lcom/warefly/checkscan/shared/universalWebView/presentation/UniversalWebViewArgs;)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/a;->d:Lo87;

    invoke-virtual {p0, p1}, Lo87;->d(Ldf7;)V

    new-instance p0, Lkd$d$b;

    const-string p1, "WebView"

    invoke-static {p1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v8, p1}, Lkd;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0}, Lkd;->a()V

    return-void

    :cond_7
    instance-of v7, v6, Lly5$a;

    if-eqz v7, :cond_6

    invoke-virtual {p2, v6, v0}, Luj1;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_6

    check-cast v6, Lly5$a;

    instance-of p0, v6, Lly5$a$c;

    if-eqz p0, :cond_8

    new-instance p0, Lkd$d$c;

    const-string p1, "Yandex"

    invoke-static {p1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v8, p1}, Lkd;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_3

    :cond_8
    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_2
    if-eqz v3, :cond_a

    new-instance p0, Lkd$d$a;

    const-string p1, "Another Browser"

    invoke-static {p1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v8, p1}, Lkd;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    :goto_3
    invoke-virtual {p0}, Lkd;->a()V

    return-void

    :cond_a
    invoke-static {}, Lme0;->e()V

    :cond_b
    return-void
.end method

.method public final c(Lcom/warefly/checkscan/presentation/Deeplink;ZLuj1;Lvj1;)V
    .locals 11

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/a;->b:Ljf6;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljf6;->b1(Z)V

    instance-of v2, p1, Lcom/warefly/checkscan/presentation/Deeplink$n;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/warefly/checkscan/presentation/Deeplink$n;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/warefly/checkscan/presentation/a;->d(Lcom/warefly/checkscan/presentation/Deeplink$n;ZLuj1;Lvj1;)V

    return-void

    :cond_0
    instance-of p3, p1, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow;

    const/4 p4, 0x2

    const/4 v2, 0x1

    if-eqz p3, :cond_1

    new-instance p3, Lcom/warefly/checkscan/presentation/c;

    check-cast p1, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow;

    invoke-direct {p3, p1}, Lcom/warefly/checkscan/presentation/c;-><init>(Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow;)V

    goto/16 :goto_2

    :cond_1
    instance-of p3, p1, Lcom/warefly/checkscan/presentation/Deeplink$w;

    const/4 v3, 0x0

    if-eqz p3, :cond_4

    invoke-interface {v0}, Ljf6;->G0()Z

    move-result p3

    if-nez p3, :cond_3

    check-cast p1, Lcom/warefly/checkscan/presentation/Deeplink$w;

    iget-object p3, p1, Lcom/warefly/checkscan/presentation/Deeplink$w;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/warefly/checkscan/presentation/Deeplink$w;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/warefly/checkscan/presentation/Deeplink$w;->e:Ljava/lang/String;

    const-string v3, "profileBonus"

    invoke-static {p1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/a;->f:Lgr7;

    iget-object p1, p1, Lgr7;->a:Lmw5;

    invoke-interface {p1}, Lmw5;->b()V

    :cond_2
    new-instance p1, Lix;

    new-instance v3, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;

    invoke-direct {v3, p3, v0, p4}, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p1, v3}, Lix;-><init>(Lcom/warefly/checkscan/auth/presentation/flow/AuthReason;)V

    :goto_0
    move-object p3, p1

    goto/16 :goto_2

    :cond_3
    move-object p3, v3

    goto/16 :goto_2

    :cond_4
    instance-of p3, p1, Lcom/warefly/checkscan/presentation/Deeplink$r;

    if-eqz p3, :cond_6

    invoke-interface {v0}, Ljf6;->G0()Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p3, Lqh7;

    sget-object p1, Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason$MainProfile;->b:Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason$MainProfile;

    invoke-direct {p3, p1}, Lqh7;-><init>(Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason;)V

    goto/16 :goto_2

    :cond_5
    new-instance p3, Lix;

    new-instance p1, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;

    invoke-direct {p1, v3, v3, p4}, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p3, p1}, Lix;-><init>(Lcom/warefly/checkscan/auth/presentation/flow/AuthReason;)V

    goto/16 :goto_2

    :cond_6
    instance-of p3, p1, Lcom/warefly/checkscan/presentation/Deeplink$t;

    if-eqz p3, :cond_7

    new-instance v4, Lwh7;

    check-cast p1, Lcom/warefly/checkscan/presentation/Deeplink$t;

    iget-object v5, p1, Lcom/warefly/checkscan/presentation/Deeplink$t;->c:Ljava/lang/String;

    const/4 v9, 0x0

    const/16 v10, 0x1c

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    invoke-direct/range {v4 .. v10}, Lwh7;-><init>(Ljava/lang/String;ZJLjava/lang/String;I)V

    :goto_1
    move-object p3, v4

    goto/16 :goto_2

    :cond_7
    instance-of p3, p1, Lcom/warefly/checkscan/presentation/Deeplink$v;

    if-eqz p3, :cond_8

    new-instance v4, Lwh7;

    check-cast p1, Lcom/warefly/checkscan/presentation/Deeplink$v;

    iget-wide v7, p1, Lcom/warefly/checkscan/presentation/Deeplink$v;->d:J

    iget-object v9, p1, Lcom/warefly/checkscan/presentation/Deeplink$v;->c:Ljava/lang/String;

    const/4 v10, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v4 .. v10}, Lwh7;-><init>(Ljava/lang/String;ZJLjava/lang/String;I)V

    goto :goto_1

    :cond_8
    instance-of p3, p1, Lcom/warefly/checkscan/presentation/Deeplink$c;

    if-eqz p3, :cond_9

    new-instance v4, Lwh7;

    const/4 v9, 0x0

    const/16 v10, 0x1d

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    invoke-direct/range {v4 .. v10}, Lwh7;-><init>(Ljava/lang/String;ZJLjava/lang/String;I)V

    goto :goto_1

    :cond_9
    instance-of p3, p1, Lcom/warefly/checkscan/presentation/Deeplink$s;

    if-eqz p3, :cond_a

    new-instance v4, Lwh7;

    const/4 v9, 0x0

    const/16 v10, 0x1d

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    invoke-direct/range {v4 .. v10}, Lwh7;-><init>(Ljava/lang/String;ZJLjava/lang/String;I)V

    goto :goto_1

    :cond_a
    instance-of p3, p1, Lcom/warefly/checkscan/presentation/Deeplink$Catalog;

    if-eqz p3, :cond_b

    new-instance p3, Lcom/warefly/checkscan/presentation/d;

    check-cast p1, Lcom/warefly/checkscan/presentation/Deeplink$Catalog;

    invoke-direct {p3, p1}, Lcom/warefly/checkscan/presentation/d;-><init>(Lcom/warefly/checkscan/presentation/Deeplink$Catalog;)V

    goto/16 :goto_2

    :cond_b
    instance-of p3, p1, Lcom/warefly/checkscan/presentation/Deeplink$k;

    if-eqz p3, :cond_c

    new-instance p3, Lqh7;

    sget-object p1, Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason$Notifications;->b:Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason$Notifications;

    invoke-direct {p3, p1}, Lqh7;-><init>(Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason;)V

    goto/16 :goto_2

    :cond_c
    instance-of p3, p1, Lcom/warefly/checkscan/presentation/Deeplink$j;

    if-eqz p3, :cond_d

    new-instance p3, Luh7;

    check-cast p1, Lcom/warefly/checkscan/presentation/Deeplink$j;

    iget-object p1, p1, Lcom/warefly/checkscan/presentation/Deeplink$j;->c:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p3, p1}, Luh7;-><init>(I)V

    goto/16 :goto_2

    :cond_d
    instance-of p3, p1, Lcom/warefly/checkscan/presentation/Deeplink$f;

    if-eqz p3, :cond_e

    sget-object p3, Llg7;->a:Llg7;

    goto/16 :goto_2

    :cond_e
    instance-of p3, p1, Lcom/warefly/checkscan/presentation/Deeplink$d;

    if-eqz p3, :cond_f

    new-instance p3, Leg7;

    iget-object p1, p1, Lcom/warefly/checkscan/presentation/Deeplink;->b:Ljava/lang/String;

    invoke-direct {p3, p1}, Leg7;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_f
    instance-of p3, p1, Lcom/warefly/checkscan/presentation/Deeplink$Desktop;

    if-eqz p3, :cond_12

    check-cast p1, Lcom/warefly/checkscan/presentation/Deeplink$Desktop;

    instance-of p3, p1, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$ProductsDeeplink;

    if-nez p3, :cond_10

    instance-of p3, p1, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Brandlink;

    if-eqz p3, :cond_11

    :cond_10
    invoke-interface {v0}, Ljf6;->Q0()Z

    move-result p3

    if-eqz p3, :cond_11

    new-instance p1, Lgk6;

    sget-object p3, Lcom/warefly/checkscan/products/presentation/flow/ProductsReason$Main;->b:Lcom/warefly/checkscan/products/presentation/flow/ProductsReason$Main;

    invoke-direct {p1, p3}, Lgk6;-><init>(Lcom/warefly/checkscan/products/presentation/flow/ProductsReason;)V

    goto/16 :goto_0

    :cond_11
    new-instance p3, Lcom/warefly/checkscan/presentation/f;

    invoke-direct {p3, p1}, Lcom/warefly/checkscan/presentation/f;-><init>(Lcom/warefly/checkscan/presentation/Deeplink$Desktop;)V

    goto/16 :goto_2

    :cond_12
    sget-object p3, Lcom/warefly/checkscan/presentation/Deeplink$a0;->c:Lcom/warefly/checkscan/presentation/Deeplink$a0;

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_13

    new-instance p3, Ltf8;

    sget-object p1, Lcom/warefly/checkscan/support/presentation/flow/SupportReason$Form;->b:Lcom/warefly/checkscan/support/presentation/flow/SupportReason$Form;

    invoke-direct {p3, p1}, Ltf8;-><init>(Lcom/warefly/checkscan/support/presentation/flow/SupportReason;)V

    goto/16 :goto_2

    :cond_13
    sget-object p3, Lcom/warefly/checkscan/presentation/Deeplink$z;->c:Lcom/warefly/checkscan/presentation/Deeplink$z;

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_14

    new-instance p3, Lqf7;

    const/16 p1, 0x10

    sget-object v0, Lsq0;->TOP_FLOW:Lsq0;

    const-string v3, "\u0422\u041e\u041f \u0427\u0435\u043a\u0421\u043a\u0430\u043d"

    invoke-direct {p3, p1, v0, v3}, Lqf7;-><init>(ILsq0;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_14
    sget-object p3, Lcom/warefly/checkscan/presentation/Deeplink$m;->c:Lcom/warefly/checkscan/presentation/Deeplink$m;

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_15

    new-instance p3, Lqf7;

    sget-object p1, Lsq0;->HOW_GET_CASHBACK_SLIDES:Lsq0;

    const/4 v0, 0x3

    invoke-direct {p3, v1, p1, v0}, Lqf7;-><init>(ILsq0;I)V

    goto/16 :goto_2

    :cond_15
    instance-of p3, p1, Lcom/warefly/checkscan/presentation/Deeplink$Webview;

    if-eqz p3, :cond_16

    new-instance p3, Lcom/warefly/checkscan/presentation/g;

    check-cast p1, Lcom/warefly/checkscan/presentation/Deeplink$Webview;

    invoke-direct {p3, p1}, Lcom/warefly/checkscan/presentation/g;-><init>(Lcom/warefly/checkscan/presentation/Deeplink$Webview;)V

    goto/16 :goto_2

    :cond_16
    instance-of p3, p1, Lcom/warefly/checkscan/presentation/Deeplink$l;

    if-eqz p3, :cond_17

    new-instance p3, Lhh7;

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/offerLanding/OfferLandingReason$Landing;

    check-cast p1, Lcom/warefly/checkscan/presentation/Deeplink$l;

    iget-object p1, p1, Lcom/warefly/checkscan/presentation/Deeplink$l;->c:Ljava/lang/String;

    invoke-direct {v0, p1}, Lcom/warefly/checkscan/presentation/flows/offerLanding/OfferLandingReason$Landing;-><init>(Ljava/lang/String;)V

    invoke-direct {p3, v0}, Lhh7;-><init>(Lcom/warefly/checkscan/presentation/flows/offerLanding/OfferLandingReason$Landing;)V

    goto/16 :goto_2

    :cond_17
    instance-of p3, p1, Lcom/warefly/checkscan/presentation/Deeplink$e;

    if-eqz p3, :cond_18

    new-instance p3, Lli7;

    new-instance v0, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$DailyTask;

    check-cast p1, Lcom/warefly/checkscan/presentation/Deeplink$e;

    iget p1, p1, Lcom/warefly/checkscan/presentation/Deeplink$e;->c:I

    invoke-direct {v0, p1}, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$DailyTask;-><init>(I)V

    invoke-direct {p3, v0}, Lli7;-><init>(Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;)V

    goto/16 :goto_2

    :cond_18
    instance-of p3, p1, Lcom/warefly/checkscan/presentation/Deeplink$g;

    if-eqz p3, :cond_1a

    invoke-interface {v0}, Ljf6;->G0()Z

    move-result p3

    if-eqz p3, :cond_19

    new-instance p3, Lqh7;

    new-instance p1, Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason$FillMyData;

    invoke-direct {p1, v1}, Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason$FillMyData;-><init>(Z)V

    invoke-direct {p3, p1}, Lqh7;-><init>(Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason;)V

    goto/16 :goto_2

    :cond_19
    invoke-virtual {p1}, Lcom/warefly/checkscan/presentation/Deeplink;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lix;

    new-instance v0, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;

    invoke-direct {v0, v3, p1, p4}, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p3, v0}, Lix;-><init>(Lcom/warefly/checkscan/auth/presentation/flow/AuthReason;)V

    goto/16 :goto_2

    :cond_1a
    instance-of p3, p1, Lcom/warefly/checkscan/presentation/Deeplink$h;

    if-eqz p3, :cond_1b

    new-instance p3, Lsg7;

    check-cast p1, Lcom/warefly/checkscan/presentation/Deeplink$h;

    iget p1, p1, Lcom/warefly/checkscan/presentation/Deeplink$h;->c:I

    invoke-direct {p3, p1}, Lsg7;-><init>(I)V

    goto/16 :goto_2

    :cond_1b
    instance-of p3, p1, Lcom/warefly/checkscan/presentation/Deeplink$x;

    if-eqz p3, :cond_1c

    sget-object p3, Lqc8;->a:Lqc8;

    goto :goto_2

    :cond_1c
    instance-of p3, p1, Lcom/warefly/checkscan/presentation/Deeplink$i;

    if-eqz p3, :cond_1d

    sget-object p3, Lp74;->a:Lp74;

    goto :goto_2

    :cond_1d
    instance-of p3, p1, Lcom/warefly/checkscan/presentation/Deeplink$p;

    if-eqz p3, :cond_1e

    new-instance p3, Lgk6;

    new-instance v0, Lcom/warefly/checkscan/products/presentation/flow/ProductsReason$Product;

    check-cast p1, Lcom/warefly/checkscan/presentation/Deeplink$p;

    iget p1, p1, Lcom/warefly/checkscan/presentation/Deeplink$p;->c:I

    invoke-direct {v0, p1}, Lcom/warefly/checkscan/products/presentation/flow/ProductsReason$Product;-><init>(I)V

    invoke-direct {p3, v0}, Lgk6;-><init>(Lcom/warefly/checkscan/products/presentation/flow/ProductsReason;)V

    goto :goto_2

    :cond_1e
    instance-of p3, p1, Lcom/warefly/checkscan/presentation/Deeplink$o;

    if-eqz p3, :cond_1f

    new-instance p3, Lgk6;

    new-instance v0, Lcom/warefly/checkscan/products/presentation/flow/ProductsReason$Shop;

    check-cast p1, Lcom/warefly/checkscan/presentation/Deeplink$o;

    iget p1, p1, Lcom/warefly/checkscan/presentation/Deeplink$o;->c:I

    invoke-direct {v0, p1, v2}, Lcom/warefly/checkscan/products/presentation/flow/ProductsReason$Shop;-><init>(IZ)V

    invoke-direct {p3, v0}, Lgk6;-><init>(Lcom/warefly/checkscan/products/presentation/flow/ProductsReason;)V

    goto :goto_2

    :cond_1f
    instance-of p3, p1, Lcom/warefly/checkscan/presentation/Deeplink$q;

    if-eqz p3, :cond_20

    new-instance p3, Lgk6;

    new-instance v0, Lcom/warefly/checkscan/products/presentation/flow/ProductsReason$Shop;

    check-cast p1, Lcom/warefly/checkscan/presentation/Deeplink$q;

    iget p1, p1, Lcom/warefly/checkscan/presentation/Deeplink$q;->c:I

    invoke-direct {v0, p1, v1}, Lcom/warefly/checkscan/products/presentation/flow/ProductsReason$Shop;-><init>(IZ)V

    invoke-direct {p3, v0}, Lgk6;-><init>(Lcom/warefly/checkscan/products/presentation/flow/ProductsReason;)V

    goto :goto_2

    :cond_20
    instance-of p3, p1, Lcom/warefly/checkscan/presentation/Deeplink$b;

    if-eqz p3, :cond_21

    new-instance p3, Lya0;

    check-cast p1, Lcom/warefly/checkscan/presentation/Deeplink$b;

    iget p1, p1, Lcom/warefly/checkscan/presentation/Deeplink$b;->c:I

    invoke-direct {p3, p1}, Lya0;-><init>(I)V

    goto :goto_2

    :cond_21
    instance-of p3, p1, Lcom/warefly/checkscan/presentation/Deeplink$a;

    if-eqz p3, :cond_22

    new-instance p3, Lqh7;

    sget-object p1, Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason$ChangeEmail;->b:Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason$ChangeEmail;

    invoke-direct {p3, p1}, Lqh7;-><init>(Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason;)V

    goto :goto_2

    :cond_22
    instance-of p1, p1, Lcom/warefly/checkscan/presentation/Deeplink$y;

    if-eqz p1, :cond_3

    new-instance p3, Ltf8;

    sget-object p1, Lcom/warefly/checkscan/support/presentation/flow/SupportReason$Form;->b:Lcom/warefly/checkscan/support/presentation/flow/SupportReason$Form;

    invoke-direct {p3, p1}, Ltf8;-><init>(Lcom/warefly/checkscan/support/presentation/flow/SupportReason;)V

    :goto_2
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/a;->d:Lo87;

    if-eqz p2, :cond_24

    instance-of p1, p3, Lcom/warefly/checkscan/presentation/f;

    if-eqz p1, :cond_23

    invoke-static {p3}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_3

    :cond_23
    new-array p1, p4, [Llk3;

    sget-object p2, Lcom/warefly/checkscan/presentation/e;->a:Lcom/warefly/checkscan/presentation/e;

    aput-object p2, p1, v1

    aput-object p3, p1, v2

    invoke-static {p1}, Lyr;->G([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    :goto_3
    check-cast p1, Ljava/util/Collection;

    new-array p2, v1, [Llk3;

    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Llk3;

    array-length p2, p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ldf7;

    invoke-virtual {p0, p1}, Lo87;->f([Ldf7;)V

    return-void

    :cond_24
    if-eqz p3, :cond_26

    instance-of p1, p3, Lcom/warefly/checkscan/presentation/f;

    if-eqz p1, :cond_25

    invoke-virtual {p0, p3}, Lo87;->g(Ldf7;)V

    return-void

    :cond_25
    invoke-virtual {p0, p3}, Lo87;->d(Ldf7;)V

    :cond_26
    return-void
.end method

.method public final d(Lcom/warefly/checkscan/presentation/Deeplink$n;ZLuj1;Lvj1;)V
    .locals 5

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/warefly/checkscan/presentation/a;->d:Lo87;

    sget-object v0, Lcom/warefly/checkscan/presentation/e;->a:Lcom/warefly/checkscan/presentation/e;

    invoke-virtual {p2, v0}, Lo87;->g(Ldf7;)V

    :cond_0
    iget-object p2, p0, Lcom/warefly/checkscan/presentation/a;->b:Ljf6;

    invoke-interface {p2}, Ljf6;->G0()Z

    move-result v0

    invoke-interface {p2}, Ljf6;->T0()J

    move-result-wide v1

    new-instance p2, Lk69;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/warefly/checkscan/presentation/Deeplink$n;->h:Ljava/lang/String;

    if-nez v4, :cond_1

    const-string v4, "Checkscan_kopeiki"

    :cond_1
    invoke-direct {p2, v3, v4}, Lk69;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, p1, Lcom/warefly/checkscan/presentation/Deeplink$n;->g:Z

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    new-instance v0, Lcom/warefly/checkscan/presentation/b;

    invoke-direct {v0, p0, p1, p3}, Lcom/warefly/checkscan/presentation/b;-><init>(Lcom/warefly/checkscan/presentation/a;Lcom/warefly/checkscan/presentation/Deeplink$n;Luj1;)V

    invoke-virtual {p4, p2, v0}, Lvj1;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    invoke-virtual {p0, p1, p3}, Lcom/warefly/checkscan/presentation/a;->b(Lcom/warefly/checkscan/presentation/Deeplink$n;Luj1;)V

    return-void
.end method
