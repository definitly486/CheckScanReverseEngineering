.class public final Lyads/qp6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/yp6;


# direct methods
.method public constructor <init>(Lyads/yp6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/qp6;->a:Lyads/yp6;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 3

    const/4 p0, 0x0

    invoke-static {p0, p0, p0, p0}, Lyads/rp6;->a(IIII)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {}, Lyads/zo6;->a()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    sget v0, Lyads/dq6;->a:I

    :goto_0
    sget-object v2, Lyads/pp6;->a:[I

    invoke-static {v0}, Lyads/xn0;->a(I)I

    move-result v0

    aget v0, v2, v0

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    :try_start_0
    const-string v0, "noOutputDevice"

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    const-string v0, "Error with setting output device status"

    const-string v1, "OMIDLIB"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1
.end method
