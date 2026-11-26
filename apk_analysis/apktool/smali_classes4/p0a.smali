.class public final Lp0a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lp0a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lp0a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lz2a;Llia;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lp0a;->b:Ljava/lang/Object;

    new-instance v0, Lqw9;

    invoke-direct {v0, p1, p2}, Lqw9;-><init>(Lz2a;Llia;)V

    iput-object v0, p0, Lp0a;->c:Ljava/lang/Object;

    iget-object p0, v0, Lqw9;->a:Lqn9;

    const/4 p1, 0x2

    iput p1, p0, Lqn9;->b:I

    return-void
.end method

.method public static b(Lorg/json/JSONObject;)Lh14;
    .locals 5

    const-string v0, "url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string p0, "CommonVideoParser: PostView background image hasn\'t url"

    invoke-static {v2, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    const-string v1, "width"

    const/4 v3, -0x1

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_1

    const-string p0, "CommonVideoParser: PostView background image hasn\'t width"

    invoke-static {v2, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1
    const-string v4, "height"

    invoke-virtual {p0, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    if-gez p0, :cond_2

    const-string p0, "CommonVideoParser: PostView background image hasn\'t height"

    invoke-static {v2, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_2
    invoke-static {v1, p0, v0}, Lh14;->a(IILjava/lang/String;)Lh14;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Lkha;)V
    .locals 2

    iget-object p0, p0, Lp0a;->b:Ljava/lang/Object;

    check-cast p0, Llia;

    iget p2, p0, Llia;->p:F

    const/4 v0, 0x0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_0

    const-string p2, "point"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    :cond_0
    iget p0, p0, Llia;->q:F

    cmpg-float p0, p0, v0

    if-gez p0, :cond_1

    const-string p0, "pointP"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    :cond_1
    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lp0a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/moduleinstall/internal/zay;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/common/moduleinstall/internal/zaz;

    new-instance v1, Lnla;

    invoke-direct {v1, v0, p2}, Lnla;-><init>(Lcom/google/android/gms/common/moduleinstall/internal/zay;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/moduleinstall/internal/zaf;

    iget-object p0, p0, Lp0a;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;

    const/4 p2, 0x0

    invoke-virtual {p1, v1, p0, p2}, Lcom/google/android/gms/common/moduleinstall/internal/zaf;->zaf(Lcom/google/android/gms/common/moduleinstall/internal/zae;Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;Lcom/google/android/gms/common/moduleinstall/internal/zah;)V

    return-void
.end method
