.class public final Lyads/xz3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/dp6;


# direct methods
.method public constructor <init>(Lyads/dp6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/xz3;->a:Lyads/dp6;

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 80
    iget-object v0, p0, Lyads/xz3;->a:Lyads/dp6;

    invoke-static {v0}, Lyads/jq6;->a(Lyads/dp6;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "mediaPlayerVolume"

    invoke-static {v0, v1, p1}, Lyads/rp6;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lyads/oq6;->a()Lyads/oq6;

    move-result-object p1

    .line 81
    iget p1, p1, Lyads/oq6;->a:F

    .line 82
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "deviceVolume"

    invoke-static {v0, v1, p1}, Lyads/rp6;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lyads/xz3;->a:Lyads/dp6;

    .line 83
    iget-object p0, p0, Lyads/dp6;->e:Lyads/s9;

    .line 84
    const-string p1, "volumeChange"

    invoke-virtual {p0, p1, v0}, Lyads/s9;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 85
    :cond_0
    const-string p0, "Invalid Media volume"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final a(FF)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-lez v1, :cond_1

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lyads/xz3;->a:Lyads/dp6;

    invoke-static {v0}, Lyads/jq6;->a(Lyads/dp6;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "duration"

    invoke-static {v0, v1, p1}, Lyads/rp6;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "mediaPlayerVolume"

    invoke-static {v0, p2, p1}, Lyads/rp6;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lyads/oq6;->a()Lyads/oq6;

    move-result-object p1

    iget p1, p1, Lyads/oq6;->a:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "deviceVolume"

    invoke-static {v0, p2, p1}, Lyads/rp6;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lyads/xz3;->a:Lyads/dp6;

    iget-object p0, p0, Lyads/dp6;->e:Lyads/s9;

    const-string p1, "start"

    invoke-virtual {p0, p1, v0}, Lyads/s9;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :cond_0
    const-string p0, "Invalid Media volume"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "Invalid Media duration"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method
