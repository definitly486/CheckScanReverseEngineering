.class public final synthetic Lcq9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lyads/fs2;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Ljava/lang/Object;Lyads/fs2;I)V
    .locals 0

    iput p4, p0, Lcq9;->b:I

    iput-object p1, p0, Lcq9;->d:Landroid/view/View;

    iput-object p2, p0, Lcq9;->e:Ljava/lang/Object;

    iput-object p3, p0, Lcq9;->c:Lyads/fs2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcq9;->b:I

    iget-object v1, p0, Lcq9;->c:Lyads/fs2;

    iget-object v2, p0, Lcq9;->e:Ljava/lang/Object;

    iget-object p0, p0, Lcq9;->d:Landroid/view/View;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/bn1;

    check-cast v2, Lyads/as2;

    invoke-static {p0, v2, v1, p1}, Lyads/jk1;->a(Lyads/bn1;Lyads/as2;Lyads/fs2;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/m62;

    check-cast v2, Lyads/y52;

    invoke-static {p0, v2, v1, p1}, Lyads/c62;->b(Lyads/m62;Lyads/y52;Lyads/fs2;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
