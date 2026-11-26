.class public final Lio/appmetrica/analytics/impl/nl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/String; = "SESSION_SLEEP_START"

.field public static final e:Ljava/lang/String; = "SESSION_LAST_EVENT_OFFSET"

.field public static final f:Ljava/lang/String; = "SESSION_ID"

.field public static final g:Ljava/lang/String; = "SESSION_COUNTER_ID"

.field public static final h:Ljava/lang/String; = "SESSION_INIT_TIME"

.field public static final i:Ljava/lang/String; = "SESSION_CREATION_CURRENT_TIME"

.field public static final j:Ljava/lang/String; = "SESSION_IS_ALIVE_REPORT_NEEDED"

.field public static final k:Ljava/lang/String; = "SESSION_CRASHED"


# instance fields
.field public final a:Ljava/lang/String;

.field protected final b:Lio/appmetrica/analytics/impl/jf;

.field public c:Lio/appmetrica/analytics/impl/tb;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/jf;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/nl;->b:Lio/appmetrica/analytics/impl/jf;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/nl;->a:Ljava/lang/String;

    new-instance v0, Lio/appmetrica/analytics/impl/tb;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/tb;-><init>()V

    :try_start_0
    invoke-virtual {p1, p2}, Lio/appmetrica/analytics/impl/jf;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Lio/appmetrica/analytics/impl/tb;

    invoke-direct {p2, p1}, Lio/appmetrica/analytics/impl/tb;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p2

    :catchall_0
    :cond_0
    iput-object v0, p0, Lio/appmetrica/analytics/impl/nl;->c:Lio/appmetrica/analytics/impl/tb;

    return-void
.end method


# virtual methods
.method public final a(J)Lio/appmetrica/analytics/impl/nl;
    .locals 0

    .line 15
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "SESSION_CREATION_CURRENT_TIME"

    invoke-virtual {p0, p2, p1}, Lio/appmetrica/analytics/impl/nl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final a(Z)Lio/appmetrica/analytics/impl/nl;
    .locals 1

    .line 14
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "SESSION_IS_ALIVE_REPORT_NEEDED"

    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/impl/nl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/nl;->b:Lio/appmetrica/analytics/impl/jf;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/nl;->a:Ljava/lang/String;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/nl;->c:Lio/appmetrica/analytics/impl/tb;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lio/appmetrica/analytics/impl/jf;->e(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/impl/jf;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 16
    :try_start_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/nl;->c:Lio/appmetrica/analytics/impl/tb;

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final b(J)Lio/appmetrica/analytics/impl/nl;
    .locals 0

    .line 12
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "SESSION_INIT_TIME"

    invoke-virtual {p0, p2, p1}, Lio/appmetrica/analytics/impl/nl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final b(Z)Lio/appmetrica/analytics/impl/nl;
    .locals 1

    .line 11
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "SESSION_CRASHED"

    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/impl/nl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final b()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/tb;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/tb;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/nl;->c:Lio/appmetrica/analytics/impl/tb;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/nl;->a()V

    return-void
.end method

.method public final c(J)Lio/appmetrica/analytics/impl/nl;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "SESSION_LAST_EVENT_OFFSET"

    invoke-virtual {p0, p2, p1}, Lio/appmetrica/analytics/impl/nl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final c()Ljava/lang/Long;
    .locals 1

    .line 10
    iget-object p0, p0, Lio/appmetrica/analytics/impl/nl;->c:Lio/appmetrica/analytics/impl/tb;

    const-string v0, "SESSION_CREATION_CURRENT_TIME"

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/tb;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final d(J)Lio/appmetrica/analytics/impl/nl;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "SESSION_COUNTER_ID"

    invoke-virtual {p0, p2, p1}, Lio/appmetrica/analytics/impl/nl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final d()Ljava/lang/Long;
    .locals 1

    .line 10
    iget-object p0, p0, Lio/appmetrica/analytics/impl/nl;->c:Lio/appmetrica/analytics/impl/tb;

    const-string v0, "SESSION_INIT_TIME"

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/tb;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final e(J)Lio/appmetrica/analytics/impl/nl;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "SESSION_ID"

    invoke-virtual {p0, p2, p1}, Lio/appmetrica/analytics/impl/nl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final e()Ljava/lang/Long;
    .locals 1

    .line 10
    iget-object p0, p0, Lio/appmetrica/analytics/impl/nl;->c:Lio/appmetrica/analytics/impl/tb;

    const-string v0, "SESSION_LAST_EVENT_OFFSET"

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/tb;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final f(J)Lio/appmetrica/analytics/impl/nl;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "SESSION_SLEEP_START"

    invoke-virtual {p0, p2, p1}, Lio/appmetrica/analytics/impl/nl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final f()Ljava/lang/Long;
    .locals 1

    .line 10
    iget-object p0, p0, Lio/appmetrica/analytics/impl/nl;->c:Lio/appmetrica/analytics/impl/tb;

    const-string v0, "SESSION_COUNTER_ID"

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/tb;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final g()Ljava/lang/Long;
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/nl;->c:Lio/appmetrica/analytics/impl/tb;

    const-string v0, "SESSION_ID"

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/tb;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final h()Ljava/lang/Long;
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/nl;->c:Lio/appmetrica/analytics/impl/tb;

    const-string v0, "SESSION_SLEEP_START"

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/tb;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final i()Z
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/nl;->c:Lio/appmetrica/analytics/impl/tb;

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final j()Ljava/lang/Boolean;
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/nl;->c:Lio/appmetrica/analytics/impl/tb;

    const-string v0, "SESSION_IS_ALIVE_REPORT_NEEDED"

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/tb;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final k()Ljava/lang/Boolean;
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/nl;->c:Lio/appmetrica/analytics/impl/tb;

    const-string v0, "SESSION_CRASHED"

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/tb;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
