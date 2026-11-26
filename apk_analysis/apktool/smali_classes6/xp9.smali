.class public final synthetic Lxp9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/gg6;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lxp9;->a:I

    iput-object p1, p0, Lxp9;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    iget v0, p0, Lxp9;->a:I

    iget-object p0, p0, Lxp9;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/qh2;

    invoke-static {p0}, Lyads/qh2;->b(Lyads/qh2;)Lyads/yi1;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/c62;

    invoke-static {p0}, Lyads/c62;->a(Lyads/c62;)Lyads/lu5;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
