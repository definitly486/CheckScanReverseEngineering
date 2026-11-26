.class public final Lyads/oc1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ln0;


# instance fields
.field public final a:Lyads/tq3;


# direct methods
.method public constructor <init>(Lyads/tq3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/oc1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lyads/nc1;

    iget-object v1, p0, Lyads/oc1;->a:Lyads/tq3;

    iget-object v1, v1, Lyads/tq3;->k1:Lcl4;

    const-string v2, "on_fail_actions"

    invoke-static {p1, p2, v2, v1}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v1

    iget-object p0, p0, Lyads/oc1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->k1:Lcl4;

    const-string v2, "on_success_actions"

    invoke-static {p1, p2, v2, p0}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lyads/nc1;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
