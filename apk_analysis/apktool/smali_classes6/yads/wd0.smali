.class public final Lyads/wd0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lup7;
.end annotation


# static fields
.field public static final Companion:Lyads/vd0;

.field public static final c:[Lcl4;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lyads/vd0;

    invoke-direct {v0}, Lyads/vd0;-><init>()V

    sput-object v0, Lyads/wd0;->Companion:Lyads/vd0;

    sget-object v0, Lpo4;->PUBLICATION:Lpo4;

    new-instance v1, Lqt3;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lqt3;-><init>(I)V

    invoke-static {v0, v1}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v1

    new-instance v3, Lua7;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lua7;-><init>(I)V

    invoke-static {v0, v3}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v0

    new-array v2, v2, [Lcl4;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    aput-object v0, v2, v4

    sput-object v2, Lyads/wd0;->c:[Lcl4;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;Ljava/util/List;)V
    .locals 2

    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x3

    if-ne v1, v0, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/wd0;->a:Ljava/util/List;

    iput-object p3, p0, Lyads/wd0;->b:Ljava/util/List;

    return-void

    :cond_0
    sget-object p0, Lyads/ud0;->b:Ls96;

    invoke-static {p0, p1, v1}, Lr96;->f(Lmp7;II)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic a()Ldf4;
    .locals 2

    new-instance v0, Lmr;

    sget-object v1, Lyads/ce0;->a:Lyads/ce0;

    invoke-direct {v0, v1}, Lmr;-><init>(Ldf4;)V

    return-object v0
.end method

.method public static final synthetic b()Ldf4;
    .locals 2

    new-instance v0, Lmr;

    sget-object v1, Lyads/pd0;->a:Lyads/pd0;

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
    instance-of v1, p1, Lyads/wd0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/wd0;

    iget-object v1, p0, Lyads/wd0;->a:Ljava/util/List;

    iget-object v3, p1, Lyads/wd0;->a:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lyads/wd0;->b:Ljava/util/List;

    iget-object p1, p1, Lyads/wd0;->b:Ljava/util/List;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lyads/wd0;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lyads/wd0;->b:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lyads/wd0;->a:Ljava/util/List;

    iget-object p0, p0, Lyads/wd0;->b:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DebugPanelAdUnitMediation(waterfall="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", bidding="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
