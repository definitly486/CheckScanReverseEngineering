.class public final Lyads/cu0;
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

    iput-object p1, p0, Lyads/cu0;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 8

    new-instance v0, Lyads/bu0;

    iget-object v1, p0, Lyads/cu0;->a:Lyads/tq3;

    iget-object v1, v1, Lyads/tq3;->k1:Lcl4;

    const-string v2, "on_fail_actions"

    invoke-static {p1, p2, v2, v1}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v1

    iget-object p0, p0, Lyads/cu0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->k1:Lcl4;

    const-string v2, "on_success_actions"

    invoke-static {p1, p2, v2, p0}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object p0

    sget-object v5, Lyads/w36;->e:Lyads/v36;

    sget-object v6, Lyads/bt4;->b:Lnl3;

    sget-object v2, Lyads/oq3;->a:Lyads/y50;

    sget-object v7, Lyads/uq3;->a:Lyads/l66;

    const-string v4, "url"

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v2 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;)Lyads/as2;

    move-result-object p1

    invoke-direct {v0, v1, p0, p1}, Lyads/bu0;-><init>(Ljava/util/List;Ljava/util/List;Lyads/as2;)V

    return-object v0
.end method
