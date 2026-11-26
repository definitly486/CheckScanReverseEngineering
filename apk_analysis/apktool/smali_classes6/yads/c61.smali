.class public final Lyads/c61;
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

    iput-object p1, p0, Lyads/c61;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lyads/b61;

    iget-object p0, p0, Lyads/c61;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->U1:Lcl4;

    sget-object v1, Lyads/f61;->a:Lyads/st3;

    const-string v2, "items"

    invoke-static {p1, p2, v2, p0, v1}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;Lyads/st3;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/b61;-><init>(Ljava/util/List;)V

    return-object v0
.end method
