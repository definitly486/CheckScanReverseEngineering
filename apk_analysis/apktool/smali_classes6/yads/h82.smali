.class public final Lyads/h82;
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

    iput-object p1, p0, Lyads/h82;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lyads/r72;

    iget-object v1, p0, Lyads/h82;->a:Lyads/tq3;

    iget-object v1, v1, Lyads/tq3;->k1:Lcl4;

    const-string v2, "actions"

    invoke-static {p1, p2, v2, v1}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lyads/h82;->a:Lyads/tq3;

    iget-object v2, v2, Lyads/tq3;->t8:Lcl4;

    const-string v3, "images"

    invoke-static {p1, p2, v3, v2}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object v2

    iget-object p0, p0, Lyads/h82;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->q8:Lcl4;

    const-string v3, "ranges"

    invoke-static {p1, p2, v3, p0}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object p0

    sget-object v3, Lyads/w36;->c:Lyads/u36;

    const-string v4, "text"

    invoke-static {p1, p2, v4, v3}, Lyads/oq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lyads/n36;)Lyads/as2;

    move-result-object p1

    invoke-direct {v0, v1, v2, p0, p1}, Lyads/r72;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyads/as2;)V

    return-object v0
.end method
