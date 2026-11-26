.class public final Lcom/google/android/gms/internal/fido/a;
.super Lcom/google/android/gms/internal/fido/zzat;
.source "SourceFile"


# static fields
.field public static final f:Lcom/google/android/gms/internal/fido/a;


# instance fields
.field public final transient d:[Ljava/lang/Object;

.field public final transient e:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/fido/a;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/fido/a;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/fido/a;->f:Lcom/google/android/gms/internal/fido/a;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/fido/zzat;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/fido/a;->d:[Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/internal/fido/a;->e:I

    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/internal/fido/a;->e:I

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/a;->d:[Ljava/lang/Object;

    invoke-static {p0, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/fido/a;->e:I

    return p0
.end method

.method public final d()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final f()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/a;->d:[Ljava/lang/Object;

    return-object p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/fido/a;->e:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/fido/zzam;->zza(IILjava/lang/String;)I

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/a;->d:[Ljava/lang/Object;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/fido/a;->e:I

    return p0
.end method
