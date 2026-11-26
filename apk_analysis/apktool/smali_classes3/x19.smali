.class public final synthetic Lx19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lnl3;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lnl3;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lx19;->b:I

    iput-object p1, p0, Lx19;->c:Lnl3;

    iput-object p2, p0, Lx19;->d:Ljava/lang/Object;

    iput-object p3, p0, Lx19;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lx19;->b:I

    iget-object v1, p0, Lx19;->e:Ljava/lang/Object;

    iget-object v2, p0, Lx19;->d:Ljava/lang/Object;

    iget-object p0, p0, Lx19;->c:Lnl3;

    packed-switch v0, :pswitch_data_0

    check-cast v2, Lyads/hd4;

    check-cast v1, Lyads/fs2;

    invoke-static {p0, v2, v1, p1}, Lyads/hd4;->a(Lnl3;Lyads/hd4;Lyads/fs2;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast v2, Lr07;

    check-cast v1, Landroidx/lifecycle/MediatorLiveData;

    invoke-static {p0, v2, v1, p1}, Landroidx/lifecycle/Transformations;->a(Lnl3;Lr07;Landroidx/lifecycle/MediatorLiveData;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
