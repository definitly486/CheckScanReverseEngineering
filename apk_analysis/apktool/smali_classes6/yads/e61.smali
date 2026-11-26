.class public final Lyads/e61;
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

    iput-object p1, p0, Lyads/e61;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 8

    check-cast p2, Lyads/g61;

    new-instance v0, Lyads/b61;

    iget-object v2, p2, Lyads/g61;->a:Lyads/zw2;

    iget-object p0, p0, Lyads/e61;->a:Lyads/tq3;

    iget-object v5, p0, Lyads/tq3;->W1:Lcl4;

    iget-object v6, p0, Lyads/tq3;->U1:Lcl4;

    sget-object v7, Lyads/f61;->a:Lyads/st3;

    const-string v4, "items"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v7}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;Lyads/st3;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/b61;-><init>(Ljava/util/List;)V

    return-object v0
.end method
