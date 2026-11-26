.class public final Lcom/my/target/e2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/e2$a;,
        Lcom/my/target/e2$f;,
        Lcom/my/target/e2$e;,
        Lcom/my/target/e2$d;,
        Lcom/my/target/e2$c;,
        Lcom/my/target/e2$b;
    }
.end annotation


# static fields
.field public static final e:Ljava/util/WeakHashMap;

.field public static final f:Lcom/my/target/d1;

.field public static g:Lkt9;

.field public static h:Lln9;


# instance fields
.field public final a:Ldha;

.field public final b:Lf72;

.field public final c:I

.field public d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/my/target/e2;->e:Ljava/util/WeakHashMap;

    new-instance v0, Lcom/my/target/d1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/my/target/e2;->f:Lcom/my/target/d1;

    return-void
.end method

.method public constructor <init>(Lf72;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/my/target/e2;->d:J

    sget-object v0, Lcom/my/target/e2;->g:Lkt9;

    sget v1, Lqfa;->i:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string v1, "CustomTabsFacade: custom tabs found: "

    :try_start_0
    const-class v4, Landroidx/browser/customtabs/CustomTabsCallback;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    goto :goto_0

    :catchall_0
    const/4 v1, 0x2

    :goto_0
    sput v1, Lqfa;->i:I

    :cond_0
    sget-object v4, Lqfa;->h:Lqfa$a;

    if-eqz v0, :cond_1

    if-ne v1, v2, :cond_1

    :try_start_1
    new-instance v1, Lqfa;

    sget-object v2, Lw4a;->g:Landroid/os/Handler;

    invoke-direct {v1, v2, v0}, Lqfa;-><init>(Landroid/os/Handler;Lkt9;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, v1

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    const-string v0, "CustomTabsFacade: sac==null"

    invoke-static {v3, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    :catchall_1
    :cond_2
    :goto_1
    iput-object v4, p0, Lcom/my/target/e2;->a:Ldha;

    iput-object p1, p0, Lcom/my/target/e2;->b:Lf72;

    const/16 p1, 0xa

    iput p1, p0, Lcom/my/target/e2;->c:I

    return-void
.end method


# virtual methods
.method public final a(Lao9;ILcha;Landroid/content/Context;)V
    .locals 7

    iget-object v0, p1, Lao9;->Q:Lpp9;

    invoke-static {p3}, Lcha;->a(Lcha;)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/16 v4, 0x1b58

    invoke-virtual/range {v0 .. v5}, Lpp9;->b(Ljava/lang/String;IIILjava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/my/target/e2;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x320

    cmp-long v0, v0, v2

    const/4 v1, 0x2

    if-gez v0, :cond_0

    iget-object p0, p1, Lao9;->Q:Lpp9;

    const/16 p1, 0x1b5d

    const-string p2, "too-many-clicks"

    invoke-virtual {p0, v1, p1, p2}, Lpp9;->d(IILjava/lang/String;)V

    return-void

    :cond_0
    if-ne p2, v1, :cond_2

    invoke-virtual {p1}, Lao9;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lao9;->F:Ljava/lang/String;

    const/4 p2, 0x1

    :cond_1
    :goto_0
    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v3, v0

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lao9;->F:Ljava/lang/String;

    goto :goto_0

    :goto_1
    invoke-virtual/range {v1 .. v6}, Lcom/my/target/e2;->d(Lao9;Ljava/lang/String;ILcha;Landroid/content/Context;)V

    return-void
.end method

.method public final b(Lao9;Ljava/lang/String;ILcha;Landroid/content/Context;)V
    .locals 6

    iget-object v0, p1, Lao9;->Q:Lpp9;

    invoke-static {p4}, Lcha;->a(Lcha;)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/16 v4, 0x1b58

    invoke-virtual/range {v0 .. v5}, Lpp9;->b(Ljava/lang/String;IIILjava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/my/target/e2;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x320

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object p0, p1, Lao9;->Q:Lpp9;

    const/16 p1, 0x1b5d

    const-string p2, "too-many-clicks"

    const/4 p3, 0x2

    invoke-virtual {p0, p3, p1, p2}, Lpp9;->d(IILjava/lang/String;)V

    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/my/target/e2;->d(Lao9;Ljava/lang/String;ILcha;Landroid/content/Context;)V

    return-void
.end method

.method public final c(Ljava/lang/String;Lao9;Lcha;Landroid/content/Context;)V
    .locals 8

    iget-object v0, p2, Lao9;->a:Ln4a;

    const-string v1, "urlResolved"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/my/target/m1;->d(Ln4a;Ljava/lang/String;ILcom/my/target/m1$b;)V

    const-string v0, "WebViewReachability: url resolved"

    invoke-static {v3, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p2, Lao9;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    move v2, v3

    goto :goto_1

    :sswitch_0
    const-string v1, "webform"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :sswitch_1
    const-string v1, "store"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "web"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    packed-switch v2, :pswitch_data_0

    return-void

    :pswitch_0
    new-instance v0, Lcom/my/target/e2$d;

    iget-object v1, p0, Lcom/my/target/e2;->b:Lf72;

    invoke-direct {v0, p1, p2, v1}, Lcom/my/target/e2$d;-><init>(Ljava/lang/String;Lao9;Lf72;)V

    goto :goto_2

    :pswitch_1
    invoke-static {p1}, Ly14;->x(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/my/target/e2;->a:Ldha;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/my/target/e2$c;

    invoke-direct {v0, v1, p1, p2}, Lcom/my/target/e2$e;-><init>(Ldha;Ljava/lang/String;Lao9;)V

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/my/target/e2$e;

    invoke-direct {v0, v1, p1, p2}, Lcom/my/target/e2$e;-><init>(Ldha;Ljava/lang/String;Lao9;)V

    :goto_2
    invoke-virtual {v0, p4}, Lcom/my/target/e2$a;->a(Landroid/content/Context;)Z

    move-result p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/my/target/e2;->d:J

    iget-object v2, p2, Lao9;->Q:Lpp9;

    if-eqz p1, :cond_4

    invoke-static {p3}, Lcha;->a(Lcha;)Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/16 v6, 0x1b5a

    invoke-virtual/range {v2 .. v7}, Lpp9;->b(Ljava/lang/String;IIILjava/lang/String;)V

    return-void

    :cond_4
    invoke-static {p3}, Lcha;->a(Lcha;)Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/16 v6, 0x1b59

    invoke-virtual/range {v2 .. v7}, Lpp9;->b(Ljava/lang/String;IIILjava/lang/String;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x1cb54 -> :sswitch_2
        0x68af8e1 -> :sswitch_1
        0x48f40e18 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Lao9;Ljava/lang/String;ILcha;Landroid/content/Context;)V
    .locals 11

    move-object/from16 v8, p5

    sget-object v9, Lcom/my/target/e2;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v9, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v10, 0x2

    if-eqz v2, :cond_0

    iget-object v0, p1, Lao9;->Q:Lpp9;

    const/16 v1, 0x1b5d

    const-string v2, "nested-call"

    invoke-virtual {v0, v10, v1, v2}, Lpp9;->d(IILjava/lang/String;)V

    return-void

    :cond_0
    const-string v2, "click"

    if-ne p3, v10, :cond_1

    invoke-virtual {p1}, Lao9;->e()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    if-eqz p2, :cond_2

    iget-object v4, p1, Lao9;->F:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    :goto_0
    move-object v5, v2

    goto :goto_1

    :cond_2
    const-string v2, "ctaClick"

    goto :goto_0

    :goto_1
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_5

    iget-object v2, p1, Lao9;->F:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lao9;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v7, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_3

    :cond_5
    move-object v2, p2

    :goto_3
    new-instance v0, Lcom/my/target/e2$b;

    iget v7, p0, Lcom/my/target/e2;->c:I

    move-object v3, p1

    move-object v4, v2

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/my/target/e2$b;-><init>(Lao9;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;I)V

    move-object v2, v4

    invoke-virtual {v0, v8}, Lcom/my/target/e2$b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/my/target/e2;->d:J

    iget-object v0, p1, Lao9;->Q:Lpp9;

    invoke-static {p4}, Lcha;->a(Lcha;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/16 v5, 0x1b5a

    move-object p0, v0

    move-object/from16 p5, v1

    move-object p1, v2

    move p3, v3

    move p2, v4

    move p4, v5

    invoke-virtual/range {p0 .. p5}, Lpp9;->b(Ljava/lang/String;IIILjava/lang/String;)V

    return-void

    :cond_6
    iget-object v0, p1, Lao9;->a:Ln4a;

    invoke-static {v0, v5, v6, v10}, Lcom/my/target/m1;->e(Ln4a;Ljava/lang/String;Ljava/util/Map;I)V

    const-string v0, "WebViewReachability: banner clicked"

    const/4 v4, 0x0

    invoke-static {v4, v0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_7

    return-void

    :cond_7
    iget-boolean v0, p1, Lao9;->t:Z

    iget-object v4, p0, Lcom/my/target/e2;->a:Ldha;

    if-nez v0, :cond_8

    invoke-static {v2}, Ly14;->x(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    move-object v0, v4

    goto :goto_4

    :cond_9
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lao9;->Q:Lpp9;

    new-instance v5, Lnda;

    invoke-direct {v5, p0, p1, p4, v8}, Lnda;-><init>(Lcom/my/target/e2;Lao9;Lcha;Landroid/content/Context;)V

    new-instance v3, Lpda;

    iget v1, p0, Lcom/my/target/e2;->c:I

    move-object p4, v0

    move p3, v1

    move-object p2, v2

    move-object p0, v3

    move-object p1, v4

    move-object/from16 p5, v5

    invoke-direct/range {p0 .. p5}, Lpda;-><init>(Ldha;Ljava/lang/String;ILpp9;Le5a;)V

    move-object v0, p0

    sget-object v1, Lw4a;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :goto_4
    sget-object v4, Lcom/my/target/e2;->g:Lkt9;

    if-eqz v4, :cond_a

    invoke-interface {v0}, Ldha;->b()V

    :cond_a
    new-instance v0, Loda;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Loda;-><init>(Lcom/my/target/e2;Ljava/lang/String;Lao9;Lcha;Landroid/content/Context;)V

    invoke-static {v0}, Lw4a;->c(Ljava/lang/Runnable;)V

    return-void
.end method
