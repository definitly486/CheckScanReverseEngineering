.class public final Lcom/tapjoy/internal/i2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/tapjoy/internal/i2;


# instance fields
.field public final a:Lcom/tapjoy/internal/m0;

.field public b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/i2;

    invoke-direct {v0}, Lcom/tapjoy/internal/i2;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/i2;->c:Lcom/tapjoy/internal/i2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tapjoy/internal/m0;

    invoke-direct {v0}, Lcom/tapjoy/internal/m0;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/i2;->a:Lcom/tapjoy/internal/m0;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 4

    monitor-enter p0

    .line 138
    :try_start_0
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnectCore;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/i2;->b:Landroid/content/Context;

    .line 139
    const-string v1, "tjcPrefrences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/tapjoy/internal/i2;->b:Landroid/content/Context;

    const-string v3, "tjcPrefrences"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 141
    const-string v2, "configurations"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 142
    :try_start_1
    sget-object v2, Lcom/tapjoy/internal/w;->a:Lcom/tapjoy/internal/y;

    if-nez v2, :cond_0

    .line 143
    sget-object v2, Lcom/tapjoy/internal/z;->n:Lcom/tapjoy/internal/y;

    sput-object v2, Lcom/tapjoy/internal/w;->a:Lcom/tapjoy/internal/y;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 144
    :cond_0
    :goto_0
    new-instance v2, Lcom/tapjoy/internal/z;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/z;-><init>(Ljava/io/StringReader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :try_start_2
    invoke-virtual {v2}, Lcom/tapjoy/internal/x;->a()Ljava/util/LinkedHashMap;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 146
    :try_start_3
    invoke-virtual {v2}, Lcom/tapjoy/internal/z;->close()V

    .line 147
    iget-object v2, p0, Lcom/tapjoy/internal/i2;->a:Lcom/tapjoy/internal/m0;

    invoke-virtual {v2, v1}, Lcom/tapjoy/internal/m0;->a(Ljava/util/HashMap;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v1

    .line 148
    :try_start_4
    invoke-virtual {v2}, Lcom/tapjoy/internal/z;->close()V

    .line 149
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 150
    :catch_0
    :try_start_5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "configurations"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/Long;)V
    .locals 10

    const-class v0, Ljava/lang/RuntimeException;

    const-class v1, Ljava/lang/Error;

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "placement_request_content_retry_timeout"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "placement_request_content_retry_backoff"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide/16 v5, 0x1f4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-wide/16 v6, 0x2710

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Number;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v4, 0x1

    aput-object v5, v8, v4

    const/4 v4, 0x2

    aput-object v6, v8, v4

    const/4 v4, 0x3

    aput-object v7, v8, v4

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/tapjoy/internal/i2;->a:Lcom/tapjoy/internal/m0;

    invoke-virtual {v3, v2}, Lcom/tapjoy/internal/m0;->a(Ljava/util/HashMap;)V

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Lcom/tapjoy/internal/d0;

    invoke-direct {v3, v2}, Lcom/tapjoy/internal/d0;-><init>(Ljava/io/StringWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v3, p1}, Lcom/tapjoy/internal/d0;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    iget-object p1, v3, Lcom/tapjoy/internal/d0;->a:Ljava/io/StringWriter;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    iget-object p0, p0, Lcom/tapjoy/internal/i2;->b:Landroid/content/Context;

    const-string v0, "tjcPrefrences"

    invoke-virtual {p0, v0, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "configurations"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0, v1}, Lcom/tapjoy/internal/x1;->a(Ljava/io/IOException;Ljava/lang/Class;)V

    invoke-static {p0, v0}, Lcom/tapjoy/internal/x1;->a(Ljava/io/IOException;Ljava/lang/Class;)V

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    invoke-static {p0, v1}, Lcom/tapjoy/internal/x1;->a(Ljava/io/IOException;Ljava/lang/Class;)V

    invoke-static {p0, v0}, Lcom/tapjoy/internal/x1;->a(Ljava/io/IOException;Ljava/lang/Class;)V

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    return-void
.end method
