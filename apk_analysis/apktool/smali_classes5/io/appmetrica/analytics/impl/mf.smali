.class public final Lio/appmetrica/analytics/impl/mf;
.super Lio/appmetrica/analytics/impl/Kd;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Ko;


# static fields
.field public static final d:Lio/appmetrica/analytics/impl/lf;

.field public static final e:Lio/appmetrica/analytics/impl/lf;

.field public static final f:Lio/appmetrica/analytics/impl/lf;

.field public static final g:Lio/appmetrica/analytics/impl/lf;

.field public static final h:Lio/appmetrica/analytics/impl/lf;

.field public static final i:Lio/appmetrica/analytics/impl/lf;

.field public static final j:Lio/appmetrica/analytics/impl/lf;

.field public static final k:Lio/appmetrica/analytics/impl/lf;

.field public static final l:Lio/appmetrica/analytics/impl/lf;

.field public static final m:Lio/appmetrica/analytics/impl/lf;

.field public static final n:Lio/appmetrica/analytics/impl/lf;

.field public static final o:Lio/appmetrica/analytics/impl/lf;

.field public static final p:Lio/appmetrica/analytics/impl/lf;

.field public static final q:Lio/appmetrica/analytics/impl/lf;

.field public static final r:Lio/appmetrica/analytics/impl/lf;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/appmetrica/analytics/impl/lf;

    const-string v1, "LOCATION_TRACKING_ENABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/lf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/appmetrica/analytics/impl/mf;->d:Lio/appmetrica/analytics/impl/lf;

    new-instance v0, Lio/appmetrica/analytics/impl/lf;

    const-string v1, "PREF_KEY_OFFSET"

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/lf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/appmetrica/analytics/impl/mf;->e:Lio/appmetrica/analytics/impl/lf;

    new-instance v0, Lio/appmetrica/analytics/impl/lf;

    const-string v1, "UNCHECKED_TIME"

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/lf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/appmetrica/analytics/impl/mf;->f:Lio/appmetrica/analytics/impl/lf;

    new-instance v0, Lio/appmetrica/analytics/impl/lf;

    const-string v1, "STATISTICS_RESTRICTED_IN_MAIN"

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/lf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/appmetrica/analytics/impl/mf;->g:Lio/appmetrica/analytics/impl/lf;

    new-instance v0, Lio/appmetrica/analytics/impl/lf;

    const-string v1, "NEXT_REPORT_SEND_ATTEMPT_NUMBER"

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/lf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/appmetrica/analytics/impl/mf;->h:Lio/appmetrica/analytics/impl/lf;

    new-instance v0, Lio/appmetrica/analytics/impl/lf;

    const-string v1, "NEXT_LOCATION_SEND_ATTEMPT_NUMBER"

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/lf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/appmetrica/analytics/impl/mf;->i:Lio/appmetrica/analytics/impl/lf;

    new-instance v0, Lio/appmetrica/analytics/impl/lf;

    const-string v1, "NEXT_STARTUP_SEND_ATTEMPT_NUMBER"

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/lf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/appmetrica/analytics/impl/mf;->j:Lio/appmetrica/analytics/impl/lf;

    new-instance v0, Lio/appmetrica/analytics/impl/lf;

    const-string v1, "LAST_REPORT_SEND_ATTEMPT_TIME"

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/lf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/appmetrica/analytics/impl/mf;->k:Lio/appmetrica/analytics/impl/lf;

    new-instance v0, Lio/appmetrica/analytics/impl/lf;

    const-string v1, "LAST_LOCATION_SEND_ATTEMPT_TIME"

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/lf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/appmetrica/analytics/impl/mf;->l:Lio/appmetrica/analytics/impl/lf;

    new-instance v0, Lio/appmetrica/analytics/impl/lf;

    const-string v1, "LAST_STARTUP_SEND_ATTEMPT_TIME"

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/lf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/appmetrica/analytics/impl/mf;->m:Lio/appmetrica/analytics/impl/lf;

    new-instance v0, Lio/appmetrica/analytics/impl/lf;

    const-string v1, "SATELLITE_PRELOAD_INFO_CHECKED"

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/lf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/appmetrica/analytics/impl/mf;->n:Lio/appmetrica/analytics/impl/lf;

    new-instance v0, Lio/appmetrica/analytics/impl/lf;

    const-string v1, "SATELLITE_CLIDS_CHECKED"

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/lf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/appmetrica/analytics/impl/mf;->o:Lio/appmetrica/analytics/impl/lf;

    new-instance v0, Lio/appmetrica/analytics/impl/lf;

    const-string v1, "VITAL_DATA"

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/lf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/appmetrica/analytics/impl/mf;->p:Lio/appmetrica/analytics/impl/lf;

    new-instance v0, Lio/appmetrica/analytics/impl/lf;

    const-string v1, "LAST_KOTLIN_VERSION_SEND_TIME"

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/lf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/appmetrica/analytics/impl/mf;->q:Lio/appmetrica/analytics/impl/lf;

    new-instance v0, Lio/appmetrica/analytics/impl/lf;

    const-string v1, "ADV_IDENTIFIERS_TRACKING_ENABLED"

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/lf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/appmetrica/analytics/impl/mf;->r:Lio/appmetrica/analytics/impl/lf;

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Va;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/Kd;-><init>(Lio/appmetrica/analytics/impl/Va;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/ge;I)I
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object p1, Lio/appmetrica/analytics/impl/mf;->j:Lio/appmetrica/analytics/impl/lf;

    goto :goto_0

    :cond_1
    sget-object p1, Lio/appmetrica/analytics/impl/mf;->i:Lio/appmetrica/analytics/impl/lf;

    goto :goto_0

    :cond_2
    sget-object p1, Lio/appmetrica/analytics/impl/mf;->h:Lio/appmetrica/analytics/impl/lf;

    :goto_0
    if-nez p1, :cond_3

    return p2

    :cond_3
    iget-object p1, p1, Lio/appmetrica/analytics/impl/lf;->b:Ljava/lang/String;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/kf;->a:Lio/appmetrica/analytics/impl/Va;

    invoke-interface {p0, p1, p2}, Lio/appmetrica/analytics/impl/Va;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final a(I)J
    .locals 3

    .line 44
    sget-object v0, Lio/appmetrica/analytics/impl/mf;->e:Lio/appmetrica/analytics/impl/lf;

    .line 45
    iget-object v0, v0, Lio/appmetrica/analytics/impl/lf;->b:Ljava/lang/String;

    int-to-long v1, p1

    .line 46
    iget-object p0, p0, Lio/appmetrica/analytics/impl/kf;->a:Lio/appmetrica/analytics/impl/Va;

    invoke-interface {p0, v0, v1, v2}, Lio/appmetrica/analytics/impl/Va;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/ge;J)J
    .locals 1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 48
    :cond_0
    sget-object p1, Lio/appmetrica/analytics/impl/mf;->m:Lio/appmetrica/analytics/impl/lf;

    goto :goto_0

    .line 49
    :cond_1
    sget-object p1, Lio/appmetrica/analytics/impl/mf;->l:Lio/appmetrica/analytics/impl/lf;

    goto :goto_0

    .line 50
    :cond_2
    sget-object p1, Lio/appmetrica/analytics/impl/mf;->k:Lio/appmetrica/analytics/impl/lf;

    :goto_0
    if-nez p1, :cond_3

    return-wide p2

    .line 51
    :cond_3
    iget-object p1, p1, Lio/appmetrica/analytics/impl/lf;->b:Ljava/lang/String;

    .line 52
    iget-object p0, p0, Lio/appmetrica/analytics/impl/kf;->a:Lio/appmetrica/analytics/impl/Va;

    invoke-interface {p0, p1, p2, p3}, Lio/appmetrica/analytics/impl/Va;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final a(J)Lio/appmetrica/analytics/impl/mf;
    .locals 1

    .line 34
    sget-object v0, Lio/appmetrica/analytics/impl/mf;->q:Lio/appmetrica/analytics/impl/lf;

    .line 35
    iget-object v0, v0, Lio/appmetrica/analytics/impl/lf;->b:Ljava/lang/String;

    .line 36
    invoke-virtual {p0, v0, p1, p2}, Lio/appmetrica/analytics/impl/kf;->d(Ljava/lang/String;J)Lio/appmetrica/analytics/impl/kf;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/mf;

    return-object p0
.end method

.method public final a()V
    .locals 0

    .line 40
    invoke-super {p0}, Lio/appmetrica/analytics/impl/kf;->a()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 37
    sget-object v0, Lio/appmetrica/analytics/impl/mf;->p:Lio/appmetrica/analytics/impl/lf;

    .line 38
    iget-object v0, v0, Lio/appmetrica/analytics/impl/lf;->b:Ljava/lang/String;

    .line 39
    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/impl/kf;->d(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/impl/kf;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/kf;->flushAsync()V

    return-void
.end method

.method public final a(Z)Z
    .locals 1

    .line 41
    sget-object v0, Lio/appmetrica/analytics/impl/mf;->r:Lio/appmetrica/analytics/impl/lf;

    .line 42
    iget-object v0, v0, Lio/appmetrica/analytics/impl/lf;->b:Ljava/lang/String;

    .line 43
    iget-object p0, p0, Lio/appmetrica/analytics/impl/kf;->a:Lio/appmetrica/analytics/impl/Va;

    invoke-interface {p0, v0, p1}, Lio/appmetrica/analytics/impl/Va;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final b(J)Lio/appmetrica/analytics/impl/mf;
    .locals 1

    .line 39
    sget-object v0, Lio/appmetrica/analytics/impl/mf;->e:Lio/appmetrica/analytics/impl/lf;

    .line 40
    iget-object v0, v0, Lio/appmetrica/analytics/impl/lf;->b:Ljava/lang/String;

    .line 41
    invoke-virtual {p0, v0, p1, p2}, Lio/appmetrica/analytics/impl/kf;->d(Ljava/lang/String;J)Lio/appmetrica/analytics/impl/kf;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/mf;

    return-object p0
.end method

.method public final b(Lio/appmetrica/analytics/impl/ge;I)Lio/appmetrica/analytics/impl/mf;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object p1, Lio/appmetrica/analytics/impl/mf;->j:Lio/appmetrica/analytics/impl/lf;

    goto :goto_0

    :cond_1
    sget-object p1, Lio/appmetrica/analytics/impl/mf;->i:Lio/appmetrica/analytics/impl/lf;

    goto :goto_0

    :cond_2
    sget-object p1, Lio/appmetrica/analytics/impl/mf;->h:Lio/appmetrica/analytics/impl/lf;

    :goto_0
    if-eqz p1, :cond_3

    iget-object p1, p1, Lio/appmetrica/analytics/impl/lf;->b:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/impl/kf;->d(Ljava/lang/String;I)Lio/appmetrica/analytics/impl/kf;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/mf;

    :cond_3
    return-object p0
.end method

.method public final b(Lio/appmetrica/analytics/impl/ge;J)Lio/appmetrica/analytics/impl/mf;
    .locals 1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 43
    :cond_0
    sget-object p1, Lio/appmetrica/analytics/impl/mf;->m:Lio/appmetrica/analytics/impl/lf;

    goto :goto_0

    .line 44
    :cond_1
    sget-object p1, Lio/appmetrica/analytics/impl/mf;->l:Lio/appmetrica/analytics/impl/lf;

    goto :goto_0

    .line 45
    :cond_2
    sget-object p1, Lio/appmetrica/analytics/impl/mf;->k:Lio/appmetrica/analytics/impl/lf;

    :goto_0
    if-eqz p1, :cond_3

    .line 46
    iget-object p1, p1, Lio/appmetrica/analytics/impl/lf;->b:Ljava/lang/String;

    .line 47
    invoke-virtual {p0, p1, p2, p3}, Lio/appmetrica/analytics/impl/kf;->d(Ljava/lang/String;J)Lio/appmetrica/analytics/impl/kf;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/mf;

    :cond_3
    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .line 36
    sget-object v0, Lio/appmetrica/analytics/impl/mf;->p:Lio/appmetrica/analytics/impl/lf;

    .line 37
    iget-object v0, v0, Lio/appmetrica/analytics/impl/lf;->b:Ljava/lang/String;

    const/4 v1, 0x0

    .line 38
    iget-object p0, p0, Lio/appmetrica/analytics/impl/kf;->a:Lio/appmetrica/analytics/impl/Va;

    invoke-interface {p0, v0, v1}, Lio/appmetrica/analytics/impl/Va;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b(Z)Z
    .locals 1

    .line 33
    sget-object v0, Lio/appmetrica/analytics/impl/mf;->f:Lio/appmetrica/analytics/impl/lf;

    .line 34
    iget-object v0, v0, Lio/appmetrica/analytics/impl/lf;->b:Ljava/lang/String;

    .line 35
    iget-object p0, p0, Lio/appmetrica/analytics/impl/kf;->a:Lio/appmetrica/analytics/impl/Va;

    invoke-interface {p0, v0, p1}, Lio/appmetrica/analytics/impl/Va;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final c()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object p0, p0, Lio/appmetrica/analytics/impl/kf;->a:Lio/appmetrica/analytics/impl/Va;

    invoke-interface {p0}, Lio/appmetrica/analytics/impl/Va;->b()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final c(Z)V
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/impl/mf;->g:Lio/appmetrica/analytics/impl/lf;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/lf;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/impl/kf;->d(Ljava/lang/String;Z)Lio/appmetrica/analytics/impl/kf;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/kf;->flushAsync()V

    return-void
.end method

.method public final d(Z)Lio/appmetrica/analytics/impl/mf;
    .locals 1

    .line 28
    sget-object v0, Lio/appmetrica/analytics/impl/mf;->f:Lio/appmetrica/analytics/impl/lf;

    .line 29
    iget-object v0, v0, Lio/appmetrica/analytics/impl/lf;->b:Ljava/lang/String;

    .line 30
    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/impl/kf;->d(Ljava/lang/String;Z)Lio/appmetrica/analytics/impl/kf;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/mf;

    return-object p0
.end method

.method public final d()Ljava/lang/Boolean;
    .locals 3

    sget-object v0, Lio/appmetrica/analytics/impl/mf;->g:Lio/appmetrica/analytics/impl/lf;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/lf;->b:Ljava/lang/String;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/kf;->a:Lio/appmetrica/analytics/impl/Va;

    invoke-interface {v2, v1}, Lio/appmetrica/analytics/impl/Va;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lio/appmetrica/analytics/impl/lf;->b:Ljava/lang/String;

    const/4 v1, 0x1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/kf;->a:Lio/appmetrica/analytics/impl/Va;

    invoke-interface {p0, v0, v1}, Lio/appmetrica/analytics/impl/Va;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final e(Z)V
    .locals 1

    .line 12
    sget-object v0, Lio/appmetrica/analytics/impl/mf;->r:Lio/appmetrica/analytics/impl/lf;

    .line 13
    iget-object v0, v0, Lio/appmetrica/analytics/impl/lf;->b:Ljava/lang/String;

    .line 14
    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/impl/kf;->d(Ljava/lang/String;Z)Lio/appmetrica/analytics/impl/kf;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/kf;->flushAsync()V

    return-void
.end method

.method public final e()Z
    .locals 2

    sget-object v0, Lio/appmetrica/analytics/impl/mf;->d:Lio/appmetrica/analytics/impl/lf;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/lf;->b:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/kf;->a:Lio/appmetrica/analytics/impl/Va;

    invoke-interface {p0, v0, v1}, Lio/appmetrica/analytics/impl/Va;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final f()J
    .locals 3

    sget-object v0, Lio/appmetrica/analytics/impl/mf;->q:Lio/appmetrica/analytics/impl/lf;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/lf;->b:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/kf;->a:Lio/appmetrica/analytics/impl/Va;

    invoke-interface {p0, v0, v1, v2}, Lio/appmetrica/analytics/impl/Va;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final f(Z)V
    .locals 1

    .line 13
    sget-object v0, Lio/appmetrica/analytics/impl/mf;->d:Lio/appmetrica/analytics/impl/lf;

    .line 14
    iget-object v0, v0, Lio/appmetrica/analytics/impl/lf;->b:Ljava/lang/String;

    .line 15
    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/impl/kf;->d(Ljava/lang/String;Z)Lio/appmetrica/analytics/impl/kf;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/kf;->flushAsync()V

    return-void
.end method

.method public final flushAsync()V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/kf;->a:Lio/appmetrica/analytics/impl/Va;

    invoke-interface {p0}, Lio/appmetrica/analytics/impl/Va;->flushAsync()V

    return-void
.end method

.method public final g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 13
    new-instance p0, Lio/appmetrica/analytics/impl/lf;

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, v0}, Lio/appmetrica/analytics/impl/lf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object p0, p0, Lio/appmetrica/analytics/impl/lf;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final g()V
    .locals 2

    sget-object v0, Lio/appmetrica/analytics/impl/mf;->o:Lio/appmetrica/analytics/impl/lf;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/lf;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/appmetrica/analytics/impl/kf;->d(Ljava/lang/String;Z)Lio/appmetrica/analytics/impl/kf;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/kf;->flushAsync()V

    return-void
.end method

.method public final h()V
    .locals 2

    sget-object v0, Lio/appmetrica/analytics/impl/mf;->n:Lio/appmetrica/analytics/impl/lf;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/lf;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/appmetrica/analytics/impl/kf;->d(Ljava/lang/String;Z)Lio/appmetrica/analytics/impl/kf;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/kf;->flushAsync()V

    return-void
.end method

.method public final i()Z
    .locals 2

    sget-object v0, Lio/appmetrica/analytics/impl/mf;->n:Lio/appmetrica/analytics/impl/lf;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/lf;->b:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/kf;->a:Lio/appmetrica/analytics/impl/Va;

    invoke-interface {p0, v0, v1}, Lio/appmetrica/analytics/impl/Va;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final j()Z
    .locals 2

    sget-object v0, Lio/appmetrica/analytics/impl/mf;->o:Lio/appmetrica/analytics/impl/lf;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/lf;->b:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/kf;->a:Lio/appmetrica/analytics/impl/Va;

    invoke-interface {p0, v0, v1}, Lio/appmetrica/analytics/impl/Va;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
