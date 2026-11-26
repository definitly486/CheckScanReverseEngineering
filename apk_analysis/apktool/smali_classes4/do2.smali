.class public final synthetic Ldo2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Ldo2;->b:I

    iput-object p2, p0, Ldo2;->c:Ljava/lang/Object;

    iput-object p3, p0, Ldo2;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Ldo2;->b:I

    iget-object v1, p0, Ldo2;->d:Ljava/lang/Object;

    iget-object p0, p0, Ldo2;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/n25;

    check-cast v1, Lyads/kh;

    invoke-static {p0, v1}, Lyads/n25;->a(Lyads/n25;Lyads/kh;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/my/tracker/obfuscated/i0;

    check-cast v1, Lcom/my/tracker/obfuscated/i0$c;

    invoke-static {p0, v1}, Lcom/my/tracker/obfuscated/i0;->q(Lcom/my/tracker/obfuscated/i0;Lcom/my/tracker/obfuscated/i0$c;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/my/tracker/obfuscated/a;

    check-cast v1, Landroid/app/Activity;

    invoke-static {p0, v1}, Lcom/my/tracker/obfuscated/a;->b(Lcom/my/tracker/obfuscated/a;Landroid/app/Activity;)V

    return-void

    :pswitch_2
    check-cast p0, Landroidx/lifecycle/DispatchQueue;

    check-cast v1, Ljava/lang/Runnable;

    invoke-static {p0, v1}, Landroidx/lifecycle/DispatchQueue;->a(Landroidx/lifecycle/DispatchQueue;Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
