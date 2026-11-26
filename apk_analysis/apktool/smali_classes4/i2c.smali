.class public final synthetic Li2c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkd8;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/measurement/zzlj;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzlj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li2c;->b:Lcom/google/android/gms/internal/measurement/zzlj;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzqi;

    iget-object p0, p0, Li2c;->b:Lcom/google/android/gms/internal/measurement/zzlj;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzlj;->b:Lkd8;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/measurement/zzqi;-><init>(Lkd8;I)V

    new-instance p0, Lnf6;

    invoke-direct {p0, v0}, Lnf6;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method
