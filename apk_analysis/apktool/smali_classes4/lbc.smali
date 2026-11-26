.class public final synthetic Llbc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/measurement/zzlk;

.field public final synthetic b:Lcac;

.field public final synthetic c:Lobc;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzlk;Lcac;Lobc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llbc;->a:Lcom/google/android/gms/internal/measurement/zzlk;

    iput-object p2, p0, Llbc;->b:Lcac;

    iput-object p3, p0, Llbc;->c:Lobc;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/internal/measurement/zzpg;

    iget-object v0, p0, Llbc;->a:Lcom/google/android/gms/internal/measurement/zzlk;

    iget-object v1, p0, Llbc;->b:Lcac;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzpg;-><init>(Lcom/google/android/gms/internal/measurement/zzlk;Lcac;)V

    new-instance v0, Leac;

    invoke-direct {v0, p1}, Leac;-><init>(Lcom/google/android/gms/internal/measurement/zzpg;)V

    iget-object p0, p0, Llbc;->c:Lobc;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lobc;->a:Z

    return-object v0
.end method
