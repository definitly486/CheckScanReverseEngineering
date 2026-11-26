.class public final synthetic La03;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, La03;->b:I

    iput-object p1, p0, La03;->c:Ljava/lang/Object;

    iput-object p2, p0, La03;->d:Ljava/lang/Object;

    iput-object p3, p0, La03;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, La03;->b:I

    iget-object v1, p0, La03;->e:Ljava/lang/Object;

    iget-object v2, p0, La03;->d:Ljava/lang/Object;

    iget-object p0, p0, La03;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/m94;

    check-cast v2, Landroid/content/Context;

    check-cast v1, Lyads/t70;

    invoke-static {p0, v2, v1}, Lyads/m94;->a(Lyads/m94;Landroid/content/Context;Lyads/t70;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/google/firebase/messaging/EnhancedIntentService;

    check-cast v2, Landroid/content/Intent;

    check-cast v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p0, v2, v1}, Lcom/google/firebase/messaging/EnhancedIntentService;->a(Lcom/google/firebase/messaging/EnhancedIntentService;Landroid/content/Intent;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
