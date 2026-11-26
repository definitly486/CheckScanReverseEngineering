.class public final synthetic Lbs9;
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

    iput p5, p0, Lbs9;->b:I

    iput-object p1, p0, Lbs9;->c:Ljava/lang/Object;

    iput-object p2, p0, Lbs9;->d:Ljava/lang/Object;

    iput-object p3, p0, Lbs9;->e:Ljava/lang/Object;

    iput-object p4, p0, Lbs9;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lbs9;->b:I

    iget-object v1, p0, Lbs9;->f:Ljava/lang/Object;

    iget-object v2, p0, Lbs9;->e:Ljava/lang/Object;

    iget-object v3, p0, Lbs9;->d:Ljava/lang/Object;

    iget-object p0, p0, Lbs9;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/rg1;

    check-cast v3, Lyads/cy1;

    check-cast v2, Lyads/tt;

    check-cast v1, Lyads/og1;

    invoke-static {p0, v3, v2, v1, p1}, Lyads/rg1;->a(Lyads/rg1;Lyads/cy1;Lyads/tt;Lyads/og1;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/et1;

    check-cast v3, Lr07;

    check-cast v2, Lyads/cs1;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, v3, v2, v1, p1}, Lyads/cs1;->a(Lyads/et1;Lr07;Lyads/cs1;Landroidx/recyclerview/widget/RecyclerView;Z)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
