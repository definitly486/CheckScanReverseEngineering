.class public final synthetic Lxs9;
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

    .line 15
    iput p5, p0, Lxs9;->b:I

    iput-object p1, p0, Lxs9;->d:Ljava/lang/Object;

    iput-object p2, p0, Lxs9;->e:Ljava/lang/Object;

    iput-object p3, p0, Lxs9;->c:Ljava/lang/Object;

    iput-object p4, p0, Lxs9;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lyads/g82;Lyads/zo1;Lyads/b82;Lyads/fs2;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lxs9;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxs9;->d:Ljava/lang/Object;

    iput-object p2, p0, Lxs9;->e:Ljava/lang/Object;

    iput-object p3, p0, Lxs9;->f:Ljava/lang/Object;

    iput-object p4, p0, Lxs9;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lxs9;->b:I

    iget-object v1, p0, Lxs9;->f:Ljava/lang/Object;

    iget-object v2, p0, Lxs9;->c:Ljava/lang/Object;

    iget-object v3, p0, Lxs9;->e:Ljava/lang/Object;

    iget-object p0, p0, Lxs9;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/gz1;

    check-cast v3, Ljava/util/List;

    check-cast v2, Lyads/uy1;

    check-cast v1, Lyads/tt;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, v3, v2, v1, p1}, Lyads/wy1;->a(Lyads/gz1;Ljava/util/List;Lyads/uy1;Lyads/tt;I)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/g82;

    check-cast v3, Lyads/zo1;

    check-cast v1, Lyads/b82;

    check-cast v2, Lyads/fs2;

    invoke-static {p0, v3, v1, v2, p1}, Lyads/g82;->a(Lyads/g82;Lyads/zo1;Lyads/b82;Lyads/fs2;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lyads/d22;

    check-cast v3, Lyads/s22;

    check-cast v2, Lyads/fs2;

    check-cast v1, Lyads/tc1;

    invoke-static {p0, v3, v2, v1, p1}, Lyads/d22;->d(Lyads/d22;Lyads/s22;Lyads/fs2;Lyads/tc1;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
