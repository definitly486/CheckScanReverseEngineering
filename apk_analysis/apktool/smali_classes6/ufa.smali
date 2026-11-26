.class public final synthetic Lufa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/s03;

.field public final synthetic c:Lyads/dp;

.field public final synthetic d:Lyads/m24;

.field public final synthetic e:Lyads/w24;


# direct methods
.method public synthetic constructor <init>(Lyads/ip3;Lyads/dp;Lyads/m24;Lyads/w24;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lufa;->b:Lyads/s03;

    iput-object p2, p0, Lufa;->c:Lyads/dp;

    iput-object p3, p0, Lufa;->d:Lyads/m24;

    iput-object p4, p0, Lufa;->e:Lyads/w24;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lufa;->e:Lyads/w24;

    check-cast p1, Lyads/q74;

    iget-object v1, p0, Lufa;->b:Lyads/s03;

    iget-object v2, p0, Lufa;->c:Lyads/dp;

    iget-object p0, p0, Lufa;->d:Lyads/m24;

    invoke-static {v1, v2, p0, v0, p1}, Lyads/w34;->a(Lyads/s03;Lyads/dp;Lyads/m24;Lyads/w24;Lyads/q74;)Lcom/monetization/ads/mediation/interstitial/a;

    move-result-object p0

    return-object p0
.end method
