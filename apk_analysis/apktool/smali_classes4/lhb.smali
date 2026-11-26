.class public final synthetic Llhb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/cloudmessaging/CloudMessagingReceiver;

.field public final synthetic c:Landroid/content/Intent;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Z

.field public final synthetic f:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/cloudmessaging/CloudMessagingReceiver;Landroid/content/Intent;Landroid/content/Context;ZLandroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llhb;->b:Lcom/google/android/gms/cloudmessaging/CloudMessagingReceiver;

    iput-object p2, p0, Llhb;->c:Landroid/content/Intent;

    iput-object p3, p0, Llhb;->d:Landroid/content/Context;

    iput-boolean p4, p0, Llhb;->e:Z

    iput-object p5, p0, Llhb;->f:Landroid/content/BroadcastReceiver$PendingResult;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 4

    iget-boolean v0, p0, Llhb;->e:Z

    iget-object v1, p0, Llhb;->f:Landroid/content/BroadcastReceiver$PendingResult;

    iget-object v2, p0, Llhb;->b:Lcom/google/android/gms/cloudmessaging/CloudMessagingReceiver;

    iget-object v3, p0, Llhb;->c:Landroid/content/Intent;

    iget-object p0, p0, Llhb;->d:Landroid/content/Context;

    invoke-virtual {v2, v3, p0, v0, v1}, Lcom/google/android/gms/cloudmessaging/CloudMessagingReceiver;->zza(Landroid/content/Intent;Landroid/content/Context;ZLandroid/content/BroadcastReceiver$PendingResult;)V

    return-void
.end method
