.class public final synthetic Lzr1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(ILcom/tapjoy/internal/p2;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lzr1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lzr1;->d:Ljava/lang/Object;

    iput-object p3, p0, Lzr1;->e:Ljava/io/Serializable;

    iput p1, p0, Lzr1;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/activity/ComponentActivity$activityResultRegistry$1;ILandroid/content/IntentSender$SendIntentException;)V
    .locals 1

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lzr1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzr1;->d:Ljava/lang/Object;

    iput p2, p0, Lzr1;->c:I

    iput-object p3, p0, Lzr1;->e:Ljava/io/Serializable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lzr1;->b:I

    iget v1, p0, Lzr1;->c:I

    iget-object v2, p0, Lzr1;->e:Ljava/io/Serializable;

    iget-object p0, p0, Lzr1;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/tapjoy/internal/p2;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/tapjoy/internal/p2;->a(Ljava/lang/String;I)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/activity/ComponentActivity$activityResultRegistry$1;

    check-cast v2, Landroid/content/IntentSender$SendIntentException;

    invoke-static {p0, v1, v2}, Landroidx/activity/ComponentActivity$activityResultRegistry$1;->c(Landroidx/activity/ComponentActivity$activityResultRegistry$1;ILandroid/content/IntentSender$SendIntentException;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
