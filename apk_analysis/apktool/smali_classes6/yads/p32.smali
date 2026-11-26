.class public final Lyads/p32;
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

    iput-object p1, p0, Lyads/p32;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 6

    new-instance v0, Lyads/y22;

    iget-object v1, p0, Lyads/p32;->a:Lyads/tq3;

    iget-object v1, v1, Lyads/tq3;->q1:Lcl4;

    const-string v2, "animation_in"

    invoke-static {p1, p2, v2, v1}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/k11;

    iget-object v2, p0, Lyads/p32;->a:Lyads/tq3;

    iget-object v2, v2, Lyads/tq3;->q1:Lcl4;

    const-string v3, "animation_out"

    invoke-static {p1, p2, v3, v2}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/k11;

    iget-object v3, p0, Lyads/p32;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->s9:Lcl4;

    const-string v4, "div"

    invoke-static {p1, p2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/br0;

    const-string v4, "state_id"

    invoke-static {v4, p2}, Lyads/wq3;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object p0, p0, Lyads/p32;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->k1:Lcl4;

    const-string v5, "swipe_out_actions"

    invoke-static {p1, p2, v5, p0}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lyads/y22;-><init>(Lyads/k11;Lyads/k11;Lyads/br0;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method
