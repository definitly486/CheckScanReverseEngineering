.class public final Lyads/qe1;
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

    iput-object p1, p0, Lyads/qe1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lyads/qe1;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/pe1;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/pe1;
    .locals 8

    new-instance v0, Lyads/pe1;

    sget-object v4, Lyads/w36;->a:Lyads/o36;

    sget-object v5, Lyads/bt4;->c:Lnl3;

    sget-object v7, Lyads/te1;->a:Lyads/xr2;

    sget-object v1, Lyads/oq3;->a:Lyads/y50;

    sget-object v6, Lyads/uq3;->a:Lyads/l66;

    const-string v3, "always_visible"

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v1 .. v7}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;Lyads/l66;Lyads/as2;)Lyads/as2;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v7, p1

    :goto_0
    sget-object p1, Lyads/w36;->c:Lyads/u36;

    const-string p2, "pattern"

    invoke-static {v1, v2, p2, p1}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object p1

    iget-object p0, p0, Lyads/qe1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->s3:Lcl4;

    sget-object p2, Lyads/te1;->b:Lyads/st3;

    const-string v3, "pattern_elements"

    invoke-static {v1, v2, v3, p0, p2}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lyads/st3;)Ljava/util/List;

    move-result-object p0

    const-string p2, "raw_text_variable"

    invoke-static {p2, v2}, Lyads/wq3;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {v0, v7, p1, p0, p2}, Lyads/pe1;-><init>(Lyads/as2;Lyads/as2;Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method
