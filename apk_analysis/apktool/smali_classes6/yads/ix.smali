.class public final synthetic Lyads/ix;
.super Lqm3;
.source "SourceFile"

# interfaces
.implements Lbm3;


# direct methods
.method public constructor <init>(Lyads/fb5;)V
    .locals 7

    const-string v5, "get(Lcom/monetization/ads/common/AdRequestData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    const/4 v6, 0x0

    const/4 v1, 0x2

    const-class v3, Lyads/fb5;

    const-string v4, "get"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lyads/n8;

    check-cast p2, Le02;

    iget-object p0, p0, Lqy0;->receiver:Ljava/lang/Object;

    check-cast p0, Lyads/fb5;

    iget-object v0, p0, Lyads/fb5;->a:Lyads/zz4;

    iget-object p0, p0, Lyads/fb5;->b:Lyads/b13;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lyads/b13;->a(Lyads/n8;)Lyads/a13;

    move-result-object p0

    invoke-virtual {v0, p0, p2}, Lyads/zz4;->a(Lyads/a13;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
