.class public final synthetic Lus9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lyads/oh2;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lyads/oh2;Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, Lus9;->b:I

    iput-object p1, p0, Lus9;->c:Lyads/oh2;

    iput-object p2, p0, Lus9;->d:Landroid/view/View;

    iput-object p3, p0, Lus9;->e:Ljava/lang/Object;

    iput-object p4, p0, Lus9;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lus9;->b:I

    iget-object v1, p0, Lus9;->f:Ljava/lang/Object;

    iget-object v2, p0, Lus9;->e:Ljava/lang/Object;

    iget-object v3, p0, Lus9;->d:Landroid/view/View;

    iget-object p0, p0, Lus9;->c:Lyads/oh2;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/g82;

    check-cast v3, Lyads/zo1;

    check-cast v2, Lyads/tt;

    check-cast v1, Lyads/b82;

    invoke-static {p0, v3, v2, v1, p1}, Lyads/g82;->a(Lyads/g82;Lyads/zo1;Lyads/tt;Lyads/b82;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/d22;

    check-cast v3, Lyads/s22;

    check-cast v2, Lyads/fs2;

    check-cast v1, Lyads/w12;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, v3, v2, v1, p1}, Lyads/d22;->a(Lyads/d22;Lyads/s22;Lyads/fs2;Lyads/w12;I)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
