.class public final Lyads/x94;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lup7;
.end annotation


# static fields
.field public static final Companion:Lyads/w94;


# instance fields
.field public final a:Lyads/ca4;

.field public final b:Lyads/fa4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/w94;

    invoke-direct {v0}, Lyads/w94;-><init>()V

    sput-object v0, Lyads/x94;->Companion:Lyads/w94;

    return-void
.end method

.method public constructor <init>(ILyads/ca4;Lyads/fa4;)V
    .locals 2

    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x3

    if-ne v1, v0, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/x94;->a:Lyads/ca4;

    iput-object p3, p0, Lyads/x94;->b:Lyads/fa4;

    return-void

    :cond_0
    sget-object p0, Lyads/v94;->b:Ls96;

    invoke-static {p0, p1, v1}, Lr96;->f(Lmp7;II)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lyads/ca4;Lyads/fa4;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lyads/x94;->a:Lyads/ca4;

    .line 22
    iput-object p2, p0, Lyads/x94;->b:Lyads/fa4;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyads/x94;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/x94;

    iget-object v1, p0, Lyads/x94;->a:Lyads/ca4;

    iget-object v3, p1, Lyads/x94;->a:Lyads/ca4;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lyads/x94;->b:Lyads/fa4;

    iget-object p1, p1, Lyads/x94;->b:Lyads/fa4;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lyads/x94;->a:Lyads/ca4;

    invoke-virtual {v0}, Lyads/ca4;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lyads/x94;->b:Lyads/fa4;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lyads/fa4;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lyads/x94;->a:Lyads/ca4;

    iget-object p0, p0, Lyads/x94;->b:Lyads/fa4;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MobileAdsNetworkLog(request="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", response="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
