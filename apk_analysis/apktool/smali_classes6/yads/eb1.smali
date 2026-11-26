.class public final Lyads/eb1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/q84;


# direct methods
.method public constructor <init>(Lyads/q84;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/eb1;->a:Lyads/q84;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lyads/db1;
    .locals 5

    :try_start_0
    sget-object v0, Lyads/et4;->a:Lyads/et4;

    new-instance v1, Lyads/ht1;

    new-instance v2, Lyads/px;

    new-instance v3, Lyads/gf3;

    invoke-direct {v3}, Lyads/gf3;-><init>()V

    new-instance v4, Lyads/nv5;

    invoke-direct {v4}, Lyads/nv5;-><init>()V

    invoke-direct {v2, v3, v4}, Lyads/px;-><init>(Lyads/gf3;Lyads/nv5;)V

    invoke-direct {v1, v0, v2}, Lyads/ht1;-><init>(Lyads/et4;Lyads/px;)V

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Lyads/ht1;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    sget p2, Lyads/db1;->i:I

    sget-object p2, Lyads/gv;->a:Lyads/tq3;

    iget-object p2, p2, Lyads/tq3;->E2:Lcl4;

    invoke-interface {p2}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/ib1;

    invoke-virtual {p2, v1, p1}, Lyads/ib1;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/db1;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :goto_1
    iget-object p0, p0, Lyads/eb1;->a:Lyads/q84;

    const-string p2, "Failed to create DivData"

    invoke-virtual {p0, p2, p1}, Lyads/q84;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method
