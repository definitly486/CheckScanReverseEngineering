.class public final Lyads/qv1;
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

    iput-object p1, p0, Lyads/qv1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 7

    check-cast p2, Lyads/rv1;

    new-instance v0, Lyads/nv1;

    iget-object v2, p2, Lyads/rv1;->a:Lyads/zw2;

    iget-object v1, p0, Lyads/qv1;->a:Lyads/tq3;

    iget-object v5, v1, Lyads/tq3;->N2:Lcl4;

    iget-object v6, v1, Lyads/tq3;->L2:Lcl4;

    const-string v4, "x"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/ac1;

    iget-object v2, p2, Lyads/rv1;->b:Lyads/zw2;

    iget-object p0, p0, Lyads/qv1;->a:Lyads/tq3;

    iget-object v5, p0, Lyads/tq3;->N2:Lcl4;

    iget-object v6, p0, Lyads/tq3;->L2:Lcl4;

    const-string v4, "y"

    invoke-static/range {v1 .. v6}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/ac1;

    invoke-direct {v0, p1, p0}, Lyads/nv1;-><init>(Lyads/ac1;Lyads/ac1;)V

    return-object v0
.end method
