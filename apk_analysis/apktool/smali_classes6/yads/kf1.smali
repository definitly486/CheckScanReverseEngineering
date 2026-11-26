.class public final Lyads/kf1;
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

    iput-object p1, p0, Lyads/kf1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 6

    new-instance v0, Lyads/hf1;

    iget-object v1, p0, Lyads/kf1;->a:Lyads/tq3;

    iget-object v1, v1, Lyads/tq3;->F1:Lcl4;

    const-string v2, "background"

    invoke-static {p1, p2, v2, v1}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lyads/kf1;->a:Lyads/tq3;

    iget-object v2, v2, Lyads/tq3;->L1:Lcl4;

    const-string v3, "border"

    invoke-static {p1, p2, v3, v2}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/f51;

    iget-object v3, p0, Lyads/kf1;->a:Lyads/tq3;

    iget-object v3, v3, Lyads/tq3;->B3:Lcl4;

    const-string v4, "next_focus_ids"

    invoke-static {p1, p2, v4, v3}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/gf1;

    iget-object v4, p0, Lyads/kf1;->a:Lyads/tq3;

    iget-object v4, v4, Lyads/tq3;->k1:Lcl4;

    const-string v5, "on_blur"

    invoke-static {p1, p2, v5, v4}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v4

    iget-object p0, p0, Lyads/kf1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->k1:Lcl4;

    const-string v5, "on_focus"

    invoke-static {p1, p2, v5, p0}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lyads/hf1;-><init>(Ljava/util/List;Lyads/f51;Lyads/gf1;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
