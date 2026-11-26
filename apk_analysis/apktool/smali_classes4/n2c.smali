.class public final synthetic Ln2c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkd8;


# instance fields
.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln2c;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzlk;->j:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzlj;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object p0, p0, Ln2c;->b:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/zzlj;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzlj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlj;->zzb()Lcom/google/android/gms/internal/measurement/zzlk;

    move-result-object p0

    return-object p0
.end method
