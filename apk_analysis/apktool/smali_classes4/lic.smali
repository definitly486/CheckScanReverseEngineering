.class public final Llic;
.super Lcom/google/android/gms/internal/mlkit_vision_common/zzr;
.source "SourceFile"


# static fields
.field public static final synthetic g:I


# instance fields
.field public final transient e:[Ljava/lang/Object;

.field public final transient f:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Llic;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Llic;-><init>([Ljava/lang/Object;I)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzr;-><init>()V

    iput-object p1, p0, Llic;->e:[Ljava/lang/Object;

    iput p2, p0, Llic;->f:I

    return-void
.end method


# virtual methods
.method public final a()Lvhc;
    .locals 3

    new-instance v0, Lvhc;

    const/4 v1, 0x1

    iget v2, p0, Llic;->f:I

    iget-object p0, p0, Llic;->e:[Ljava/lang/Object;

    invoke-direct {v0, p0, v1, v2}, Lvhc;-><init>([Ljava/lang/Object;II)V

    return-object v0
.end method

.method public final b()Lkgc;
    .locals 3

    new-instance v0, Lkgc;

    iget-object v1, p0, Llic;->e:[Ljava/lang/Object;

    iget v2, p0, Llic;->f:I

    invoke-direct {v0, p0, v1, v2}, Lkgc;-><init>(Llic;[Ljava/lang/Object;I)V

    return-object v0
.end method

.method public final d()Lchc;
    .locals 4

    new-instance v0, Lvhc;

    const/4 v1, 0x0

    iget v2, p0, Llic;->f:I

    iget-object v3, p0, Llic;->e:[Ljava/lang/Object;

    invoke-direct {v0, v3, v1, v2}, Lvhc;-><init>([Ljava/lang/Object;II)V

    new-instance v1, Lchc;

    invoke-direct {v1, p0, v0}, Lchc;-><init>(Llic;Lvhc;)V

    return-object v1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    iget v2, p0, Llic;->f:I

    if-ne v2, v1, :cond_0

    const/4 v2, 0x0

    iget-object p0, p0, Llic;->e:[Ljava/lang/Object;

    aget-object v2, p0, v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    if-nez p0, :cond_2

    return-object v0

    :cond_2
    return-object p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Llic;->f:I

    return p0
.end method
