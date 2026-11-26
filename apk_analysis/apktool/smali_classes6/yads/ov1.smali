.class public final Lyads/ov1;
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

    iput-object p1, p0, Lyads/ov1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lyads/nv1;

    iget-object v1, p0, Lyads/ov1;->a:Lyads/tq3;

    iget-object v1, v1, Lyads/tq3;->L2:Lcl4;

    const-string v2, "x"

    invoke-static {p1, p2, v2, v1}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/ac1;

    iget-object p0, p0, Lyads/ov1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->L2:Lcl4;

    const-string v2, "y"

    invoke-static {p1, p2, v2, p0}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/ac1;

    invoke-direct {v0, v1, p0}, Lyads/nv1;-><init>(Lyads/ac1;Lyads/ac1;)V

    return-object v0
.end method
