.class public Lio/appmetrica/analytics/impl/a6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/event/CounterReportApi;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/appmetrica/analytics/impl/a6;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:Landroid/util/Pair;

.field public g:I

.field public h:Ljava/lang/String;

.field public i:J

.field public j:J

.field public k:Lio/appmetrica/analytics/impl/sa;

.field public l:Lio/appmetrica/analytics/impl/y9;

.field public m:Landroid/os/Bundle;

.field public n:Ljava/lang/Boolean;

.field public o:Ljava/lang/Integer;

.field public p:Ljava/util/Map;

.field public q:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/Z5;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Z5;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/impl/a6;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 39
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/appmetrica/analytics/impl/a6;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 38
    const-string v0, ""

    invoke-direct {p0, v0, p1, p2}, Lio/appmetrica/analytics/impl/a6;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lio/appmetrica/analytics/impl/sa;->b:Lio/appmetrica/analytics/impl/sa;

    iput-object v0, p0, Lio/appmetrica/analytics/impl/a6;->k:Lio/appmetrica/analytics/impl/sa;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/a6;->p:Ljava/util/Map;

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-direct {v0}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;-><init>()V

    iput-object p2, p0, Lio/appmetrica/analytics/impl/a6;->a:Ljava/lang/String;

    iput p3, p0, Lio/appmetrica/analytics/impl/a6;->d:I

    iput-object p1, p0, Lio/appmetrica/analytics/impl/a6;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lio/appmetrica/analytics/impl/a6;->i:J

    invoke-virtual {v0}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lio/appmetrica/analytics/impl/a6;->j:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lio/appmetrica/analytics/impl/a6;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 41
    invoke-virtual {p0, p4, p5}, Lio/appmetrica/analytics/impl/a6;->b(J)V

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Landroid/util/Pair;
    .locals 3

    .line 167
    const-string v0, "CounterReport.AppEnvironmentDiffKey"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    const-string v1, "CounterReport.AppEnvironmentDiffValue"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 171
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a()Lio/appmetrica/analytics/impl/a6;
    .locals 3

    .line 192
    new-instance v0, Lio/appmetrica/analytics/impl/a6;

    .line 193
    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/a6;-><init>(Ljava/lang/String;I)V

    .line 194
    sget-object v1, Lio/appmetrica/analytics/impl/pb;->c:Lio/appmetrica/analytics/impl/pb;

    const/16 v1, 0x4000

    .line 195
    iput v1, v0, Lio/appmetrica/analytics/impl/a6;->d:I

    return-object v0
.end method

.method public static a(Lio/appmetrica/analytics/impl/a6;)Lio/appmetrica/analytics/impl/a6;
    .locals 1

    .line 175
    sget-object v0, Lio/appmetrica/analytics/impl/pb;->g:Lio/appmetrica/analytics/impl/pb;

    invoke-static {p0, v0}, Lio/appmetrica/analytics/impl/a6;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/pb;)Lio/appmetrica/analytics/impl/a6;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/Z9;)Lio/appmetrica/analytics/impl/a6;
    .locals 3

    .line 176
    sget-object v0, Lio/appmetrica/analytics/impl/pb;->B:Lio/appmetrica/analytics/impl/pb;

    invoke-static {p0, v0}, Lio/appmetrica/analytics/impl/a6;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/pb;)Lio/appmetrica/analytics/impl/a6;

    move-result-object v0

    .line 177
    new-instance v1, Lio/appmetrica/analytics/impl/A9;

    .line 178
    iget-object p1, p1, Lio/appmetrica/analytics/impl/Z9;->b:Lio/appmetrica/analytics/impl/kn;

    .line 179
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Ki;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 180
    invoke-direct {v1, p1}, Lio/appmetrica/analytics/impl/A9;-><init>(Ljava/lang/String;)V

    .line 181
    new-instance p1, Lio/appmetrica/analytics/impl/B9;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/B9;-><init>()V

    invoke-virtual {p1, v1}, Lio/appmetrica/analytics/impl/B9;->a(Lio/appmetrica/analytics/impl/A9;)Lio/appmetrica/analytics/impl/z9;

    move-result-object p1

    invoke-static {p1}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/a6;->setValueBytes([B)V

    .line 182
    iget-wide v1, p0, Lio/appmetrica/analytics/impl/a6;->j:J

    .line 183
    iput-wide v1, v0, Lio/appmetrica/analytics/impl/a6;->j:J

    .line 184
    iget-wide p0, p0, Lio/appmetrica/analytics/impl/a6;->i:J

    .line 185
    iput-wide p0, v0, Lio/appmetrica/analytics/impl/a6;->i:J

    return-object v0
.end method

.method public static a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/pb;)Lio/appmetrica/analytics/impl/a6;
    .locals 0

    .line 172
    invoke-static {p0}, Lio/appmetrica/analytics/impl/a6;->d(Lio/appmetrica/analytics/impl/a6;)Lio/appmetrica/analytics/impl/a6;

    move-result-object p0

    .line 173
    iget p1, p1, Lio/appmetrica/analytics/impl/pb;->a:I

    .line 174
    iput p1, p0, Lio/appmetrica/analytics/impl/a6;->d:I

    return-object p0
.end method

.method public static a(Lio/appmetrica/analytics/impl/a6;Ljava/lang/String;)Lio/appmetrica/analytics/impl/a6;
    .locals 1

    .line 188
    invoke-static {p0}, Lio/appmetrica/analytics/impl/a6;->d(Lio/appmetrica/analytics/impl/a6;)Lio/appmetrica/analytics/impl/a6;

    move-result-object p0

    .line 189
    sget-object v0, Lio/appmetrica/analytics/impl/pb;->c:Lio/appmetrica/analytics/impl/pb;

    const/16 v0, 0x3001

    .line 190
    iput v0, p0, Lio/appmetrica/analytics/impl/a6;->d:I

    .line 191
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/a6;->setValue(Ljava/lang/String;)V

    return-object p0
.end method

.method public static a(Lio/appmetrica/analytics/impl/a6;Ljava/util/Collection;Lio/appmetrica/analytics/impl/M2;Lio/appmetrica/analytics/impl/r2;Ljava/util/List;)Lio/appmetrica/analytics/impl/a6;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/a6;",
            "Ljava/util/Collection<",
            "Lio/appmetrica/analytics/coreapi/internal/permission/PermissionState;",
            ">;",
            "Lio/appmetrica/analytics/impl/M2;",
            "Lio/appmetrica/analytics/impl/r2;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/appmetrica/analytics/impl/a6;"
        }
    .end annotation

    invoke-static {p0}, Lio/appmetrica/analytics/impl/a6;->d(Lio/appmetrica/analytics/impl/a6;)Lio/appmetrica/analytics/impl/a6;

    move-result-object p0

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/coreapi/internal/permission/PermissionState;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "name"

    iget-object v4, v1, Lio/appmetrica/analytics/coreapi/internal/permission/PermissionState;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "granted"

    iget-boolean v1, v1, Lio/appmetrica/analytics/coreapi/internal/permission/PermissionState;->granted:Z

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    if-eqz p2, :cond_8

    const-string v1, "background_restricted"

    iget-object v2, p2, Lio/appmetrica/analytics/impl/M2;->b:Ljava/lang/Boolean;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "app_standby_bucket"

    iget-object p2, p2, Lio/appmetrica/analytics/impl/M2;->a:Lio/appmetrica/analytics/impl/L2;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_7

    const/4 p3, 0x1

    if-eq p2, p3, :cond_6

    const/4 p3, 0x2

    if-eq p2, p3, :cond_5

    const/4 p3, 0x3

    if-eq p2, p3, :cond_4

    const/4 p3, 0x4

    if-eq p2, p3, :cond_3

    const/4 p3, 0x5

    if-eq p2, p3, :cond_2

    :goto_1
    const/4 p2, 0x0

    goto :goto_2

    :cond_2
    const-string p2, "RESTRICTED"

    goto :goto_2

    :cond_3
    const-string p2, "RARE"

    goto :goto_2

    :cond_4
    const-string p2, "FREQUENT"

    goto :goto_2

    :cond_5
    const-string p2, "WORKING_SET"

    goto :goto_2

    :cond_6
    const-string p2, "ACTIVE"

    goto :goto_2

    :cond_7
    const-string p2, "EXEMPTED"

    :goto_2
    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string p3, "permissions"

    invoke-virtual {p2, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "background_restrictions"

    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "available_providers"

    new-instance p3, Lorg/json/JSONArray;

    invoke-direct {p3, p4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    const-string p1, ""

    :goto_3
    sget-object p2, Lio/appmetrica/analytics/impl/pb;->c:Lio/appmetrica/analytics/impl/pb;

    const/16 p2, 0x3000

    iput p2, p0, Lio/appmetrica/analytics/impl/a6;->d:I

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/a6;->setValue(Ljava/lang/String;)V

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lio/appmetrica/analytics/impl/a6;
    .locals 3

    .line 196
    new-instance v0, Lio/appmetrica/analytics/impl/a6;

    .line 197
    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/a6;-><init>(Ljava/lang/String;I)V

    .line 198
    sget-object v1, Lio/appmetrica/analytics/impl/pb;->c:Lio/appmetrica/analytics/impl/pb;

    const/16 v1, 0x3020

    .line 199
    iput v1, v0, Lio/appmetrica/analytics/impl/a6;->d:I

    .line 200
    iput-object p0, v0, Lio/appmetrica/analytics/impl/a6;->b:Ljava/lang/String;

    .line 201
    sget-object p0, Lio/appmetrica/analytics/impl/y9;->c:Lio/appmetrica/analytics/impl/y9;

    .line 202
    iput-object p0, v0, Lio/appmetrica/analytics/impl/a6;->l:Lio/appmetrica/analytics/impl/y9;

    return-object v0
.end method

.method public static b(Landroid/os/Bundle;)Lio/appmetrica/analytics/impl/a6;
    .locals 3

    const/4 v0, 0x0

    const-string v1, ""

    if-eqz p0, :cond_0

    :try_start_0
    const-string v2, "CounterReport.Object"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/a6;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    return-object p0

    :catchall_0
    new-instance p0, Lio/appmetrica/analytics/impl/a6;

    invoke-direct {p0, v1, v0}, Lio/appmetrica/analytics/impl/a6;-><init>(Ljava/lang/String;I)V

    return-object p0

    :cond_0
    new-instance p0, Lio/appmetrica/analytics/impl/a6;

    invoke-direct {p0, v1, v0}, Lio/appmetrica/analytics/impl/a6;-><init>(Ljava/lang/String;I)V

    return-object p0
.end method

.method public static b(Lio/appmetrica/analytics/impl/a6;)Lio/appmetrica/analytics/impl/a6;
    .locals 1

    .line 31
    sget-object v0, Lio/appmetrica/analytics/impl/pb;->A:Lio/appmetrica/analytics/impl/pb;

    invoke-static {p0, v0}, Lio/appmetrica/analytics/impl/a6;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/pb;)Lio/appmetrica/analytics/impl/a6;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lio/appmetrica/analytics/impl/a6;)Lio/appmetrica/analytics/impl/a6;
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/impl/pb;->d:Lio/appmetrica/analytics/impl/pb;

    invoke-static {p0, v0}, Lio/appmetrica/analytics/impl/a6;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/pb;)Lio/appmetrica/analytics/impl/a6;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lio/appmetrica/analytics/impl/a6;)Lio/appmetrica/analytics/impl/a6;
    .locals 3

    new-instance v0, Lio/appmetrica/analytics/impl/a6;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/a6;-><init>(Ljava/lang/String;I)V

    iget-wide v1, p0, Lio/appmetrica/analytics/impl/a6;->j:J

    iput-wide v1, v0, Lio/appmetrica/analytics/impl/a6;->j:J

    iget-wide v1, p0, Lio/appmetrica/analytics/impl/a6;->i:J

    iput-wide v1, v0, Lio/appmetrica/analytics/impl/a6;->i:J

    iget-object v1, p0, Lio/appmetrica/analytics/impl/a6;->f:Landroid/util/Pair;

    iput-object v1, v0, Lio/appmetrica/analytics/impl/a6;->f:Landroid/util/Pair;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/a6;->c:Ljava/lang/String;

    iput-object v1, v0, Lio/appmetrica/analytics/impl/a6;->c:Ljava/lang/String;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/a6;->m:Landroid/os/Bundle;

    iput-object v1, v0, Lio/appmetrica/analytics/impl/a6;->m:Landroid/os/Bundle;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/a6;->p:Ljava/util/Map;

    iput-object v1, v0, Lio/appmetrica/analytics/impl/a6;->p:Ljava/util/Map;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/a6;->q:Ljava/lang/Integer;

    iput-object v1, v0, Lio/appmetrica/analytics/impl/a6;->q:Ljava/lang/Integer;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/a6;->h:Ljava/lang/String;

    iput-object p0, v0, Lio/appmetrica/analytics/impl/a6;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static e(Lio/appmetrica/analytics/impl/a6;)Lio/appmetrica/analytics/impl/a6;
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/impl/pb;->F:Lio/appmetrica/analytics/impl/pb;

    invoke-static {p0, v0}, Lio/appmetrica/analytics/impl/a6;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/pb;)Lio/appmetrica/analytics/impl/a6;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(J)V
    .locals 0

    .line 162
    iput-wide p1, p0, Lio/appmetrica/analytics/impl/a6;->i:J

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/sa;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lio/appmetrica/analytics/impl/a6;->k:Lio/appmetrica/analytics/impl/sa;

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/y9;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lio/appmetrica/analytics/impl/a6;->l:Lio/appmetrica/analytics/impl/y9;

    return-void
.end method

.method public final a(Ljava/lang/Boolean;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lio/appmetrica/analytics/impl/a6;->n:Ljava/lang/Boolean;

    return-void
.end method

.method public final a(Ljava/lang/Integer;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lio/appmetrica/analytics/impl/a6;->o:Ljava/lang/Integer;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 186
    iget-object v0, p0, Lio/appmetrica/analytics/impl/a6;->f:Landroid/util/Pair;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/a6;->f:Landroid/util/Pair;

    :cond_0
    return-void
.end method

.method public final b()Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object p0, p0, Lio/appmetrica/analytics/impl/a6;->f:Landroid/util/Pair;

    return-object p0
.end method

.method public final b(J)V
    .locals 0

    .line 29
    iput-wide p1, p0, Lio/appmetrica/analytics/impl/a6;->j:J

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lio/appmetrica/analytics/impl/a6;->c:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/Boolean;
    .locals 0

    .line 8
    iget-object p0, p0, Lio/appmetrica/analytics/impl/a6;->n:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lio/appmetrica/analytics/impl/a6;->m:Landroid/os/Bundle;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lio/appmetrica/analytics/impl/a6;->h:Ljava/lang/String;

    return-void
.end method

.method public final d()J
    .locals 2

    .line 43
    iget-wide v0, p0, Lio/appmetrica/analytics/impl/a6;->i:J

    return-wide v0
.end method

.method public final d(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 42
    :goto_0
    const-string v0, "CounterReport.Object"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p1
.end method

.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final e()J
    .locals 2

    .line 7
    iget-wide v0, p0, Lio/appmetrica/analytics/impl/a6;->j:J

    return-wide v0
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/a6;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final g()Lio/appmetrica/analytics/impl/sa;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/a6;->k:Lio/appmetrica/analytics/impl/sa;

    return-object p0
.end method

.method public final getBytesTruncated()I
    .locals 0

    iget p0, p0, Lio/appmetrica/analytics/impl/a6;->g:I

    return p0
.end method

.method public final getCustomType()I
    .locals 0

    iget p0, p0, Lio/appmetrica/analytics/impl/a6;->e:I

    return p0
.end method

.method public final getExtras()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/a6;->p:Ljava/util/Map;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/a6;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getType()I
    .locals 0

    iget p0, p0, Lio/appmetrica/analytics/impl/a6;->d:I

    return p0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/a6;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getValueBytes()[B
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/a6;->b:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public final getValueProtocolVersion()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/a6;->q:Ljava/lang/Integer;

    return-object p0
.end method

.method public final h()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/a6;->o:Ljava/lang/Integer;

    return-object p0
.end method

.method public final i()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/a6;->m:Landroid/os/Bundle;

    return-object p0
.end method

.method public final j()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/a6;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final k()Lio/appmetrica/analytics/impl/y9;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/a6;->l:Lio/appmetrica/analytics/impl/y9;

    return-object p0
.end method

.method public final l()Z
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/a6;->a:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final m()Z
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/impl/pb;->c:Lio/appmetrica/analytics/impl/pb;

    const/4 v0, -0x1

    iget p0, p0, Lio/appmetrica/analytics/impl/a6;->d:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final setBytesTruncated(I)V
    .locals 0

    iput p1, p0, Lio/appmetrica/analytics/impl/a6;->g:I

    return-void
.end method

.method public final setCustomType(I)V
    .locals 0

    iput p1, p0, Lio/appmetrica/analytics/impl/a6;->e:I

    return-void
.end method

.method public final setExtras(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/appmetrica/analytics/impl/a6;->p:Ljava/util/Map;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/a6;->a:Ljava/lang/String;

    return-void
.end method

.method public final setType(I)V
    .locals 0

    iput p1, p0, Lio/appmetrica/analytics/impl/a6;->d:I

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/a6;->b:Ljava/lang/String;

    return-void
.end method

.method public setValueBytes([B)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lio/appmetrica/analytics/impl/a6;->b:Ljava/lang/String;

    return-void
.end method

.method public final setValueProtocolVersion(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/a6;->q:Ljava/lang/Integer;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/a6;->a:Ljava/lang/String;

    iget v1, p0, Lio/appmetrica/analytics/impl/a6;->d:I

    invoke-static {v1}, Lio/appmetrica/analytics/impl/pb;->a(I)Lio/appmetrica/analytics/impl/pb;

    move-result-object v1

    iget-object v1, v1, Lio/appmetrica/analytics/impl/pb;->b:Ljava/lang/String;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/a6;->b:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1f4

    if-le v2, v3, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    const-string v2, ", type: "

    const-string v3, ", value: "

    const-string v4, "[event: "

    invoke-static {v4, v0, v2, v1, v3}, Lad2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-static {v0, p0, v1}, Lme0;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/a6;->a:Ljava/lang/String;

    const-string v1, "CounterReport.Event"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/a6;->b:Ljava/lang/String;

    const-string v1, "CounterReport.Value"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lio/appmetrica/analytics/impl/a6;->d:I

    const-string v1, "CounterReport.Type"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lio/appmetrica/analytics/impl/a6;->e:I

    const-string v1, "CounterReport.CustomType"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lio/appmetrica/analytics/impl/a6;->g:I

    const-string v1, "CounterReport.TRUNCATED"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/a6;->h:Ljava/lang/String;

    const-string v1, "CounterReport.ProfileID"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/a6;->k:Lio/appmetrica/analytics/impl/sa;

    iget v0, v0, Lio/appmetrica/analytics/impl/sa;->a:I

    const-string v1, "CounterReport.UniquenessStatus"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/a6;->m:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "CounterReport.Payload"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/a6;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "CounterReport.Environment"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/a6;->f:Landroid/util/Pair;

    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "CounterReport.AppEnvironmentDiffKey"

    invoke-virtual {p2, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "CounterReport.AppEnvironmentDiffValue"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-wide v0, p0, Lio/appmetrica/analytics/impl/a6;->i:J

    const-string v2, "CounterReport.CreationElapsedRealtime"

    invoke-virtual {p2, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-wide v0, p0, Lio/appmetrica/analytics/impl/a6;->j:J

    const-string v2, "CounterReport.CreationTimestamp"

    invoke-virtual {p2, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/a6;->l:Lio/appmetrica/analytics/impl/y9;

    if-eqz v0, :cond_3

    iget v0, v0, Lio/appmetrica/analytics/impl/y9;->a:I

    const-string v1, "CounterReport.Source"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    iget-object v0, p0, Lio/appmetrica/analytics/impl/a6;->n:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "CounterReport.AttributionIdChanged"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    iget-object v0, p0, Lio/appmetrica/analytics/impl/a6;->o:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "CounterReport.OpenId"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    iget-object v0, p0, Lio/appmetrica/analytics/impl/a6;->p:Ljava/util/Map;

    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->mapToBundle(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CounterReport.Extras"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/a6;->q:Ljava/lang/Integer;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string v0, "CounterReport.ValueProtocolVersion"

    invoke-virtual {p2, v0, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
