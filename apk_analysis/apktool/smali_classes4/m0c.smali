.class public final Lm0c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/lang/Boolean;

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/zzlj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzlj;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lm0c;->b:Ljava/lang/Boolean;

    iput-object p1, p0, Lm0c;->c:Lcom/google/android/gms/measurement/internal/zzlj;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lm0c;->b:Ljava/lang/Boolean;

    const/4 v1, 0x1

    iget-object p0, p0, Lm0c;->c:Lcom/google/android/gms/measurement/internal/zzlj;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzlj;->g(Ljava/lang/Boolean;Z)V

    return-void
.end method
