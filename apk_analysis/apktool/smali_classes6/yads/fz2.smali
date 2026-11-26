.class public final Lyads/fz2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lup7;
.end annotation


# static fields
.field public static final Companion:Lyads/ez2;


# instance fields
.field public final a:Lyads/nz2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/ez2;

    invoke-direct {v0}, Lyads/ez2;-><init>()V

    sput-object v0, Lyads/fz2;->Companion:Lyads/ez2;

    return-void
.end method

.method public constructor <init>(ILyads/nz2;)V
    .locals 2

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/fz2;->a:Lyads/nz2;

    return-void

    :cond_0
    sget-object p0, Lyads/dz2;->b:Ls96;

    invoke-static {p0, p1, v1}, Lr96;->f(Lmp7;II)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyads/fz2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/fz2;

    iget-object p0, p0, Lyads/fz2;->a:Lyads/nz2;

    iget-object p1, p1, Lyads/fz2;->a:Lyads/nz2;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lyads/fz2;->a:Lyads/nz2;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lyads/nz2;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lyads/fz2;->a:Lyads/nz2;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FontParameters(urls="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
