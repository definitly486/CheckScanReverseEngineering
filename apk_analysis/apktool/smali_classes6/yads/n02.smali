.class public final Lyads/n02;
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

    iput-object p1, p0, Lyads/n02;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 61
    check-cast p2, Lyads/q02;

    invoke-virtual {p0, p1, p2, p3}, Lyads/n02;->a(Lyads/ys4;Lyads/q02;Lorg/json/JSONObject;)Lyads/f02;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/ys4;Lyads/q02;Lorg/json/JSONObject;)Lyads/f02;
    .locals 1

    instance-of v0, p2, Lyads/p02;

    if-eqz v0, :cond_0

    new-instance v0, Lyads/e02;

    iget-object p0, p0, Lyads/n02;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->r6:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/jy1;

    check-cast p2, Lyads/p02;

    iget-object p2, p2, Lyads/p02;->a:Lyads/ly1;

    invoke-virtual {p0, p1, p2, p3}, Lyads/jy1;->a(Lyads/ys4;Lyads/ly1;Lorg/json/JSONObject;)Lyads/gy1;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/e02;-><init>(Lyads/gy1;)V

    return-object v0

    :cond_0
    instance-of v0, p2, Lyads/o02;

    if-eqz v0, :cond_1

    new-instance v0, Lyads/d02;

    iget-object p0, p0, Lyads/n02;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->Z1:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/t61;

    check-cast p2, Lyads/o02;

    iget-object p2, p2, Lyads/o02;->a:Lyads/v61;

    invoke-virtual {p0, p1, p2, p3}, Lyads/t61;->a(Lyads/ys4;Lyads/v61;Lorg/json/JSONObject;)Lyads/q61;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/d02;-><init>(Lyads/q61;)V

    return-object v0

    :cond_1
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method
