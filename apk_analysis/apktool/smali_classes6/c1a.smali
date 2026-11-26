.class public final synthetic Lc1a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lyads/fs2;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lyads/fs2;I)V
    .locals 0

    iput p5, p0, Lc1a;->b:I

    iput-object p1, p0, Lc1a;->d:Ljava/lang/Object;

    iput-object p2, p0, Lc1a;->e:Ljava/lang/Object;

    iput-object p3, p0, Lc1a;->f:Ljava/lang/Object;

    iput-object p4, p0, Lc1a;->c:Lyads/fs2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lc1a;->b:I

    iget-object v1, p0, Lc1a;->c:Lyads/fs2;

    iget-object v2, p0, Lc1a;->f:Ljava/lang/Object;

    iget-object v3, p0, Lc1a;->e:Ljava/lang/Object;

    iget-object p0, p0, Lc1a;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/m52;

    check-cast v3, Lyads/s52;

    check-cast v2, Lyads/k52;

    invoke-static {p0, v3, v2, v1, p1}, Lyads/m52;->b(Lyads/m52;Lyads/s52;Lyads/k52;Lyads/fs2;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroid/widget/TextView;

    check-cast v3, Lyads/as2;

    check-cast v2, Lyads/as2;

    invoke-static {p0, v3, v2, v1, p1}, Lyads/kw5;->b(Landroid/widget/TextView;Lyads/as2;Lyads/as2;Lyads/fs2;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
