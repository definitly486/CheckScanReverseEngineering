.class public final synthetic Lvv9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, Lvv9;->b:I

    iput-object p1, p0, Lvv9;->c:Ljava/lang/Object;

    iput-object p2, p0, Lvv9;->d:Landroid/view/View;

    iput-object p3, p0, Lvv9;->e:Ljava/lang/Object;

    iput-object p4, p0, Lvv9;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lvv9;->b:I

    iget-object v1, p0, Lvv9;->f:Ljava/lang/Object;

    iget-object v2, p0, Lvv9;->e:Ljava/lang/Object;

    iget-object v3, p0, Lvv9;->d:Landroid/view/View;

    iget-object p0, p0, Lvv9;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/n01;

    check-cast v3, Lyads/vq0;

    check-cast v2, Ljava/util/ArrayList;

    check-cast p1, Lyads/u66;

    invoke-static {p0, v3, v2, v1, p1}, Lyads/n01;->a(Lyads/n01;Lyads/vq0;Ljava/util/List;Ljava/lang/Object;Lyads/u66;)Lyads/u66;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/g82;

    check-cast v3, Lyads/zo1;

    check-cast v2, Lyads/b82;

    check-cast v1, Lyads/fs2;

    invoke-static {p0, v3, v2, v1, p1}, Lyads/g82;->d(Lyads/g82;Lyads/zo1;Lyads/b82;Lyads/fs2;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
