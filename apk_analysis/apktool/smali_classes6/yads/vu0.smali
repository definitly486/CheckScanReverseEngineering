.class public final Lyads/vu0;
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

    iput-object p1, p0, Lyads/vu0;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 4

    new-instance v0, Lyads/ur0;

    iget-object v1, p0, Lyads/vu0;->a:Lyads/tq3;

    iget-object v1, v1, Lyads/tq3;->k1:Lcl4;

    const-string v2, "action"

    invoke-static {p1, p2, v2, v1}, Lyads/wq3;->c(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/xr0;

    iget-object p0, p0, Lyads/vu0;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->k1:Lcl4;

    const-string v2, "actions"

    invoke-static {p1, p2, v2, p0}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object p0

    sget-object v2, Lyads/w36;->c:Lyads/u36;

    const-string v3, "text"

    invoke-static {p1, p2, v3, v2}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object p1

    invoke-direct {v0, v1, p0, p1}, Lyads/ur0;-><init>(Lyads/xr0;Ljava/util/List;Lyads/as2;)V

    return-object v0
.end method
