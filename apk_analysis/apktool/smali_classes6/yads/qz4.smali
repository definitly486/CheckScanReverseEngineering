.class public final Lyads/qz4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lup7;
.end annotation


# static fields
.field public static final Companion:Lyads/pz4;

.field public static final c:[Lcl4;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lyads/sz4;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lyads/pz4;

    invoke-direct {v0}, Lyads/pz4;-><init>()V

    sput-object v0, Lyads/qz4;->Companion:Lyads/pz4;

    sget-object v0, Lpo4;->PUBLICATION:Lpo4;

    new-instance v1, Lu2;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lu2;-><init>(I)V

    invoke-static {v0, v1}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcl4;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lyads/qz4;->c:[Lcl4;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lyads/sz4;)V
    .locals 2

    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x3

    if-ne v1, v0, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/qz4;->a:Ljava/lang/String;

    iput-object p3, p0, Lyads/qz4;->b:Lyads/sz4;

    return-void

    :cond_0
    sget-object p0, Lyads/oz4;->b:Ls96;

    invoke-static {p0, p1, v1}, Lr96;->f(Lmp7;II)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Lyads/sz4;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lyads/qz4;->a:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lyads/qz4;->b:Lyads/sz4;

    return-void
.end method

.method public static final synthetic a()Ldf4;
    .locals 1

    sget-object v0, Lyads/sz4;->Companion:Lyads/rz4;

    invoke-virtual {v0}, Lyads/rz4;->serializer()Ldf4;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyads/qz4;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/qz4;

    iget-object v1, p0, Lyads/qz4;->a:Ljava/lang/String;

    iget-object v3, p1, Lyads/qz4;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lyads/qz4;->b:Lyads/sz4;

    iget-object p1, p1, Lyads/qz4;->b:Lyads/sz4;

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lyads/qz4;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lyads/qz4;->b:Lyads/sz4;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lyads/qz4;->a:Ljava/lang/String;

    iget-object p0, p0, Lyads/qz4;->b:Lyads/sz4;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PreloadBlock(adUnitId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", format="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
