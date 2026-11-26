.class public final Lyads/r61;
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

    iput-object p1, p0, Lyads/r61;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 4

    new-instance v0, Lyads/q61;

    sget-object v1, Lyads/w36;->f:Lyads/p36;

    sget-object v2, Lyads/bt4;->a:Lnl3;

    const-string v3, "background_color"

    invoke-static {p1, p2, v3, v1, v2}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;Lnl3;)Lyads/as2;

    move-result-object v1

    iget-object v2, p0, Lyads/r61;->a:Lyads/tq3;

    iget-object v2, v2, Lyads/tq3;->v3:Lcl4;

    const-string v3, "radius"

    invoke-static {p1, p2, v3, v2}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/af1;

    if-nez v2, :cond_0

    sget-object v2, Lyads/u61;->a:Lyads/af1;

    :cond_0
    iget-object p0, p0, Lyads/r61;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->D7:Lcl4;

    const-string v3, "stroke"

    invoke-static {p1, p2, v3, p0}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/l42;

    invoke-direct {v0, v1, v2, p0}, Lyads/q61;-><init>(Lyads/as2;Lyads/af1;Lyads/l42;)V

    return-object v0
.end method
