.class public final synthetic Lwwb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lqhb;


# direct methods
.method public synthetic constructor <init>(Lqhb;I)V
    .locals 0

    iput p2, p0, Lwwb;->b:I

    iput-object p1, p0, Lwwb;->c:Lqhb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lwwb;->b:I

    iget-object p0, p0, Lwwb;->c:Lqhb;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/google/android/gms/measurement/internal/zzmb;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmb;->j:Lcom/google/android/gms/measurement/internal/zzlu;

    return-void

    :pswitch_0
    check-cast p0, Lcom/google/android/gms/measurement/internal/zzlj;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzlj;->k()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
