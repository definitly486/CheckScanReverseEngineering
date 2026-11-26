.class public final Lyads/st1;
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

    iput-object p1, p0, Lyads/st1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lyads/nt1;

    const-string v1, "id"

    invoke-static {v1, p2}, Lyads/wq3;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Lyads/st1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->s9:Lcl4;

    const-string v2, "items"

    invoke-static {p1, p2, v2, p0}, Lyads/wq3;->d(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lyads/nt1;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method
