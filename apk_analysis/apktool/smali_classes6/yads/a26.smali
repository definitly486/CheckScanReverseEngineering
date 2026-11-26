.class public final Lyads/a26;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:Lyads/a26;

.field public static final h:Landroid/os/Handler;

.field public static i:Landroid/os/Handler;

.field public static final j:Lyads/y16;

.field public static final k:Lyads/z16;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/ArrayList;

.field public final c:Lyads/ip6;

.field public final d:Lyads/ap6;

.field public final e:Lyads/lp6;

.field public f:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lyads/a26;

    invoke-direct {v0}, Lyads/a26;-><init>()V

    sput-object v0, Lyads/a26;->g:Lyads/a26;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lyads/a26;->h:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-object v0, Lyads/a26;->i:Landroid/os/Handler;

    new-instance v0, Lyads/y16;

    invoke-direct {v0}, Lyads/y16;-><init>()V

    sput-object v0, Lyads/a26;->j:Lyads/y16;

    new-instance v0, Lyads/z16;

    invoke-direct {v0}, Lyads/z16;-><init>()V

    sput-object v0, Lyads/a26;->k:Lyads/z16;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyads/a26;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyads/a26;->b:Ljava/util/ArrayList;

    new-instance v0, Lyads/ap6;

    invoke-direct {v0}, Lyads/ap6;-><init>()V

    iput-object v0, p0, Lyads/a26;->d:Lyads/ap6;

    new-instance v0, Lyads/ip6;

    invoke-direct {v0}, Lyads/ip6;-><init>()V

    iput-object v0, p0, Lyads/a26;->c:Lyads/ip6;

    new-instance v0, Lyads/lp6;

    new-instance v1, Lyads/sp6;

    invoke-direct {v1}, Lyads/sp6;-><init>()V

    invoke-direct {v0, v1}, Lyads/lp6;-><init>(Lyads/sp6;)V

    iput-object v0, p0, Lyads/a26;->e:Lyads/lp6;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lyads/yp6;Lorg/json/JSONObject;Z)V
    .locals 10

    invoke-static {p1}, Lyads/mq6;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lyads/a26;->d:Lyads/ap6;

    iget-object v1, v0, Lyads/ap6;->d:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    iget-boolean v0, v0, Lyads/ap6;->j:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-ne v1, v2, :cond_2

    goto/16 :goto_d

    :cond_2
    invoke-virtual {p2, p1}, Lyads/yp6;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {p3, v6}, Lyads/rp6;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    iget-object p3, p0, Lyads/a26;->d:Lyads/ap6;

    iget-object v0, p3, Lyads/ap6;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_3

    const/4 p3, 0x0

    goto :goto_1

    :cond_3
    iget-object v0, p3, Lyads/ap6;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object p3, p3, Lyads/ap6;->a:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object p3, v0

    :goto_1
    const/4 v2, 0x0

    const-string v4, "OMIDLIB"

    if-eqz p3, :cond_7

    :try_start_0
    const-string p2, "adSessionId"

    invoke-virtual {v6, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p2, v0

    const-string p4, "Error with setting ad session id"

    invoke-static {v4, p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    iget-object p2, p0, Lyads/a26;->d:Lyads/ap6;

    iget-object p4, p2, Lyads/ap6;->i:Ljava/util/WeakHashMap;

    invoke-virtual {p4, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    iget-object p2, p2, Lyads/ap6;->i:Ljava/util/WeakHashMap;

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1, p4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    move v2, v3

    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :try_start_1
    const-string p2, "hasWindowFocus"

    invoke-virtual {v6, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object p1, v0

    const-string p2, "Error with setting has window focus"

    invoke-static {v4, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    iget-object p1, p0, Lyads/a26;->d:Lyads/ap6;

    iget-object p1, p1, Lyads/ap6;->h:Ljava/util/HashSet;

    invoke-virtual {p1, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p1, :cond_6

    :try_start_2
    const-string p1, "isPipActive"

    invoke-virtual {v6, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    move-object p1, v0

    const-string p2, "Error with setting is picture-in-picture active"

    invoke-static {v4, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_5
    iget-object p0, p0, Lyads/a26;->d:Lyads/ap6;

    iput-boolean v3, p0, Lyads/ap6;->j:Z

    goto/16 :goto_d

    :cond_7
    iget-object p3, p0, Lyads/a26;->d:Lyads/ap6;

    iget-object v0, p3, Lyads/ap6;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/vo6;

    if-eqz v0, :cond_8

    iget-object p3, p3, Lyads/ap6;->b:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    if-eqz v0, :cond_a

    iget-object p3, v0, Lyads/vo6;->a:Lyads/cq6;

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, v0, Lyads/vo6;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_6

    :cond_9
    :try_start_3
    const-string v0, "isFriendlyObstructionFor"

    invoke-virtual {v6, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "friendlyObstructionClass"

    iget-object v5, p3, Lyads/cq6;->b:Ljava/lang/String;

    invoke-virtual {v6, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "friendlyObstructionPurpose"

    iget-object v5, p3, Lyads/cq6;->c:Lyads/l03;

    invoke-virtual {v6, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "friendlyObstructionReason"

    iget-object p3, p3, Lyads/cq6;->d:Ljava/lang/String;

    invoke-virtual {v6, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7

    :catch_3
    move-exception v0

    move-object p3, v0

    const-string v0, "Error with setting friendly obstruction"

    invoke-static {v4, v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    move p3, v3

    goto :goto_8

    :cond_a
    move p3, v2

    :goto_8
    if-nez p4, :cond_c

    if-eqz p3, :cond_b

    goto :goto_9

    :cond_b
    move v9, v2

    goto :goto_a

    :cond_c
    :goto_9
    move v9, v3

    :goto_a
    if-ne v1, v3, :cond_d

    move v8, v3

    :goto_b
    move-object v7, p0

    move-object v5, p1

    move-object v4, p2

    goto :goto_c

    :cond_d
    move v8, v2

    goto :goto_b

    :goto_c
    invoke-virtual/range {v4 .. v9}, Lyads/yp6;->a(Landroid/view/View;Lorg/json/JSONObject;Lyads/a26;ZZ)V

    :cond_e
    :goto_d
    return-void
.end method
