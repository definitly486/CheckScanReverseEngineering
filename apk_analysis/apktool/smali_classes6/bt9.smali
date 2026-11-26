.class public final synthetic Lbt9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lyads/fs2;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lyads/tt5;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lyads/g82;Lyads/zo1;Lyads/b82;Lyads/fs2;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lbt9;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbt9;->d:Ljava/lang/Object;

    iput-object p2, p0, Lbt9;->e:Lyads/tt5;

    iput-object p3, p0, Lbt9;->f:Ljava/lang/Object;

    iput-object p4, p0, Lbt9;->c:Lyads/fs2;

    return-void
.end method

.method public synthetic constructor <init>(Lyads/yc1;Lyads/xu5;Lyads/fs2;Landroid/util/DisplayMetrics;)V
    .locals 1

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lbt9;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbt9;->d:Ljava/lang/Object;

    iput-object p2, p0, Lbt9;->e:Lyads/tt5;

    iput-object p3, p0, Lbt9;->c:Lyads/fs2;

    iput-object p4, p0, Lbt9;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lbt9;->b:I

    iget-object v1, p0, Lbt9;->c:Lyads/fs2;

    iget-object v2, p0, Lbt9;->f:Ljava/lang/Object;

    iget-object v3, p0, Lbt9;->e:Lyads/tt5;

    iget-object p0, p0, Lbt9;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/g82;

    check-cast v3, Lyads/zo1;

    check-cast v2, Lyads/b82;

    invoke-static {p0, v3, v2, v1, p1}, Lyads/g82;->c(Lyads/g82;Lyads/zo1;Lyads/b82;Lyads/fs2;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/yc1;

    check-cast v3, Lyads/xu5;

    check-cast v2, Landroid/util/DisplayMetrics;

    invoke-static {p0, v3, v1, v2, p1}, Lyads/d62;->a(Lyads/yc1;Lyads/xu5;Lyads/fs2;Landroid/util/DisplayMetrics;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
