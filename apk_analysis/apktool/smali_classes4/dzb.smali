.class public final Ldzb;
.super Ltva;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzlj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzlj;Lpvb;)V
    .locals 0

    iput-object p1, p0, Ldzb;->e:Lcom/google/android/gms/measurement/internal/zzlj;

    invoke-direct {p0, p2}, Ltva;-><init>(Lpvb;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object p0, p0, Ldzb;->e:Lcom/google/android/gms/measurement/internal/zzlj;

    iget-object v0, p0, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzI()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzlj;->s:Ldzb;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, v0, v1}, Ltva;->b(J)V

    :cond_0
    return-void
.end method
