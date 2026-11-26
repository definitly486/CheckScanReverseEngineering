.class public final Lyads/se1;
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

    iput-object p1, p0, Lyads/se1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 65
    check-cast p2, Lyads/ze1;

    invoke-virtual {p0, p1, p2, p3}, Lyads/se1;->a(Lyads/ys4;Lyads/ze1;Lorg/json/JSONObject;)Lyads/pe1;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/ys4;Lyads/ze1;Lorg/json/JSONObject;)Lyads/pe1;
    .locals 11

    new-instance v8, Lyads/pe1;

    iget-object v2, p2, Lyads/ze1;->a:Lyads/zw2;

    sget-object v5, Lyads/w36;->a:Lyads/o36;

    sget-object v6, Lyads/bt4;->c:Lnl3;

    sget-object v7, Lyads/te1;->a:Lyads/xr2;

    const-string v4, "always_visible"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/as2;)Lyads/as2;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v9, v7

    goto :goto_0

    :cond_0
    move-object v9, v2

    :goto_0
    iget-object v1, p2, Lyads/ze1;->b:Lyads/zw2;

    sget-object v2, Lyads/w36;->c:Lyads/u36;

    const-string v4, "pattern"

    invoke-static {p1, v1, p3, v4, v2}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v10

    iget-object v2, p2, Lyads/ze1;->c:Lyads/zw2;

    iget-object v1, p0, Lyads/se1;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->u3:Lcl4;

    iget-object v6, v1, Lyads/tq3;->s3:Lcl4;

    sget-object v7, Lyads/te1;->b:Lyads/st3;

    const-string v4, "pattern_elements"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;Lyads/st3;)Ljava/util/List;

    move-result-object v1

    iget-object v0, p2, Lyads/ze1;->d:Lyads/zw2;

    const-string v2, "raw_text_variable"

    invoke-static {v0, p3, v2}, Lyads/qq3;->a(Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v8, v9, v10, v1, v0}, Lyads/pe1;-><init>(Lyads/as2;Lyads/as2;Ljava/util/List;Ljava/lang/String;)V

    return-object v8
.end method
