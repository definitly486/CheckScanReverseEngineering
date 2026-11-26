.class public final Lyads/p62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/qv5;


# instance fields
.field public final a:Lyads/tq3;


# direct methods
.method public constructor <init>(Lyads/tq3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/p62;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 7

    check-cast p2, Lyads/w62;

    new-instance v0, Lyads/u52;

    iget-object v2, p2, Lyads/w62;->a:Lyads/zw2;

    iget-object v1, p0, Lyads/p62;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->x3:Lcl4;

    iget-object v6, v1, Lyads/tq3;->v3:Lcl4;

    const-string v4, "height"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/af1;

    if-nez p1, :cond_0

    sget-object p1, Lyads/q62;->a:Lyads/af1;

    :cond_0
    iget-object v2, p2, Lyads/w62;->b:Lyads/zw2;

    sget-object v5, Lyads/w36;->e:Lyads/v36;

    sget-object v6, Lyads/bt4;->b:Lnl3;

    const-string v4, "image_url"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object p3

    iget-object v2, p2, Lyads/w62;->c:Lyads/zw2;

    iget-object p0, p0, Lyads/p62;->a:Lyads/tq3;

    iget-object v5, p0, Lyads/tq3;->x3:Lcl4;

    iget-object v6, p0, Lyads/tq3;->v3:Lcl4;

    const-string v4, "width"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->b(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/af1;

    if-nez p0, :cond_1

    sget-object p0, Lyads/q62;->b:Lyads/af1;

    :cond_1
    invoke-direct {v0, p1, p3, p0}, Lyads/u52;-><init>(Lyads/af1;Lyads/as2;Lyads/af1;)V

    return-object v0
.end method
