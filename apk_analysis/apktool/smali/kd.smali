.class public Lkd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkd$a;,
        Lkd$b;,
        Lkd$c;,
        Lkd$d;,
        Lkd$e;,
        Lkd$f;,
        Lkd$g;,
        Lkd$h;,
        Lkd$i;,
        Lkd$j;,
        Lkd$m;,
        Lkd$n;,
        Lkd$o;,
        Lkd$p;,
        Lkd$q;,
        Lkd$r;,
        Lkd$s;,
        Lkd$t;,
        Lkd$u;,
        Lkd$v;,
        Lkd$w;,
        Lkd$x;,
        Lkd$y;,
        Lkd$z;,
        Lkd$a0;,
        Lkd$b0;,
        Lkd$c0;,
        Lkd$d0;,
        Lkd$e0;,
        Lkd$f0;,
        Lkd$g0;,
        Lkd$h0;,
        Lkd$i0;,
        Lkd$j0;,
        Lkd$k0;,
        Lkd$l0;,
        Lkd$m0;,
        Lkd$n0;,
        Lkd$o0;,
        Lkd$p0;,
        Lkd$q0;,
        Lkd$r0;,
        Lkd$s0;,
        Lkd$t0;
    }
.end annotation


# static fields
.field public static final c:Lfh8;

.field public static final d:Lfh8;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkd$l;->f:Lkd$l;

    invoke-static {v0}, Lnm4;->b(Lll3;)Lfh8;

    move-result-object v0

    sput-object v0, Lkd;->c:Lfh8;

    sget-object v0, Lkd$k;->f:Lkd$k;

    invoke-static {v0}, Lnm4;->b(Lll3;)Lfh8;

    move-result-object v0

    sput-object v0, Lkd;->d:Lfh8;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkd;->a:Ljava/lang/String;

    iput-object p2, p0, Lkd;->b:Ljava/util/Map;

    return-void
.end method

.method public static b(Ljava/util/Map;)V
    .locals 13

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    sget-object v3, Lkd;->d:Lfh8;

    const-string v4, "name: "

    const-string v5, "AnalyticsEvent"

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", params: None"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lre;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/String;

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-interface {v2, v3, v1}, Lre;->e(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_2

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Ljava/util/Map;

    if-eqz v9, :cond_5

    move-object v9, v8

    check-cast v9, Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    instance-of v12, v11, Ljava/lang/String;

    if-eqz v12, :cond_4

    instance-of v12, v10, Ljava/lang/String;

    if-nez v12, :cond_3

    instance-of v12, v10, Ljava/lang/Enum;

    if-eqz v12, :cond_4

    :cond_3
    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v11, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Not str!: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", params: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lre;

    if-eqz v8, :cond_2

    check-cast v6, Ljava/lang/String;

    invoke-interface {v8, v7, v6}, Lre;->e(Landroid/os/Bundle;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lkd;->b:Ljava/util/Map;

    :try_start_0
    iget-object v1, p0, Lkd;->a:Ljava/lang/String;

    sget-object v2, Lkd;->c:Lfh8;

    invoke-virtual {v2}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/Gson;

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/appmetrica/analytics/AppMetrica;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    instance-of p0, p0, Lkd$d0;

    if-nez p0, :cond_0

    invoke-static {v0}, Lkd;->b(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 4

    invoke-virtual {p0}, Lkd;->a()V

    sget-object v0, Loa6;->I:Loa6$a;

    iget-object v1, p0, Lkd;->b:Ljava/util/Map;

    const/16 v2, 0x7a

    iget-object p0, p0, Lkd;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, p0, v3, v1, v2}, Lbc6$a;->a(Lbc6;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    return-void
.end method
