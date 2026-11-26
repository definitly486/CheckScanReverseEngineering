.class public final Li6b;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcu;
.source "SourceFile"


# instance fields
.field public final transient e:[Ljava/lang/Object;


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcu;-><init>()V

    iput-object p1, p0, Li6b;->e:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Lc6b;
    .locals 2

    new-instance v0, Lc6b;

    iget-object p0, p0, Li6b;->e:[Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lc6b;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public final b()Lp5b;
    .locals 2

    new-instance v0, Lp5b;

    iget-object v1, p0, Li6b;->e:[Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lp5b;-><init>(Li6b;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public final d()Lw5b;
    .locals 3

    new-instance v0, Lc6b;

    iget-object v1, p0, Li6b;->e:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc6b;-><init>([Ljava/lang/Object;I)V

    new-instance v1, Lw5b;

    invoke-direct {v1, p0, v0}, Lw5b;-><init>(Li6b;Lc6b;)V

    return-object v1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iget-object p0, p0, Li6b;->e:[Ljava/lang/Object;

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-nez p0, :cond_2

    return-object v0

    :cond_2
    return-object p0
.end method

.method public final size()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
