.class public final Lt0c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzjl;

.field public final synthetic c:J

.field public final synthetic d:Z

.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzlj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzlj;Lcom/google/android/gms/measurement/internal/zzjl;JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lt0c;->b:Lcom/google/android/gms/measurement/internal/zzjl;

    iput-wide p3, p0, Lt0c;->c:J

    iput-boolean p5, p0, Lt0c;->d:Z

    iput-object p1, p0, Lt0c;->e:Lcom/google/android/gms/measurement/internal/zzlj;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lt0c;->e:Lcom/google/android/gms/measurement/internal/zzlj;

    iget-object v1, p0, Lt0c;->b:Lcom/google/android/gms/measurement/internal/zzjl;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzlj;->m(Lcom/google/android/gms/measurement/internal/zzjl;)V

    iget-boolean v2, p0, Lt0c;->d:Z

    iget-wide v3, p0, Lt0c;->c:J

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzlj;->f(Lcom/google/android/gms/measurement/internal/zzjl;JZ)V

    return-void
.end method
