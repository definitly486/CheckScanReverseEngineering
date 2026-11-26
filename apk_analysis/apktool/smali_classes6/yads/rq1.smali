.class public final Lyads/rq1;
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

    iput-object p1, p0, Lyads/rq1;->a:Lyads/tq3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ys4;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lyads/qq1;

    iget-object p0, p0, Lyads/rq1;->a:Lyads/tq3;

    iget-object p0, p0, Lyads/tq3;->C5:Lcl4;

    const-string v1, "page_width"

    invoke-static {p1, p2, v1, p0}, Lyads/wq3;->a(Lyads/ys4;Lorg/json/JSONObject;Ljava/lang/String;Lcl4;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/eu1;

    invoke-direct {v0, p0}, Lyads/qq1;-><init>(Lyads/eu1;)V

    return-object v0
.end method
