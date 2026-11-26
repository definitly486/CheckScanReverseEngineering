.class public final Ltk2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrxa;
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# static fields
.field public static final synthetic c:Ltk2;

.field public static final synthetic d:Ltk2;

.field public static final synthetic e:Ltk2;

.field public static final synthetic f:Ltk2;


# instance fields
.field public final synthetic b:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Ltk2;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ltk2;-><init>(I)V

    sput-object v0, Ltk2;->c:Ltk2;

    new-instance v0, Ltk2;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ltk2;-><init>(I)V

    sput-object v0, Ltk2;->d:Ltk2;

    new-instance v0, Ltk2;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ltk2;-><init>(I)V

    sput-object v0, Ltk2;->e:Ltk2;

    new-instance v0, Ltk2;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ltk2;-><init>(I)V

    sput-object v0, Ltk2;->f:Ltk2;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ltk2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lz8a;Lorg/json/JSONObject;)Lpp9;
    .locals 8

    const-string v0, "banner_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "impression_id"

    invoke-static {p1, v0}, Ly14;->s(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "pad_id"

    invoke-static {p1, v0}, Ly14;->s(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "pattern_id"

    invoke-static {p1, v0}, Ly14;->s(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "dsp_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-static {p1}, Ly14;->q(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v7

    new-instance v1, Lzm9;

    invoke-direct/range {v1 .. v7}, Lzm9;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/ArrayList;)V

    new-instance p1, Lpp9;

    invoke-direct {p1, p0, v1}, Lpp9;-><init>(Lz8a;Lzm9;)V

    return-object p1
.end method

.method public static b(Li7a;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Li7a;->a:Lz8a;

    iget-object v1, v0, Lz8a;->f:Lj5a;

    sget-object v2, Ll4a;->b:Lq1;

    const-string v3, ""

    if-eq v1, v2, :cond_2

    iget v0, v0, Lz8a;->h:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ad_context"

    iget-object v2, p0, Li7a;->a:Lz8a;

    invoke-static {v2}, Ltk2;->d(Lz8a;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Li7a;->b:Lpp9;

    if-eqz v1, :cond_1

    const-string v2, "banner_context"

    invoke-static {v1}, Ltk2;->c(Lpp9;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, "stage"

    iget v2, p0, Li7a;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "stat_description"

    iget-object p0, p0, Li7a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MonitoringSerializer: seriailize exception - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1, v0, p0}, Lfg;->e(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-object v3
.end method

.method public static c(Lpp9;)Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object p0, p0, Lpp9;->b:Lzm9;

    iget-object v1, p0, Lzm9;->a:Ljava/lang/String;

    iget-object v2, p0, Lzm9;->f:Ljava/util/List;

    const-string v3, "banner_id"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lzm9;->b:Ljava/lang/String;

    const-string v3, "impression_id"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lzm9;->c:Ljava/lang/String;

    const-string v3, "pad_id"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lzm9;->d:Ljava/lang/String;

    const-string v3, "pattern_id"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p0, p0, Lzm9;->e:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    const-string v1, "dsp_id"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    if-eqz v2, :cond_2

    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    const-string v1, "labels"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    return-object v0
.end method

.method public static d(Lz8a;)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lz8a;->a:Ljava/lang/String;

    const-string v2, "ad_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lz8a;->b:Ljava/lang/String;

    const-string v2, "handle_data_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v1, p0, Lz8a;->c:I

    const-string v2, "ad_format"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lz8a;->d:Ljava/lang/Integer;

    const-string v2, "slot_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v1, p0, Lz8a;->e:I

    const-string v2, "ad_source"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget p0, p0, Lz8a;->g:I

    const-string v1, "cache_policy"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 p0, 0x0

    const-string v1, "tag"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public static e(Ljava/lang/String;)Li7a;
    .locals 5

    const-string v0, "banner_context"

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Li7a;->e:Li7a;

    return-object p0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "ad_context"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Ltk2;->f(Lorg/json/JSONObject;)Lz8a;

    move-result-object p0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p0, v0}, Ltk2;->a(Lz8a;Lorg/json/JSONObject;)Lpp9;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_0
    const-string v3, "stage"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "stat_description"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Li7a;

    invoke-direct {v4, p0, v0, v3, v2}, Li7a;-><init>(Lz8a;Lpp9;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "MonitoringSerializer: deseriailize exception - "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0, p0}, Lfg;->e(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    sget-object p0, Li7a;->e:Li7a;

    return-object p0
.end method

.method public static f(Lorg/json/JSONObject;)Lz8a;
    .locals 13

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v0, "ad_id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "handle_data_id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    const-string v1, "ad_format"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v1, "slot_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_1
    move-object v8, v3

    const-string v1, "ad_source"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v3, "cache_policy"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    const/4 v12, 0x1

    if-nez v1, :cond_2

    if-eqz v8, :cond_2

    sget-object v11, Ll4a;->a:Ll5a;

    move v9, v5

    new-instance v5, Lz8a;

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v6, v2

    invoke-direct/range {v5 .. v11}, Lz8a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;IILj5a;)V

    goto :goto_2

    :cond_2
    if-ne v1, v12, :cond_3

    sget-object v7, Ll4a;->a:Ll5a;

    new-instance v1, Lz8a;

    const/4 v6, 0x1

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Lz8a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;IILj5a;)V

    :goto_1
    move-object v5, v1

    goto :goto_2

    :cond_3
    const/4 v0, 0x2

    if-ne v1, v0, :cond_5

    sget-object v7, Ll4a;->a:Ll5a;

    new-instance v1, Lz8a;

    const/4 v3, 0x0

    const/4 v6, 0x2

    invoke-direct/range {v1 .. v7}, Lz8a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;IILj5a;)V

    goto :goto_1

    :goto_2
    iget v0, v5, Lz8a;->h:I

    if-nez v0, :cond_4

    iget-object v0, v5, Lz8a;->f:Lj5a;

    new-instance v1, Lr8a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v5, v12}, Lr8a;-><init>(ILjava/lang/Object;Z)V

    invoke-interface {v0, v5, v12, v1}, Lj5a;->c(Lz8a;ZLr8a;)V

    :cond_4
    iput p0, v5, Lz8a;->g:I

    return-object v5

    :cond_5
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "Unknown json format or content"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic h(I)Ljava/lang/Integer;
    .locals 2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/high16 v1, -0x80000000

    if-eq p0, v1, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/internal/auth-api-phone/zzag;

    sget-object p0, Lcom/google/android/gms/internal/auth-api-phone/zzr;->a:Lcom/google/android/gms/common/logging/Logger;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/google/android/gms/internal/auth-api-phone/zzq;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/auth-api-phone/zzq;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/auth-api-phone/zzh;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/auth-api-phone/zzh;->zzd(Lcom/google/android/gms/internal/auth-api-phone/zzg;)V

    return-void
.end method

.method public g()Z
    .locals 2

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public synthetic zza()Ljava/lang/Object;
    .locals 2

    iget p0, p0, Ltk2;->b:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfy;->a:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaif;->zzg()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfy;->a:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzags;->zzr()J

    move-result-wide v0

    long-to-int p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzfy;->a:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzags;->zzah()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
