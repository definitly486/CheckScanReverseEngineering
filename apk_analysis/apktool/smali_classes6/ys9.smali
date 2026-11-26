.class public final synthetic Lys9;
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
.method public synthetic constructor <init>(Lyads/ek1;Lyads/fs2;Lyads/bn1;Lyads/jk1;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lys9;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lys9;->c:Ljava/lang/Object;

    iput-object p2, p0, Lys9;->e:Ljava/lang/Object;

    iput-object p3, p0, Lys9;->d:Landroid/view/View;

    iput-object p4, p0, Lys9;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lyads/oh2;Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 15
    iput p5, p0, Lys9;->b:I

    iput-object p1, p0, Lys9;->c:Ljava/lang/Object;

    iput-object p2, p0, Lys9;->d:Landroid/view/View;

    iput-object p3, p0, Lys9;->e:Ljava/lang/Object;

    iput-object p4, p0, Lys9;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lys9;->b:I

    iget-object v1, p0, Lys9;->f:Ljava/lang/Object;

    iget-object v2, p0, Lys9;->d:Landroid/view/View;

    iget-object v3, p0, Lys9;->e:Ljava/lang/Object;

    iget-object p0, p0, Lys9;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/ek1;

    check-cast v3, Lyads/fs2;

    check-cast v2, Lyads/bn1;

    check-cast v1, Lyads/jk1;

    invoke-static {p0, v3, v2, v1, p1}, Lyads/jk1;->a(Lyads/ek1;Lyads/fs2;Lyads/bn1;Lyads/jk1;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/g82;

    check-cast v2, Lyads/zo1;

    check-cast v3, Lyads/tt;

    check-cast v1, Lyads/b82;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, v2, v3, v1, p1}, Lyads/g82;->a(Lyads/g82;Lyads/zo1;Lyads/tt;Lyads/b82;Ljava/lang/String;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lyads/d22;

    check-cast v2, Lyads/s22;

    check-cast v3, Lyads/fs2;

    check-cast v1, Lyads/tc1;

    invoke-static {p0, v2, v3, v1, p1}, Lyads/d22;->f(Lyads/d22;Lyads/s22;Lyads/fs2;Lyads/tc1;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
