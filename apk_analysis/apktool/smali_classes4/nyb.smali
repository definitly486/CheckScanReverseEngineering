.class public final Lnyb;
.super Ltva;
.source "SourceFile"


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lqhb;


# direct methods
.method public synthetic constructor <init>(Lqhb;Lpvb;I)V
    .locals 0

    iput p3, p0, Lnyb;->e:I

    iput-object p1, p0, Lnyb;->f:Lqhb;

    invoke-direct {p0, p2}, Ltva;-><init>(Lpvb;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget v0, p0, Lnyb;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lnyb;->f:Lqhb;

    check-cast p0, Lcom/google/android/gms/measurement/internal/zznl;

    iget-object p0, p0, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    const-string v0, "Tasks have been queued for a long time"

    invoke-static {p0, v0}, Lxp;->h(Lcom/google/android/gms/measurement/internal/zzic;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lnyb;->f:Lqhb;

    check-cast p0, Lcom/google/android/gms/measurement/internal/zzlj;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->zzC()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
