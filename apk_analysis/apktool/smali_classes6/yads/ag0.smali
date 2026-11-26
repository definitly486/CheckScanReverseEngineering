.class public final Lyads/ag0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lup7;
.end annotation


# static fields
.field public static final Companion:Lyads/zf0;

.field public static final g:[Lcl4;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/List;

.field public final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lyads/zf0;

    invoke-direct {v0}, Lyads/zf0;-><init>()V

    sput-object v0, Lyads/ag0;->Companion:Lyads/zf0;

    sget-object v0, Lpo4;->PUBLICATION:Lpo4;

    new-instance v1, Lfb7;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lfb7;-><init>(I)V

    invoke-static {v0, v1}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Lcl4;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v1, v3

    aput-object v4, v1, v2

    const/4 v2, 0x2

    aput-object v4, v1, v2

    const/4 v2, 0x3

    aput-object v4, v1, v2

    const/4 v2, 0x4

    aput-object v0, v1, v2

    const/4 v0, 0x5

    aput-object v4, v1, v0

    sput-object v1, Lyads/ag0;->g:[Lcl4;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 3

    and-int/lit8 v0, p1, 0x12

    const/4 v1, 0x0

    const/16 v2, 0x12

    if-ne v2, v0, :cond_4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    iput-object v1, p0, Lyads/ag0;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lyads/ag0;->a:Ljava/lang/String;

    :goto_0
    iput-object p3, p0, Lyads/ag0;->b:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_1

    iput-object v1, p0, Lyads/ag0;->c:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object p4, p0, Lyads/ag0;->c:Ljava/lang/String;

    :goto_1
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_2

    iput-object v1, p0, Lyads/ag0;->d:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iput-object p5, p0, Lyads/ag0;->d:Ljava/lang/String;

    :goto_2
    iput-object p6, p0, Lyads/ag0;->e:Ljava/util/List;

    and-int/lit8 p1, p1, 0x20

    if-nez p1, :cond_3

    iput-object v1, p0, Lyads/ag0;->f:Ljava/lang/String;

    return-void

    :cond_3
    iput-object p7, p0, Lyads/ag0;->f:Ljava/lang/String;

    return-void

    :cond_4
    sget-object p0, Lyads/yf0;->b:Ls96;

    invoke-static {p0, p1, v2}, Lr96;->f(Lmp7;II)V

    throw v1
.end method

.method public static final synthetic a()Ldf4;
    .locals 2

    new-instance v0, Lmr;

    sget-object v1, Lca8;->a:Lca8;

    invoke-direct {v0, v1}, Lmr;-><init>(Ldf4;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyads/ag0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/ag0;

    iget-object v1, p0, Lyads/ag0;->a:Ljava/lang/String;

    iget-object v3, p1, Lyads/ag0;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lyads/ag0;->b:Ljava/lang/String;

    iget-object v3, p1, Lyads/ag0;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lyads/ag0;->c:Ljava/lang/String;

    iget-object v3, p1, Lyads/ag0;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lyads/ag0;->d:Ljava/lang/String;

    iget-object v3, p1, Lyads/ag0;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lyads/ag0;->e:Ljava/util/List;

    iget-object v3, p1, Lyads/ag0;->e:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lyads/ag0;->f:Ljava/lang/String;

    iget-object p1, p1, Lyads/ag0;->f:Ljava/lang/String;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lyads/ag0;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v0, v2

    iget-object v3, p0, Lyads/ag0;->b:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lyads/l4;->a(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lyads/ag0;->c:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lyads/ag0;->d:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-object v3, p0, Lyads/ag0;->e:Ljava/util/List;

    invoke-static {v3, v0, v2}, Le2;->b(Ljava/util/List;II)I

    move-result v0

    iget-object p0, p0, Lyads/ag0;->f:Ljava/lang/String;

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lyads/ag0;->a:Ljava/lang/String;

    iget-object v1, p0, Lyads/ag0;->b:Ljava/lang/String;

    iget-object v2, p0, Lyads/ag0;->c:Ljava/lang/String;

    iget-object v3, p0, Lyads/ag0;->d:Ljava/lang/String;

    iget-object v4, p0, Lyads/ag0;->e:Ljava/util/List;

    iget-object p0, p0, Lyads/ag0;->f:Ljava/lang/String;

    const-string v5, ", name="

    const-string v6, ", logoUrl="

    const-string v7, "DebugPanelMediationNetwork(id="

    invoke-static {v7, v0, v5, v1, v6}, Lad2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adapterStatus="

    const-string v5, ", adapters="

    invoke-static {v0, v2, v1, v3, v5}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", latestAdapterVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
