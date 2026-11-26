.class public final Lyads/bg1;
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

    iput-object p1, p0, Lyads/bg1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lyads/vf1;

    iget-object p0, p0, Lyads/bg1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->E3:Lcl4;

    const-string v1, "arguments"

    invoke-static {p1, p2, v1, p0}, Lyads/wq3;->b(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object p0

    const-string p1, "body"

    invoke-static {p1, p2}, Lyads/wq3;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v1, Lyads/eg1;->a:Lyads/l66;

    sget-object v2, Lyads/uq3;->b:Lnl3;

    const-string v3, "name"

    invoke-static {p2, v3, v2, v1}, Lyads/wq3;->a(Lorg/json/JSONObject;Ljava/lang/String;Lnl3;Lyads/l66;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lyads/fd1;->d:Lnl3;

    sget-object v3, Lyads/uq3;->a:Lyads/l66;

    const-string v4, "return_type"

    invoke-static {p2, v4, v2, v3}, Lyads/wq3;->a(Lorg/json/JSONObject;Ljava/lang/String;Lnl3;Lyads/l66;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/fd1;

    invoke-direct {v0, p0, p1, v1, p2}, Lyads/vf1;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lyads/fd1;)V

    return-object v0
.end method
