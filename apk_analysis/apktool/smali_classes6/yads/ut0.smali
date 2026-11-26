.class public final Lyads/ut0;
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

    iput-object p1, p0, Lyads/ut0;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lyads/xq3;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 7

    check-cast p2, Lyads/vt0;

    new-instance v0, Lyads/it0;

    iget-object v2, p2, Lyads/vt0;->a:Lyads/zw2;

    iget-object p0, p0, Lyads/ut0;->a:Lyads/tq3;

    iget-object v5, p0, Lyads/tq3;->e0:Lcl4;

    iget-object v6, p0, Lyads/tq3;->c0:Lcl4;

    const-string v4, "content"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lyads/qq3;->a(Lyads/ys4;Lyads/zw2;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/lt0;

    invoke-direct {v0, p0}, Lyads/it0;-><init>(Lyads/lt0;)V

    return-object v0
.end method
