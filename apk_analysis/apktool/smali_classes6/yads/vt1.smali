.class public final Lyads/vt1;
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

    iput-object p1, p0, Lyads/vt1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 9

    new-instance v0, Lyads/qt1;

    iget-object v1, p0, Lyads/vt1;->a:Lyads/tq3;

    iget-object v1, v1, Lyads/tq3;->z5:Lcl4;

    sget-object v2, Lyads/yt1;->c:Lyads/st3;

    const-string v3, "changes"

    invoke-static {p1, p2, v3, v1, v2}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lyads/st3;)Ljava/util/List;

    move-result-object v1

    sget-object v5, Lyads/yt1;->b:Lyads/m36;

    sget-object v6, Lyads/pt1;->d:Lnl3;

    sget-object v8, Lyads/yt1;->a:Lyads/xr2;

    sget-object v2, Lyads/oq3;->a:Lyads/y50;

    sget-object v7, Lyads/uq3;->a:Lyads/l66;

    const-string v4, "mode"

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v2 .. v8}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v8, p1

    :goto_0
    iget-object p1, p0, Lyads/vt1;->a:Lyads/tq3;

    iget-object p1, p1, Lyads/tq3;->k1:Lcl4;

    const-string p2, "on_applied_actions"

    invoke-static {v2, v3, p2, p1}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lyads/vt1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->k1:Lcl4;

    const-string p2, "on_failed_actions"

    invoke-static {v2, v3, p2, p0}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, p1, p0, v8}, Lyads/qt1;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyads/as2;)V

    return-object v0
.end method
