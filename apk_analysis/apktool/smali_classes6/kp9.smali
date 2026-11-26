.class public final synthetic Lkp9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, Lkp9;->b:I

    iput-object p1, p0, Lkp9;->c:Ljava/lang/Object;

    iput-object p2, p0, Lkp9;->d:Ljava/lang/Object;

    iput-object p3, p0, Lkp9;->e:Ljava/lang/Object;

    iput-object p4, p0, Lkp9;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lkp9;->b:I

    iget-object v1, p0, Lkp9;->f:Ljava/lang/Object;

    iget-object v2, p0, Lkp9;->e:Ljava/lang/Object;

    iget-object v3, p0, Lkp9;->d:Ljava/lang/Object;

    iget-object p0, p0, Lkp9;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroid/widget/TextView;

    check-cast v3, Lyads/as2;

    check-cast v2, Lyads/as2;

    check-cast v1, Lyads/fs2;

    invoke-static {p0, v3, v2, v1, p1}, Lyads/kw5;->c(Landroid/widget/TextView;Lyads/as2;Lyads/as2;Lyads/fs2;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/yn;

    check-cast v3, Lyads/dp;

    check-cast v2, Lcom/monetization/ads/mediation/banner/c;

    check-cast v1, Lyads/u34;

    check-cast p1, Lyads/q74;

    invoke-static {p0, v3, v2, v1, p1}, Lcom/monetization/ads/mediation/banner/c;->a(Lyads/yn;Lyads/dp;Lcom/monetization/ads/mediation/banner/c;Lyads/u34;Lyads/q74;)Lcom/monetization/ads/mediation/banner/a;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
