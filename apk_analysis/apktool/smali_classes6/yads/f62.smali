.class public final Lyads/f62;
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

    iput-object p1, p0, Lyads/f62;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 4

    new-instance v0, Lyads/t52;

    iget-object v1, p0, Lyads/f62;->a:Lyads/tq3;

    iget-object v1, v1, Lyads/tq3;->s9:Lcl4;

    const-string v2, "div"

    invoke-static {p1, p2, v2, v1}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/br0;

    sget-object v2, Lyads/w36;->c:Lyads/u36;

    const-string v3, "title"

    invoke-static {p1, p2, v3, v2}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object v2

    iget-object p0, p0, Lyads/f62;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->k1:Lcl4;

    const-string v3, "title_click_action"

    invoke-static {p1, p2, v3, p0}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/xr0;

    invoke-direct {v0, v1, v2, p0}, Lyads/t52;-><init>(Lyads/br0;Lyads/as2;Lyads/xr0;)V

    return-object v0
.end method
