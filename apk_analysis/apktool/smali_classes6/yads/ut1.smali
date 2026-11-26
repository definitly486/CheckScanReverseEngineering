.class public final Lyads/ut1;
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

    iput-object p1, p0, Lyads/ut1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 8

    check-cast p2, Lyads/au1;

    new-instance v0, Lyads/nt1;

    iget-object v1, p2, Lyads/au1;->a:Lyads/zw2;

    const-string v2, "id"

    invoke-static {v1, p3, v2}, Lyads/qq3;->a(Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p2, Lyads/au1;->b:Lyads/zw2;

    iget-object p0, p0, Lyads/ut1;->a:Lyads/tq3;

    iget-object v6, p0, Lyads/tq3;->u9:Lcl4;

    iget-object v7, p0, Lyads/tq3;->s9:Lcl4;

    const-string v5, "items"

    move-object v2, p1

    move-object v4, p3

    invoke-static/range {v2 .. v7}, Lyads/qq3;->c(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lyads/nt1;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method
